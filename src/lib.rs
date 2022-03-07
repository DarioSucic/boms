#![feature(portable_simd, slice_as_chunks)]

use std::{fmt::Display, num::NonZeroU8};
use types::{BitField, Deck, Stack};

pub mod agent;
pub mod types;

#[cfg(test)]
mod tests;

pub const LOGGING: bool = true;

use agent::Agent;

use crate::types::Card;

pub fn play_game<const N: usize, A: Agent + Display>(mut agents: [A; N], deck: Deck) -> usize {
    let mut hands = deck.deal_hands::<N>();
    let mut stack = Stack::new();

    let mut skips = BitField::zeros();
    let mut players_in_round = N;

    let mut n: Option<NonZeroU8> = None;

    loop {
        for i in 0..N {
            if skips.get(i) == 1 {
                continue;
            }

            if players_in_round == 1 {
                if LOGGING {
                    println!("Only player {i} is still standing. New round.");
                }

                stack.clear();
                players_in_round = N;
                skips = BitField::zeros();
                n = None;
            }

            let agent = &mut agents[i];
            let hand = &mut hands[i];

            if let Some((card, k)) = agent.play_turn(hand, &stack, n) {
                if LOGGING {
                    println!("Player {i} plays {card:?} x {k:?}");
                }
                // println!("Player {i} played {card:?} x {k}");
                n = n.or(Some(k));

                for _ in 0..u8::from(k) {
                    stack.push(card);
                }

                debug_assert!(
                    hand.get(card) >= u8::from(k) as u64,
                    "Invalid hand given by {} [{}]",
                    agent,
                    i
                );
                hand.set(card, hand.get(card) - u8::from(k) as u64);

                if hand.is_empty() {
                    return i;
                }

                if card == Card::ClubsOfThree {
                    if LOGGING {
                        println!("Clubs of Three knocks it out.");
                    }
                    players_in_round = 1;
                    skips = BitField::ones(N);
                    skips.flip(i);
                    break;
                }

                if stack.len() >= 4
                    && stack[stack.len() - 2] == card
                    && stack.ends_with(&[*stack.last().unwrap(); 4])
                {
                    if LOGGING {
                        println!("Streak of 4 knocks it out.");
                    }
                    players_in_round = 1;
                    skips = BitField::ones(N);
                    skips.flip(i);
                    break;
                }

                if hand.is_empty() {
                    return i;
                }
            } else {
                skips.flip(i);
                players_in_round -= 1;
            }
        }
    }
}
