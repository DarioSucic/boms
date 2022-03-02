use std::num::NonZeroU8;

use arrayvec::ArrayVec;
use nanorand::{Rng, WyRand};

use crate::types::{Card, Hand, Stack};

use super::Agent;

pub struct RandomAgent {
    rng: WyRand,
}

#[allow(dead_code)]
impl RandomAgent {
    pub fn new() -> RandomAgent {
        Self { rng: WyRand::new() }
    }

    pub fn from_seed(seed: u64) -> RandomAgent {
        Self {
            rng: WyRand::new_seed(seed),
        }
    }
}

impl Agent for RandomAgent {
    fn play_turn(
        &mut self,
        hand: &Hand,
        stack: &Stack,
        n: Option<NonZeroU8>,
    ) -> Option<(Card, NonZeroU8)> {
        let min_card = stack.last().copied().unwrap_or(Card::Three) as u8;
        let n = n.unwrap_or(NonZeroU8::new(1).unwrap());

        let mut possible: ArrayVec<_, 14> = ArrayVec::new();
        for i in min_card..=14 {
            if hand.get(Card::from_u8(i)) >= u8::from(n) as u64 {
                possible.push((Card::from_u8(i), n));
            }
        }

        if possible.is_empty() {
            return None;
        }

        let idx = self.rng.generate_range(0..possible.len());
        unsafe { Some(*possible.get_unchecked(idx)) }
        // possible.get(idx).copied()
    }
}
