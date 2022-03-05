use std::num::NonZeroU8;

use crate::types::{Card, CardCount, Hand, Stack};

mod random;
pub use random::*;

mod smallest;
pub use smallest::*;

mod largest;
pub use largest::*;

pub trait Agent {
    fn play_turn(&mut self, hand: &Hand, stack: &Stack, n: CardCount) -> Option<(Card, NonZeroU8)>;
}
