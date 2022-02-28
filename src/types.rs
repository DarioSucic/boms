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

pub struct Hand {
    pub cards: ArrayVec<Card, 8>,
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
            hands[i].cards.extend(chunk.iter().copied());
        }

        hands
    }
}
