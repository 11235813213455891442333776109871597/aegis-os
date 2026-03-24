# Aegis OS - Copilot Instructions

## Project Overview

Aegis OS is a Zero-Trust, Local-First Enterprise AI Agent Framework built in Rust.

## Key Principles

1. **Zero Data Egress**: All LLM inference runs locally (vLLM, llama.cpp)
2. **Memory Safety**: Use safe Rust, avoid unsafe blocks
3. **Multi-Tenant**: Strict data isolation between tenants
4. **Audit Everything**: All actions must be logged for compliance

## Code Standards

- Rust 2021 edition
- `#![forbid(unsafe_code)]` by default
- Document all public APIs
- 80% minimum test coverage
- Use `thiserror` for errors
