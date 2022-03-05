use std::{collections::HashMap, intrinsics::transmute, num::NonZeroU8};

use arrayvec::ArrayVec;

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
#[repr(u8)]
pub enum Card {
    _Uninit,
    Three,
    Four,
    Five,
    Six,
    Seven,
    Eight,
    Nine,
    Ten,
    Jack,
    Queen,
    King,
    Ace,
    Two,
    ClubsOfThree,
}

impl Card {
    pub fn from_u8(x: u8) -> Card {
        debug_assert!(x <= 15);
        unsafe { transmute(x) }
    }
}

pub type CardCount = Option<NonZeroU8>;

#[derive(Clone, Copy)]
pub struct Hand {
    card_counts: u64,
}

#[allow(dead_code)]
impl Hand {
    pub fn empty() -> Self {
        Self { card_counts: 0 }
    }

    pub fn is_empty(&self) -> bool {
        self.card_counts == 0
    }

    pub fn get(&self, card: Card) -> u64 {
        (self.card_counts >> (card as u8 * 3)) & 0b111
    }

    pub fn set(&mut self, card: Card, count: u64) {
        debug_assert!(count <= 4);
        self.card_counts &= u64::MAX ^ (0b111 << (card as u8 * 3));
        self.card_counts |= count << (card as u8 * 3);
    }

    pub fn inc(&mut self, card: Card) {
        let count = self.get(card);
        debug_assert!(count <= 3);
        self.set(card, count + 1);
    }

    pub fn dec(&mut self, card: Card) {
        let count = self.get(card);
        debug_assert!(count > 0);
        self.set(card, count - 1);
    }
}

pub type Stack = ArrayVec<Card, 56>;

pub struct Deck {
    pub cards: [Card; 52],
}

impl Deck {
    pub fn deal_hands<const N: usize>(&self) -> [Hand; N] {
        // let mut hands = [Hand::empty(); N];
        let mut hands = [(); N].map(|_| Hand::empty());

        for (i, chunk) in self.cards.chunks_exact(52 / N).enumerate() {
            for &card in chunk {
                hands[i].inc(card);
            }
        }

        hands
    }
}

pub const DECK: Deck = {
    let suit = [
        Card::Three,
        Card::Four,
        Card::Five,
        Card::Six,
        Card::Seven,
        Card::Eight,
        Card::Nine,
        Card::Ten,
        Card::Jack,
        Card::Queen,
        Card::King,
        Card::Ace,
        Card::Two,
    ];

    let mut cards: [Card; 52] = unsafe { transmute([suit, suit, suit, suit]) };
    cards[0] = Card::ClubsOfThree;

    Deck { cards }
};
