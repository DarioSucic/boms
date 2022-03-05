use std::{
    num::NonZeroU8,
    time::{Duration, Instant},
};

use boms::{play_game, agent::{RandomAgent, Agent, LargestAgent, SmallestAgent}, types::{Hand, Stack, CardCount, Card}};
use nanorand::{Rng, WyRand};

enum AgentType {
    Smallest(SmallestAgent),
    Largest(LargestAgent),
    Random(RandomAgent)
}

impl Agent for AgentType {
    fn play_turn(&mut self, hand: &Hand, stack: &Stack, n: CardCount) -> Option<(Card, NonZeroU8)> {
        match self {
            AgentType::Smallest(a) => a.play_turn(hand, stack, n),
            AgentType::Largest(a) => a.play_turn(hand, stack, n),
            AgentType::Random(a) => a.play_turn(hand, stack, n),
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
        let agents: [AgentType; N_AGENTS] = [
            AgentType::Largest(LargestAgent),
            AgentType::Smallest(SmallestAgent),
            AgentType::Random(RandomAgent::from_seed(rng.generate())),
            AgentType::Largest(LargestAgent),
            AgentType::Smallest(SmallestAgent),
            AgentType::Random(RandomAgent::from_seed(rng.generate())),
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
