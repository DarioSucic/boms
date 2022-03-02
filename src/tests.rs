
use crate::DECK;

use super::{Card, Hand};

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

#[test]
fn test_card() {
    for (&card, i) in CARDS.iter().zip(1_u8..=14) {
        assert!(Card::from_u8(i) == card);
        assert!(card as u8 == i);
    }
}

#[test]
fn test_hand() {
    {
        let mut hand = Hand::empty();
        assert!(hand.is_empty());
        for i in 1..=14 {
            assert!(hand.get(Card::from_u8(i)) == 0);
        }
    }

    for i in 1..=14 {
        let card = Card::from_u8(i);
        let mut hand = Hand::empty();

        hand.inc(card);
        assert!(hand.get(card) == 1);

        for j in 1..=14 {
            if i != j {
                let other_card = Card::from_u8(j);
                assert!(hand.get(other_card) == 0);
            }
        }
    }

    for k in 0..=4 {
        let mut hand = Hand::empty();
        for j in 0..k {
            hand.inc(Card::ClubsOfThree);
            assert!(hand.get(Card::ClubsOfThree) == j + 1);
        }
    }

    for k in 0..=4 {
        let mut hand = Hand::empty();
        hand.set(Card::ClubsOfThree, k);

        for j in (0..k).rev() {
            assert!(hand.get(Card::ClubsOfThree) == j + 1);
            hand.dec(Card::ClubsOfThree);
        }
        assert!(hand.get(Card::ClubsOfThree) == 0);
    }

    let mut hand = Hand::empty();
    for i in 1..=14 {
        hand.inc(Card::from_u8(i));
    }
    assert!(
        hand.card_counts == 0b001001001001001001001001001001001001001001000,
        "got: {:b}",
        hand.card_counts
    );
}

#[test]
fn test_deck() {

    const N: usize = 5;

    let deck = DECK;
    let hands = deck.deal_hands::<N>();

    let mut idx = 0;
    for hand in &hands {
        for _ in 0..52/N {
            let card = deck.cards[idx];
            assert!(hand.get(card) == 1); 
            idx += 1;
        }
    }
}