use arrayvec::ArrayVec;

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
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

// TODO: Represent Hand as a u32 holding the card counts.
// Since there are only 4 cards of a given suit, we can represent a card count with 2 bits.
pub struct Hand {
    pub cards: ArrayVec<Card, 17>,
}

pub type Stack = ArrayVec<Card, 56>;

pub struct Deck {
    pub cards: [Card; 52],
}

impl Deck {
    pub fn deal_hands<const N: usize>(&self) -> [Hand; N] {
        let mut hands = [(); N].map(|_| Hand {
            cards: ArrayVec::new(),
        });

        for (i, chunk) in self.cards.chunks_exact(52 / N).enumerate() {
            unsafe {
                hands[i].cards.set_len(chunk.len());
            }
            hands[i].cards.copy_from_slice(chunk);
        }

        hands
    }
}
