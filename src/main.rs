#![feature(
    const_for,
    const_mut_refs,
    maybe_uninit_uninit_array,
    maybe_uninit_slice,
    maybe_uninit_array_assume_init,
    slice_as_chunks,
    array_zip,
    generic_const_exprs,
    array_chunks
)]

use std::{
    mem::transmute,
    num::NonZeroU8,
    time::{Duration, Instant},
};

mod agent;
use agent::{Agent, RandomAgent};

mod types;
use fastrand::Rng;
use types::*;

use crate::agent::SmallestAgent;

const DECK: Deck = {
    let suit = [
        Card::Three,
        Card::Four,
        Card::Five,
        Card::Six,
        Card::Seven,
        Card::Eight,
        Card::Nine,
        Card::Ten,
        Card::Jack,
        Card::Queen,
        Card::King,
        Card::Ace,
        Card::Two,
    ];

    let mut cards: [Card; 52] = unsafe { transmute([suit, suit, suit, suit]) };
    cards[0] = Card::ClubsOfThree;

    Deck { cards }
};

fn play_game<const N: usize>(mut agents: [&mut dyn Agent; N]) -> usize {
    let rng = Rng::new();

    let mut deck = DECK;
    rng.shuffle(&mut deck.cards);

    let mut hands = deck.deal_hands::<N>();
    let mut stack = Stack::new();

    let mut skips = [false; N];
    let mut players_in_round = N;

    let mut n: Option<NonZeroU8> = None;

    loop {
        for (i, (agent, hand)) in agents.iter_mut().zip(hands.iter_mut()).enumerate() {
            if unsafe { *skips.get_unchecked(i) } {
                continue;
            }

            if players_in_round == 1 {
                stack.clear();
                players_in_round = N;
                skips.fill(false);
                n = None;
            }

            if let Some((card, k)) = agent.play_turn(hand, &stack, n) {
                // println!("Player {i} played {card:?} x {k}");

                stack.push(card);

                if n == None {
                    n = Some(k);
                }

                // Remove `k` instances of `card` from `hand`
                let hand_pre_len = hand.cards.len();
                let mut rem = u8::from(k);
                hand.cards.retain(|x| {
                    if *x == card && rem > 0 {
                        rem -= 1;
                        return false;
                    }
                    true
                });

                debug_assert!(hand_pre_len == (hand.cards.len() + u8::from(k) as usize));
                debug_assert!(rem == 0);

                if hand.cards.is_empty() {
                    return i;
                }
            } else {
                skips[i] = true;
                players_in_round -= 1;
            }
        }
    }
}

fn main() {
    const N_AGENTS: usize = 6;
    let mut wins = [0; N_AGENTS];

    let n_games = 1 << 20;
    let mut round_times = Vec::with_capacity(n_games);

    for _ in 0..n_games {
        let agents: [&mut dyn Agent; N_AGENTS] = [
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
        ];

        assert!(agents.len() >= 6);

        let st = Instant::now();
        let winner = play_game(agents);
        let dt = st.elapsed();

        round_times.push(dt);

        // println!("Round time: {dt:?}");
        wins[winner] += 1;
    }

    for (i, &w) in wins.iter().enumerate() {
        println!("Player {i}: {:.2}%", 100.0 * w as f64 / n_games as f64);
    }

    fn pretty_num(n: u128) -> String {
        let s = n.to_string();
        let s = s.as_bytes();

        s.rchunks(3)
            .map(|x| String::from_utf8(x.to_vec()).unwrap())
            .rev()
            .collect::<Vec<String>>()
            .join(",")
    }

    println!();
    println!("Round times:");
    println!(
        "\tmean: {:>11} ns",
        pretty_num(
            round_times
                .iter()
                .fold(Duration::ZERO, |acc, &x| acc + x)
                .as_nanos()
                / n_games as u128
        )
    );
    println!(
        "\t min: {:>11} ns",
        pretty_num(round_times.iter().min().unwrap().as_nanos())
    );
    println!(
        "\t max: {:>11} ns",
        pretty_num(round_times.iter().max().unwrap().as_nanos())
    );
}
