#![feature(portable_simd, slice_as_chunks)]

use std::{num::NonZeroU8, fmt::{Display}};
use types::{Stack, BitField, Deck};


pub mod agent;
pub mod types;

#[cfg(test)]
mod tests;

use agent::Agent;

pub fn play_game_dyn<const N: usize>(mut agents: [&mut dyn Agent; N], deck: Deck) -> usize {
    let mut hands = deck.deal_hands::<N>();
    let mut stack = Stack::new();

    let mut skips = [false; N];
    let mut players_in_round = N;

    let mut n: Option<NonZeroU8> = None;

    loop {
        for i in 0..N {
            if skips[i] {
                continue;
            }

            if players_in_round == 1 {
                stack.clear();
                players_in_round = N;
                skips.fill(false);
                n = None;
            }

            let agent = &mut agents[i];
            let hand = &mut hands[i];

            if let Some((card, k)) = agent.play_turn(hand, &stack, n) {
                // println!("Player {i} played {card:?} x {k}");
                n = n.or(Some(k));

                for _ in 0..u8::from(k) {
                    stack.push(card);
                }

                debug_assert!(hand.get(card) >= u8::from(k) as u64);
                hand.set(card, hand.get(card) - u8::from(k) as u64);

                if hand.is_empty() {
                    return i;
                }
            } else {
                skips[i] = true;
                players_in_round -= 1;
            }
        }
    }
}



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
                stack.clear();
                players_in_round = N;
                skips = BitField::zeros();
                n = None;
            }

            let agent = &mut agents[i];
            let hand = &mut hands[i];

            if let Some((card, k)) = agent.play_turn(hand, &stack, n) {
                // println!("Player {i} played {card:?} x {k}");
                n = n.or(Some(k));

                for _ in 0..u8::from(k) {
                    stack.push(card);
                }

                debug_assert!(hand.get(card) >= u8::from(k) as u64, "Invalid hand given by {} [{}]", agent, i);
                hand.set(card, hand.get(card) - u8::from(k) as u64);

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