

use boms::{
    agent::{Agent, RandomAgent, SmallestAgent, AgentType},
    play_game,
    types::{DECK},
};
use criterion::{black_box, criterion_group, criterion_main, Criterion};
use nanorand::{Rng, WyRand};

fn criterion_benchmark(c: &mut Criterion) {
    c.bench_function("init 5 random from rng", |b| {
        let mut rng = WyRand::new_seed(0);
        b.iter(|| {
            let agents: [&mut dyn Agent; 5] = [
                &mut RandomAgent::from_seed(rng.generate()),
                &mut RandomAgent::from_seed(rng.generate()),
                &mut RandomAgent::from_seed(rng.generate()),
                &mut RandomAgent::from_seed(rng.generate()),
                &mut RandomAgent::from_seed(rng.generate()),
            ];
            let agents = black_box(agents);
        })
    });

    c.bench_function("play game 5 smallest", |b| {
        let deck = {
            let mut rng = WyRand::new_seed(0);
            let mut _deck = DECK;
            rng.shuffle(&mut _deck.cards);
            _deck
        };
        
        b.iter(|| {
            let agents = [
                AgentType::Smallest(SmallestAgent),
                AgentType::Smallest(SmallestAgent),
                AgentType::Smallest(SmallestAgent),
                AgentType::Smallest(SmallestAgent),
                AgentType::Smallest(SmallestAgent),
            ];
            let winner = play_game(agents, deck);
            black_box(winner)
        });
    });
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);
