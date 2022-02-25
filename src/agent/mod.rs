use std::num::NonZeroU8;
use arrayvec::ArrayVec;

use crate::types::{Card, Hand, Stack};

pub mod random;
use random::*;

pub trait Agent {
    fn play_turn(&mut self, hand: &mut Hand, stack: &Stack, n: Option<NonZeroU8>) -> ArrayVec<Card, 4>;
}
