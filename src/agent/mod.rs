use core::fmt;
use std::{num::NonZeroU8, fmt::{Formatter, Display}};

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

pub enum AgentType {
    Smallest(SmallestAgent),
    Largest(LargestAgent),
    Random(RandomAgent)
}

impl Display for AgentType {
    fn fmt(&self, f: &mut Formatter<'_>) -> fmt::Result {
        match *self {
            Self::Smallest(_) => write!(f, "SmallestAgent"),
            Self::Largest(_) => write!(f, "LargestAgent"),
            Self::Random(_) => write!(f, "RandomAgent(seed)"),
        }
    }
}

impl Agent for AgentType {
    fn play_turn(&mut self, hand: &Hand, stack: &Stack, n: CardCount) -> Option<(Card, NonZeroU8)> {
        match self {
            AgentType::Smallest(a) => a.play_turn(hand, stack, n),
            AgentType::Largest(a) => a.play_turn(hand, stack, n),
            AgentType::Random(a) => a.play_turn(hand, stack, n),
        }
    }
}