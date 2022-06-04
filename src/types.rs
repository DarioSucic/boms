use std::{intrinsics::transmute, num::NonZeroU8, simd::u64x4};

use arrayvec::ArrayVec;

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord, Hash)]
#[repr(u8)]
pub enum Card {
    _Uninit = 0,
    Three = 3,
    Four = 6,
    Five = 9,
    Six = 12,

    Seven = 15,
    Eight = 18,
    Nine = 21,
    Ten = 24,

    Jack = 27,
    Queen = 30,
    King = 33,
    Ace = 36,
    
    Two = 39,
    ClubsOfThree = 42,
}

impl Card {
    pub fn from_u8(x: u8) -> Card {
        debug_assert!(x % 3 == 0);
        debug_assert!(x <= 42);
        unsafe { transmute(x) }
    }
}

pub type CardCount = Option<NonZeroU8>;

#[derive(Clone, Copy)]
pub struct Hand {
    pub card_counts: u64,
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
        (self.card_counts >> (card as u8)) & 0b111
    }

    pub fn get4(&self, cards: u64x4) -> u64x4 {
        let counts = u64x4::splat(self.card_counts);
        (counts >> cards) & u64x4::splat(0b111)
    }

    pub fn set(&mut self, card: Card, count: u64) {
        debug_assert!(count <= 4);
        self.card_counts &= u64::MAX ^ (0b111 << (card as u8));
        self.card_counts |= count << (card as u8);
    }

    pub fn inc(&mut self, card: Card) {
        let count = self.get(card);
        self.set(card, count + 1);
    }

    pub fn dec(&mut self, card: Card) {
        let count = self.get(card);
        debug_assert!(count > 0);
        self.set(card, count - 1);
    }
}

pub type Stack = ArrayVec<Card, 56>;

#[derive(Clone, Copy)]
pub struct Deck {
    pub cards: [Card; 52],
}

impl Deck {
    pub fn deal_hands<const N: usize>(&self) -> [Hand; N] {
        // let mut hands = [Hand::empty(); N];
        let mut hands = [(); N].map(|_| Hand::empty());

        for (i, chunk) in self.cards.chunks_exact(self.cards.len() / N).enumerate() {
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

pub struct BitField {
    inner: u32
}

impl BitField {
    pub const fn zeros() -> Self {
        Self { inner: 0 }
    }

    pub const fn ones(n: usize) -> Self {
        Self { inner: (1 << n) - 1 }
    }

    pub fn get(&self, i: usize) -> u32 {
        (self.inner >> i) & 1
    }

    pub fn flip(&mut self, i: usize) {
        self.inner ^= 1 << i;
    }
}