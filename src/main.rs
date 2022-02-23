#![feature(const_for)]
#![feature(const_mut_refs)]

use std::mem::transmute;

use rand::{prelude::{SliceRandom, SmallRng}, SeedableRng};

#[derive(Clone, Copy, Debug, PartialEq, Eq)]
#[repr(u8)]
enum Suit {
    Clubs,
    Diamonds,
    Hearts,
    Spades,
}

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
#[repr(u8)]
enum Rank {
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
struct Card(u8);

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

const DECK: [Card; 52] = {
    let mut cards = [Card(0); 52];
    let mut suit: u8 = 0;
    let mut rank: u8 = 0;
    
    while suit < 4 {
        while rank < 13 {
            cards[(suit*13 + rank) as usize] = Card(rank << 2 | suit);
            rank += 1;
        }
        rank = 0;
        suit += 1;
    }

    cards
};

#[inline(never)]
fn init_rng() -> SmallRng {
    SmallRng::from_entropy()
}

fn play_game() {
    
}

fn main() {
    let mut rng = init_rng();

    let mut deck = DECK;
    deck.shuffle(&mut rng);
}
