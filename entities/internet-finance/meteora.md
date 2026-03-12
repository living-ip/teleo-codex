---
type: entity
entity_type: company
name: "Meteora"
domain: internet-finance
handles: ["@MeteoraAG"]
website: https://meteora.ag
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
category: "Liquidity protocol / AMM (Solana)"
stage: growth
key_metrics:
  metadao_revenue_share: "46% of MetaDAO Q4 2025 revenue ($1.15M) from Meteora LP positions"
  standard_allocation: "900K tokens per Futardio launch placed in Meteora pool"
competitors: ["[[raydium]]", "[[omnipair]]"]
built_on: ["Solana"]
tags: ["AMM", "DLMM", "liquidity", "solana", "metadao-infrastructure"]
---

# Meteora

## Overview
Solana liquidity protocol offering Dynamic Liquidity Market Maker (DLMM) pools, concentrated liquidity, and dynamic bonding pools. Critical infrastructure for the MetaDAO ecosystem — every Futardio launch allocates 900K tokens to a Meteora pool as part of the standard token issuance template, and Meteora LP positions generated 46% of MetaDAO's $2.51M Q4 2025 revenue.

## Current State
- **Role in MetaDAO ecosystem**: Default secondary liquidity venue. Standard Futardio launch template: 10M token base issuance + 2M Futarchic AMM + 900K Meteora + performance package. Meteora provides the non-futarchic liquidity layer.
- **Revenue generation**: MetaDAO earned $1.15M from Meteora LP positions in Q4 2025 (46% of total $2.51M revenue). The remaining 54% came from the Futarchic AMM.
- **Protocol-owned liquidity**: MetaDAO maintains protocol-owned liquidity on Meteora (e.g., META-USDC pool). The META token migration proposal (Aug 2025) included withdrawing protocol-owned liquidity from Meteora as a migration step.
- **Dynamic Bonding Pools**: Used by projects like Phonon Studio AI for tokenized AI artist trading — Meteora DBC Pools enable token launches tied to dynamic bonding curves.
- **DLMM**: Concentrated liquidity pools used by Paystream and other DeFi protocols for routing strategies.

## Timeline
- **2024-02** — MetaDAO executes Dutch auction on OpenBook, pairs USDC with META for Meteora LP (first formal META liquidity on Meteora)
- **2024-02** — $100K OTC trade with Ben Hawkins includes creating 50/50 Meteora LP 1% Volatile Pool META-USDC
- **2025-Q4** — Meteora LP generates $1.15M in fees for MetaDAO (Pine Analytics Q4 report)
- **2025-10 to 2026-03** — Every Futardio launch allocates 900K tokens to Meteora pool as standard template

- **2024-02-09** — Selected as liquidity pool platform for MetaDAO's META spot market launch (1,000 META paired with 35,000 USDC)
## Competitive Position
- **Infrastructure role**: Not competing with MetaDAO — provides complementary liquidity infrastructure. Meteora is the LP venue; Futarchic AMM is the governance venue.
- **vs Raydium**: Both are major Solana AMMs. Raydium offers CLMM (concentrated liquidity). Meteora differentiates with DLMM and dynamic bonding pools.
- **vs OmniPair**: OmniPair combines AMM + lending (leverage). Meteora is pure liquidity provision — different use case but competes for LP capital on the same token pairs.
- **Structural advantage**: Deep integration with MetaDAO ecosystem through standard launch template creates reliable flow of new token pairs.

## Relationship to KB
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — Meteora provides the secondary liquidity layer for every MetaDAO launch
- [[permissionless leverage on metaDAO ecosystem tokens catalyzes trading volume and price discovery that strengthens governance by making futarchy markets more liquid]] — Meteora pools are one venue where this liquidity lives

---

Relevant Entities:
- [[metadao]] — ecosystem partner, revenue source
- [[omnipair]] — competing for LP capital
- [[raydium]] — AMM competitor on Solana
- [[futardio]] — launch template integration

Topics:
- [[internet finance and decision markets]]
