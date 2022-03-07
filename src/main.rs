use std::{
    time::{Duration, Instant},
};

use boms::{LOGGING, play_game, agent::{RandomAgent, LargestAgent, SmallestAgent, HumanAgent, AgentType}, types::{DECK}};
use nanorand::{Rng, WyRand};

fn main() {
    const N_AGENTS: usize = 6;
    let mut wins = [0; N_AGENTS];

    let n_games = 1 << 0;
    let mut round_times = Vec::with_capacity(n_games);

    let mut rng = WyRand::new();

    for _game in 0..n_games {
        let mut agents: [AgentType; N_AGENTS] = [
            AgentType::Largest(LargestAgent),
            AgentType::Smallest(SmallestAgent),
            AgentType::Random(RandomAgent::from_seed(rng.generate())),
            AgentType::Random(RandomAgent::from_seed(rng.generate())),
            AgentType::Random(RandomAgent::from_seed(rng.generate())),
            AgentType::Human(HumanAgent),
        ];

        rng.shuffle(&mut agents);

        if LOGGING {
            println!("Players in the game: ");
            println!("{:#?}", agents);
        }

        let st = Instant::now();
        let mut deck = DECK;
        rng.shuffle(&mut deck.cards);
        let winner = play_game(agents, deck);
        let dt = st.elapsed();

        round_times.push(dt);

        // println!("Round time: {dt:?}");
        if LOGGING {
            println!("Player {winner} won");
        }
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
