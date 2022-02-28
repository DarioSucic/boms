use std::{intrinsics::transmute, num::NonZeroU8};

use arrayvec::ArrayVec;
use fastrand::Rng;

use crate::types::{Card, Hand, Stack};

use super::Agent;

pub struct RandomAgent {
    rng: Rng,
}

impl RandomAgent {
    pub fn new() -> RandomAgent {
        Self {
            rng: Rng::new()
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
        let mut counts = [0_u8; 16];
        for &card in &hand.cards {
            counts[card as usize] += 1;
        }

        let start_idx = stack.last().map_or(1, |&card| card as usize);
        let n = n.unwrap_or(unsafe { NonZeroU8::new_unchecked(1) });

        let mut possible: ArrayVec<(Card, NonZeroU8), 14> = ArrayVec::new();
        for i in start_idx..=14 {
            if counts[i] >= u8::from(n) {
                possible.push((unsafe { transmute(i as u8) }, n));
            }
        }

        if possible.is_empty() {
            return None;
        }
        
        let idx = self.rng.usize(0..possible.len());
        possible.get(idx).copied()
    }
}
