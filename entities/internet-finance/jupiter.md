---
type: entity
entity_type: company
name: "Jupiter"
domain: internet-finance
handles: ["@JupiterExchange"]
website: https://jup.ag
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
category: "DEX aggregator / DeFi hub (Solana)"
stage: mature
key_metrics:
  role_in_ecosystem: "Primary aggregator for MetaDAO ecosystem token routing"
  omnipair_catalyst: "Jupiter SDK integration expected to ~3x OmniPair volume"
built_on: ["Solana"]
tags: ["DEX-aggregator", "solana", "infrastructure", "metadao-adjacent"]
---

# Jupiter

## Overview
The dominant DEX aggregator on Solana — routes trades across all Solana AMMs to find optimal execution. Critical infrastructure for the MetaDAO ecosystem: Jupiter integration determines whether ecosystem tokens are tradeable by the broader Solana market. The Jupiter team forked OmniPair's SDK (as of ~March 2026) to enable direct routing through OmniPair pools, making this integration the single highest-impact catalyst for OmniPair's volume growth.

## Current State
- **Aggregator role**: Routes trades across Raydium, Meteora, OmniPair, and other Solana AMMs. Being listed on Jupiter is effectively a prerequisite for meaningful trading volume on Solana.
- **OmniPair integration**: Jupiter team forked OmniPair's SDK (~March 2026). Integration expected to roughly triple OmniPair volume and close most of the APY gap with Raydium. This is the single highest-impact near-term catalyst for the MetaDAO ecosystem's DeFi infrastructure.
- **Ranger Finance**: Ranger's perps aggregation product aggregated Jupiter (among others) before its liquidation.
- **Ecosystem significance**: Jupiter is not a MetaDAO ecosystem project — it's Solana-wide infrastructure. But its routing decisions determine liquidity accessibility for every MetaDAO token.

## Competitive Position
- **Dominant position**: The default swap interface for Solana users. Near-monopoly on DEX aggregation.
- **Infrastructure dependency**: MetaDAO ecosystem tokens that aren't routed through Jupiter have severely limited discoverability and volume. OmniPair's DexScreener visibility issue (~10% of liquidity displayed) compounds this — Jupiter routing partially compensates.
- **Not a direct competitor**: Jupiter aggregates, not competes with, MetaDAO ecosystem AMMs. The relationship is symbiotic — more AMMs with unique pools give Jupiter more routing options.

## Relationship to KB
- [[permissionless leverage on metaDAO ecosystem tokens catalyzes trading volume and price discovery that strengthens governance by making futarchy markets more liquid]] — Jupiter routing is the primary channel through which broader Solana liquidity reaches MetaDAO ecosystem tokens
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — Jupiter integration is infrastructure-level validation for the MetaDAO ecosystem

---

Relevant Entities:
- [[omnipair]] — SDK integration (highest-impact catalyst)
- [[meteora]] — routed AMM
- [[raydium]] — routed AMM
- [[ranger-finance]] — former aggregation client (liquidated)

Topics:
- [[internet finance and decision markets]]

## Timeline

- **2026-03** — Jupiter DAO governance proposal received 303 views and 2 comments, demonstrating minimal engagement compared to futarchy markets (Pine Analytics comparison)
