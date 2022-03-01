use std::{intrinsics::transmute, num::NonZeroU8};

use crate::types::{Card, Hand, Stack};

use super::Agent;

pub struct BiggestAgent;

impl Agent for BiggestAgent {
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

        for (i, &count) in counts.iter().enumerate().take(15).skip(start_idx).rev() {
            if count >= u8::from(n) {
                return Some((unsafe { transmute(i as u8) }, n));
            }
        }

        None
    }
}
