---
type: source
title: "Doppler: A liquidity bootstrapping ecosystem"
author: Austin Adams, Matt Czernik, Clement Lakhal, Kaden Zipfel (Whetstone Research)
date: 2024-01
url: https://www.doppler.lol/whitepaper.pdf
domain: internet-finance
processed_by: rio
status: processed
claims_extracted:
  - "dutch-auction dynamic bonding curves solve the token launch pricing problem by combining descending price discovery with ascending supply curves eliminating the instantaneous arbitrage that has cost token deployers over 100 million dollars on Ethereum"
notes: "Whitepaper dated Jan 2024 but protocol is expanding to Solana in March 2026. Built on Uniswap v4 hooks. Companion announcement article (Paragraph/@whetstone, March 2026) was marketing-only — no technical content."
---

# Doppler: A liquidity bootstrapping ecosystem

## Protocol Overview

Doppler is a liquidity bootstrapping protocol built on Uniswap v4 hooks. It automates token launch price discovery and liquidity formation inside a single hook contract, progressing from initial auction through to migration into a generalized AMM (Uniswap v2/v4) without user intervention.

## Core Mechanism: Dutch-Auction Dynamic Bonding Curves

Blends two well-studied primitives:

**Dutch auctions:** Descending price, shill-proof (Frankie 2022, Moallemi 2024). Starts high, decays until buyers emerge. Mitigates information asymmetry because bid revelation carries explicit costs through gas fees.

**Bonding curves:** Ascending price based on supply. Static bonding curves (pump.fun, friend.tech) have a critical flaw: setting the initial price. Too low = immediate arbitrage ($100M+ lost on Ethereum mainnet). Too high = no trades.

**The hybrid:** Two-phase price discovery:
1. **Phase 1:** Rapid price decrease (dutch auction) until market clearing price found
2. **Phase 2:** Price ramps up via dynamic bonding curve

The bonding curve's origin tick shifts via a `tickAccumulator` that aggregates adjustments from both the dutch auction and bonding curve rebalancing.

## Epoch-Based Rebalancing

Protocol establishes a predetermined sales schedule: `expected tokens sold = (elapsed time / total duration) × numTokensToSell`

Rebalancing triggers on first swap of each epoch. Three states:

| State | Condition | Action |
|-------|-----------|--------|
| Max dutch auction | Net sales ≤ 0 | Maximum price reduction per epoch |
| Relative dutch auction | 0 < sales < target | Proportional reduction (e.g., 80% of target = 20% discount) |
| Oversold | Sales ≥ target | Price increase toward expected clearing point |

Key formula: `maxDelta = (maxTick - minTick) / (endingTime - startingTime) × epochLength`

## Three-Slug Liquidity Position Structure

| Slug | Position | Purpose |
|------|----------|---------|
| Lower | Global min → current tick | Absorbs all proceeds; enables exit/redemption |
| Upper | Current tick → expected next-epoch price | Supplies delta between expected and actual sales |
| Price Discovery (0-N) | Upper ceiling → tickUpper | Tokens for future epochs; count set at deployment |

## MEV Protection

- Bonding curve set in `beforeSwap` hook — rebalances happen during execution, not between blocks
- Manipulators lose funds from curve shifting (functions as limit orders against manipulation)
- Multi-block MEV attack requires censoring transactions across blocks and epochs — impractical on chains with censorship resistance

## Airlock Architecture (Modular Factory System)

Four factory modules:
1. **Token Factory** — deploys ERC20s with known bytecode (eliminates malicious implementations)
2. **Liquidity Factory** — creates and manages LBP, seeds with user-defined token supply
3. **Migration Factory** — generates AMM position post-auction, minimizing MEV
4. **Timelock Factory** — time-locks LP tokens (vs burning — preserves revenue-generating asset)

## Fee Structure

- Maximum combined fee ceiling: 250 bps
- Protocol fee: 10 bps or 10% of interface fee (whichever higher)
- Interface fee: up to 225 bps (creates consolidation incentives — reduces market fragmentation)
- Migration/liquidity fee: additional 5% on swap activity, directed to timelock contract
- **Fee rehypothecation:** fees can be programmatically redirected to grow liquidity, perform buybacks, or consolidate into one side of the market

## Vesting Modules

Developer tokens not distributed until token is fully liquid (post-bonding curve). Prevents developer dumps during price discovery.

## Solana Expansion (March 2026)

Not a port or fork — native implementation designed for SVM constraints (different accounting model, economic challenges). Announced via Paragraph/@whetstone.

## Key Data Points

- 910,000+ unique traded onchain assets as of writing
- $100M+ lost to instantaneous arbitrage on Ethereum mainnet by token deployers
- $400M+ lost to instantaneous arbitrage and MEV on Ethereum

## Assessment

The dutch-auction dynamic bonding curve is a genuinely novel price discovery primitive. It solves a real problem (initial pricing) that static bonding curves cannot. The modular factory architecture and fee rehypothecation are strong engineering but not new mechanism-level insights. The protocol is infrastructure-layer — it doesn't compete with futarchy governance (MetaDAO/futard.io) but could complement it as the price discovery layer beneath governance.
