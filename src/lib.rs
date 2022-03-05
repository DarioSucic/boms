use std::num::NonZeroU8;

use nanorand::{WyRand, Rng};
use types::{DECK, Stack};


pub mod agent;
pub mod types;

use agent::Agent;

pub fn play_game_dyn<const N: usize>(mut agents: [&mut dyn Agent; N], rng: &mut WyRand) -> usize {
    let mut deck = DECK;
    rng.shuffle(&mut deck.cards);

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



pub fn play_game<const N: usize, A: Agent>(mut agents: [A; N], rng: &mut WyRand) -> usize {
    let mut deck = DECK;
    rng.shuffle(&mut deck.cards);

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