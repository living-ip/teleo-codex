---
type: claim
domain: internet-finance
description: "Dedicated per-market-maker order books with on-chain matching solve state contention that prevents competitive market making on Solana"
confidence: experimental
source: "Dhrumil (@mmdhrumil), Archer Exchange co-founder, X archive 2026-03-09"
created: 2026-03-11
---

# Archer Exchange implements dedicated writable-only-by-you order books per market maker enabling permissionless on-chain matching

Archer Exchange's architecture gives each market maker a dedicated order book that only they can write to, while maintaining fully on-chain matching with competitive quote aggregation. This design pattern addresses the fundamental state contention problem in on-chain order books: when multiple market makers compete to update the same shared state, transaction conflicts create latency and failed transactions that make competitive market making impractical.

The "writable-only-by-you" constraint means each market maker controls their own state updates without competing for write access with other participants. The protocol then aggregates quotes across all market maker books to provide best execution for takers. This separates the write-contention problem (solved through isolation) from the price discovery problem (solved through aggregation).

Dhrumil describes this as "fully on-chain matching" with "dedicated, writable-only-by-you order book for each market maker" and positions it as infrastructure for "best quotes for your trades" through competitive market making rather than traditional AMM or aggregator models.

The design was explicitly "inspired by observation that 'prop AMMs did extremely well'" — suggesting that giving market makers dedicated state control (similar to how proprietary AMM pools control their own liquidity) enables better performance than shared order book architectures.

## Evidence
- Archer Exchange architecture: dedicated per-MM order books, on-chain matching, competitive quotes
- Design rationale: "prop AMMs did extremely well" observation driving architecture decisions
- Positioning: infrastructure layer for Solana DeFi execution quality
- Source: Direct statement from co-founder on architecture and design philosophy

## Significance

This represents a novel mechanism design pattern for on-chain order books that could resolve the long-standing tension between decentralization (on-chain matching) and performance (competitive market making). If successful, it would demonstrate that state isolation rather than off-chain execution is the solution to order book scalability.

---

Relevant Notes:
- [[permissionless-leverage-on-metadao-ecosystem-tokens-catalyzes-trading-volume-and-price-discovery-that-strengthens-governance-by-making-futarchy-markets-more-liquid.md]] — Archer provides the market making infrastructure layer
- [[MetaDAO-is-the-futarchy-launchpad-on-solana-where-projects-raise-capital-through-unruggable-icos-governed-by-conditional-markets-creating-the-first-platform-for-ownership-coins-at-scale.md]] — market making infrastructure enables futarchy market liquidity

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
