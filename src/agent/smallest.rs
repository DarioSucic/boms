use std::{intrinsics::transmute, num::NonZeroU8};

use arrayvec::ArrayVec;

use crate::types::{Card, Hand, Stack};

use super::Agent;

pub struct SmallestAgent;

impl Agent for SmallestAgent {
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

        for i in start_idx..=14 {
            if counts[i] >= u8::from(n) {
                return Some((unsafe { transmute(i as u8) }, n));
            }
        }

        None
    }
}
