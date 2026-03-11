---
type: entity
entity_type: company
name: "Raydium"
domain: internet-finance
handles: ["@RaydiumProtocol"]
website: https://raydium.io
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
category: "AMM / DEX (Solana)"
stage: mature
built_on: ["Solana"]
competitors: ["[[meteora]]", "[[omnipair]]"]
tags: ["AMM", "CLMM", "solana", "metadao-adjacent"]
---

# Raydium

## Overview
One of the two dominant AMMs on Solana (alongside Meteora). Offers concentrated liquidity market maker (CLMM) pools. Referenced throughout the MetaDAO ecosystem as the primary benchmark for AMM yield and volume — OmniPair's competitive thesis is explicitly framed as "must yield more than Raydium for equivalent pools" once Jupiter aggregator integration is live.

## Current State
- **Competitive benchmark**: OmniPair founder Rakka argues mathematically that OmniPair (same AMM + aggregator integration + borrow rate surplus) must yield more than Raydium for equivalent pools. This is the core competitive claim for OmniPair's value proposition.
- **CLMM pools**: Used by DeFi protocols like Paystream for automated LP strategies across Raydium CLMM, Meteora DLMM, and DAMM v2 pools.
- **Liquidity farming**: MetaDAO's FUTURE token had Raydium liquidity farming initiated via futarchy proposal (Nov 2024).
- **Volume reference**: Jupiter aggregates Raydium pools. OmniPair's expected ~3x volume increase from Jupiter integration is benchmarked against closing "the APY gap with Raydium."

## Competitive Position
- **Established incumbent**: Raydium has deep liquidity across Solana token pairs. New AMMs like OmniPair compete for the same LP capital.
- **vs OmniPair**: OmniPair differentiates by combining AMM + lending (leverage) in the same pool. Raydium is pure AMM — no lending, no leverage. For MetaDAO ecosystem tokens specifically, OmniPair offers a unique value proposition (leverage for futarchy bets). For general Solana trading, Raydium's deeper liquidity dominates.
- **vs Meteora**: Both are major Solana AMMs. Raydium's CLMM competes with Meteora's DLMM for concentrated liquidity provision.

## Relationship to KB
- [[permissionless leverage on metaDAO ecosystem tokens catalyzes trading volume and price discovery that strengthens governance by making futarchy markets more liquid]] — Raydium is the benchmark OmniPair must beat to attract LP capital away from established pools

---

Relevant Entities:
- [[omnipair]] — competitor (OmniPair claims superior yield through AMM+lending combination)
- [[meteora]] — AMM competitor on Solana
- [[jupiter]] — aggregates Raydium pools

Topics:
- [[internet finance and decision markets]]
