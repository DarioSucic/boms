use arrayvec::ArrayVec;

#[derive(Clone, Copy, Debug, PartialEq, Eq, PartialOrd, Ord)]
#[repr(u8)]
pub enum Card {
    Uninit,
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

pub type Hand = ArrayVec<Card, 8>;
pub type Stack = ArrayVec<Card, 56>;

pub struct Deck {
    pub cards: [Card; 52],
}

impl Deck {
    #[inline(never)]
    pub fn deal_hands<const N: usize>(&self) -> [Hand; N] {
        let mut hands = [(); N].map(|_| Hand::new());

        for (i, chunk) in self.cards.chunks_exact(52 / N).enumerate() {
            hands[i].extend(chunk.iter().copied());
        }

        hands
    }
}
