use std::num::NonZeroU8;

use arrayvec::ArrayVec;
use rand::{prelude::SmallRng, SeedableRng};

use crate::types::{Card, Hand, Stack};

use super::Agent;


struct RandomAgent {
    rng: SmallRng
}

impl RandomAgent {
    fn new() -> RandomAgent {
        Self { rng: SmallRng::from_entropy() }
    }
}

impl Agent for RandomAgent {
    fn play_turn(&mut self, hand: &mut Hand, stack: &Stack, n: Option<NonZeroU8>) -> ArrayVec<Card, 4> {
        
    }
}