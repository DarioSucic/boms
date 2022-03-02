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

mod tests;

use crate::agent::{LargestAgent, SmallestAgent};

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
        for i in 0..N {
            if skips[i] {
                continue;
            }

            if players_in_round == 1 {
                stack.clear();
                players_in_round = N;
                skips.fill(false);
                n = None;
            }

            let agent = &mut agents[i];
            let hand = &mut hands[i];

            if let Some((card, k)) = agent.play_turn(hand, &stack, n) {
                // println!("Player {i} played {card:?} x {k}");
                n = n.or(Some(k));

                for _ in 0..u8::from(k) {
                    stack.push(card);
                }

                debug_assert!(hand.get(card) >= u8::from(k) as u64);
                hand.set(card, hand.get(card) - u8::from(k) as u64);
                
                if hand.is_empty() {
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
    const N_AGENTS: usize = 5;
    let mut wins = [0; N_AGENTS];

    let n_games = 1 << 20;
    let mut round_times = Vec::with_capacity(n_games);

    for _game in 0..n_games {
        let agents: [&mut dyn Agent; N_AGENTS] = [
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
            &mut SmallestAgent,
            &mut RandomAgent::new(),
            &mut RandomAgent::new(),
        ];

        let st = Instant::now();
        let winner = play_game(agents);
        let dt = st.elapsed();

        round_times.push(dt);

        // println!("Round time: {dt:?}");
        wins[winner] += 1;
    }

    println!("Per Player Winrate:");
    for (i, &w) in wins.iter().enumerate() {
        println!("\tPlayer {i}: {:.2}%", 100.0 * w as f64 / n_games as f64);
    }

    let rt_min = round_times.iter().min().unwrap();
    let rt_max = round_times.iter().max().unwrap();
    let rt_avg = round_times.iter().fold(Duration::ZERO, |acc, &x| acc + x) / n_games as u32;
    let rt_sum = round_times.iter().sum::<Duration>();

    println!();
    println!("Round Execution Time:");
    println!("\t min: {:>14.2?}", rt_min);
    println!("\t max: {:>14.2?}", rt_max);
    println!("\t avg: {:>14.2?}", rt_avg);
    println!("\t sum: {:>14.2?}", rt_sum);
}
