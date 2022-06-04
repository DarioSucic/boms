use std::{
    num::NonZeroU8,
};

use crate::types::{Card, CardCount, Hand, Stack};
use std::simd::u64x4;
use super::Agent;

pub struct SmallestAgent;

impl Agent for SmallestAgent {
    fn play_turn(&mut self, hand: &Hand, stack: &Stack, n: CardCount) -> Option<(Card, NonZeroU8)> {
        let min_card = stack.last().copied().unwrap_or(Card::Three) as u8 / 3;
        let n = n.unwrap_or(NonZeroU8::new(1).unwrap());

        for i in min_card..=14 {
            if hand.get(Card::from_u8(3*i)) >= u8::from(n) as u64 {
                return Some((Card::from_u8(3*i), n));
            }
        }

        None
    }
}

pub fn count_cards(hand: &Hand) -> u64 {
    let mut count = 0;
    let mut card_int = 3;
    for _ in 1..=14 {
        count += hand.get(Card::from_u8(card_int));
        card_int += 3;
    }
    count
}

pub fn count_cards_simd(hand: &Hand) -> u64 {
    let mut counts = u64x4::splat(0);
    let mut cards = u64x4::from_array([3, 6, 9, 12]);
    let step = u64x4::splat(12);

    for _ in 0..4 {
        counts += hand.get4(cards);
        cards += step;
    }

    counts.reduce_sum()
}