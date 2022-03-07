use std::{num::NonZeroU8, io::stdin};

use crate::types::{Hand, Stack, CardCount, Card};

use super::Agent;

const CARDS: [Card; 14] = [
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
    Card::ClubsOfThree,
];

const CARD_STRINGS: [&str; 14] = [
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Jack",
    "Queen",
    "King",
    "Ace",
    "Two",
    "ClubsOfThree",
];

pub struct HumanAgent;

impl Agent for HumanAgent {
    fn play_turn(&mut self, hand: &Hand, stack: &Stack, n: CardCount) -> Option<(Card, NonZeroU8)> {
        println!("Your turn! What do you play? (you need to play {:?} card(s))", n);
        println!("Stack: {stack:?}");
        for card in CARDS {
            print!("{card:?} x {},  ", hand.get(card));
        }
        println!("\n");

        let mut ans = String::new();
        stdin().read_line(&mut ans).expect("Couldn't read input...");
        let ans = ans.trim();

        if ans == "skip" {
            return None;
        }

        let mut s = ans.split(" x ");
        let card_str = s.next().expect("Expected card argument");
        let card;
        if let Some(i) = CARD_STRINGS.iter().position(|&cs| cs == card_str) {
            card = Card::from_u8(3 * (i as u8 + 1));
        } else {
            panic!("Invalid card selected! [{card_str} doesn't exist]");
        }
        
        let player_n_str = s.next().expect("Expected n argument");
        let player_n = player_n_str.parse::<NonZeroU8>().expect("Expected a valid number");

        if let Some(n) = n {
            assert_eq!(player_n, n);
        }

        Some((card, player_n))
    }
}