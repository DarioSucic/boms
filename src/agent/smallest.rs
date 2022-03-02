use std::{num::NonZeroU8};

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
        let min_card = stack.last().copied().unwrap_or(Card::Three) as u8;
        let n = n.unwrap_or(NonZeroU8::new(1).unwrap());

        for i in min_card..=14 {
            if hand.get(Card::from_u8(i)) >= u8::from(n) as u64 {
                return Some((Card::from_u8(i), n));
            }
        }

        None
    }
}
