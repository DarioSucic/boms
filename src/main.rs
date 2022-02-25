#![feature(const_for)]
#![feature(const_mut_refs)]

use std::{mem::transmute};
use rand::{prelude::{SliceRandom, SmallRng}, SeedableRng};

mod agent;
use agent::*;

mod types;
use types::*;

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

fn play_game<A: Agent>(agent: A, rng: &mut SmallRng) {
    let mut deck = DECK;
    deck.shuffle(rng);


}

fn main() {
    let mut rng = SmallRng::from_entropy();
    
    let agent = todo!();
    
    play_game(agent, &mut rng);
}
