//! Aegis OS - Zero-Trust, Local-First Enterprise AI Agent Framework
//!
//! This crate provides the core functionality for building enterprise-grade
//! AI agents that run entirely within customer infrastructure.

#![forbid(unsafe_code)]
#![warn(missing_docs)]
#![warn(clippy::all)]

pub mod backends;
pub mod orchestrator;
pub mod qdrant;
pub mod superset;

// Re-export commonly used types
pub use backends::*;
pub use orchestrator::*;
