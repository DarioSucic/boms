use std::{
    num::NonZeroU8,
    time::{Duration, Instant},
};

use nanorand::{Rng, WyRand};

mod agent;
use agent::{Agent, LargestAgent, RandomAgent, SmallestAgent};

mod types;
use types::*;

fn play_game<const N: usize>(mut agents: [&mut dyn Agent; N], rng: &mut WyRand) -> usize {
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
    const N_AGENTS: usize = 6;
    let mut wins = [0; N_AGENTS];

    let n_games = 1 << 20;
    let mut round_times = Vec::with_capacity(n_games);

    let mut rng = WyRand::new_seed(0);

    for _game in 0..n_games {
        let agents: [&mut dyn Agent; N_AGENTS] = [
            &mut LargestAgent,
            &mut SmallestAgent,
            &mut RandomAgent::from_seed(rng.generate()),
            &mut LargestAgent,
            &mut SmallestAgent,
            &mut RandomAgent::from_seed(rng.generate()),
        ];

        let st = Instant::now();
        let winner = play_game(agents, &mut rng);
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
