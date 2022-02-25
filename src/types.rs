use std::mem::transmute;

use arrayvec::ArrayVec;

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
#[repr(u8)]
pub enum Suit {
    Clubs,
    Diamonds,
    Hearts,
    Spades,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
#[repr(u8)]
pub enum Rank {
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
}

#[derive(Clone, Copy)]
pub struct Card(pub u8);

impl Card {
    fn rank(&self) -> Rank {
        unsafe { transmute(self.0 >> 2) }
    }

    fn suit(&self) -> Suit {
        unsafe { transmute(self.0 & 0b00000011) }
    }

    const fn new(rank: Rank, suit: Suit) -> Card {
        Card((rank as u8) << 2 | suit as u8)
    }
}

pub type Hand = ArrayVec<Card, 8>;
pub type Stack = ArrayVec<Card, 56>;
