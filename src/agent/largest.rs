use std::{intrinsics::transmute, num::NonZeroU8};

use crate::types::{Card, Hand, Stack};

use super::Agent;

pub struct LargestAgent;

impl Agent for LargestAgent {
    fn play_turn(
        &mut self,
        hand: &Hand,
        stack: &Stack,
        n: Option<NonZeroU8>,
    ) -> Option<(Card, NonZeroU8)> {
        let min_card = stack.last().copied().unwrap_or(Card::Three) as u8;
        let n = n.unwrap_or(NonZeroU8::new(1).unwrap());

        for i in (min_card..=14).rev() {
            if hand.get(Card::from_u8(i)) >= u8::from(n) as u64 {
                return Some((Card::from_u8(i), n));
            }
        }

        None
    }
}
