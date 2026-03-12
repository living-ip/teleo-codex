---
type: entity
entity_type: decision_market
name: "Sanctum: Should Sanctum use up to 2.5M CLOUD to incentivise INF-SOL liquidity via Kamino Vaults?"
domain: internet-finance
status: passed
parent_entity: "[[sanctum]]"
platform: "futardio"
proposer: "proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2"
proposal_url: "https://www.futard.io/proposal/6mc1Fp6ds8XKA2jMzBDDhVwvY6ZCGg6SNqvHy4E6LS7Q"
proposal_date: 2025-03-05
resolution_date: 2025-03-08
category: "treasury"
summary: "Deploy up to 2.5M CLOUD tokens to incentivize INF-SOL liquidity via Kamino vaults with 20% initial APY transitioning to 15%"
tracked_by: rio
created: 2026-03-11
---

# Sanctum: Should Sanctum use up to 2.5M CLOUD to incentivise INF-SOL liquidity via Kamino Vaults?

## Summary
Proposal to deploy up to 2.5M CLOUD tokens as liquidity mining incentives for INF-SOL Kamino vaults, offering 20% APY for the first month then 15% thereafter, to deepen native SOL liquidity for INF. The proposal addresses insufficient liquidity depth for large depositors and positions INF as a liquidity nexus for Solana LSTs.

## Market Data
- **Outcome:** Passed
- **Proposer:** proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2
- **Platform:** Futardio (Autocrat v0.3)
- **Duration:** 2025-03-05 to 2025-03-08
- **Target TVL:** $2.5M cap
- **Expected Duration:** 6+ months at target TVL

## Mechanism Design
The proposal uses dynamic incentive adjustment where Kamino team controls emission rates to maintain 15% APY target as TVL and CLOUD price fluctuate. This represents a hybrid approach: futarchy determines whether to allocate treasury resources, but operational execution (rate adjustments) is delegated to Kamino rather than governed by additional markets.

## Context
- INF outperforms mSOL and jitoSOL historically but lacks liquidity depth
- 95%+ of xSOL-SOL AMM liquidity comes from Kamino managed vaults
- INF-SOL Kamino vault has outperformed 100% INF HODL due to high capital velocity
- Industry standard for LP incentives is 15% combined APY

## Significance
Demonstrates futarchy application to treasury-funded growth initiatives where the proposal is economically straightforward (proven incentive model, clear problem, established partner). Low trading volume suggests market viewed this as obviously beneficial rather than requiring price discovery.

## Relationship to KB
- [[sanctum]] - treasury allocation decision
- [[MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window]] - mechanism used
- [[MetaDAOs-futarchy-implementation-shows-limited-trading-volume-in-uncontested-decisions]] - exemplifies pattern
