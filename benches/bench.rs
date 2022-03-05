use boms::agent::{Agent, RandomAgent};
use criterion::{black_box, criterion_group, criterion_main, Criterion};
use nanorand::{WyRand, Rng};


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
}

criterion_group!(benches, criterion_benchmark);
criterion_main!(benches);