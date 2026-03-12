---
type: entity
entity_type: company
name: Archer Exchange
domain: internet-finance
status: active
founded: 2025
founders:
  - Dhrumil (@mmdhrumil)
website: ""
platform: Solana
category: market-making-infrastructure
tracked_by: rio
created: 2026-03-11
---

# Archer Exchange

Market making infrastructure protocol on Solana providing fully on-chain matching with dedicated order books per market maker. Architecture gives each MM a writable-only-by-you order book while aggregating quotes for best execution. Design inspired by observation that "prop AMMs did extremely well" — applying state isolation principles to competitive market making.

## Timeline
- **2026-03-09** — Architecture described: dedicated per-MM order books, on-chain matching, competitive quote aggregation. Positioned as infrastructure layer solving execution quality for Solana DeFi.

## Relationship to KB
- Provides market making infrastructure for [[permissionless leverage on metaDAO ecosystem tokens catalyzes trading volume and price discovery that strengthens governance by making futarchy markets more liquid]]
- Implements novel mechanism design pattern: [[archer-exchange-implements-dedicated-writable-only-order-books-per-market-maker-enabling-permissionless-on-chain-matching]] <!-- claim pending -->
- Part of Solana DeFi infrastructure ecosystem supporting [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]]