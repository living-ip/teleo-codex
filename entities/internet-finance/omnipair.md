---
type: entity
entity_type: company
name: "OmniPair"
domain: internet-finance
handles: ["@omnipair"]
website: https://omnipair.com
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
founded: 2025-01-01
founders: ["[[rakka]]"]
category: "Combined AMM + lending protocol (Solana)"
parent: "[[futardio]]"
stage: seed
market_cap: "$2-3M (as of ~2026-02-25)"
ico_raise: "$1.1M (July 2025 via MetaDAO)"
treasury: "$550K USDC"
token_price: "$0.46"
token_performance: "OMFG up ~480% since ICO"
funding: "ICO via MetaDAO"
key_metrics:
  tvl: "$250-300K (~3 weeks post-launch)"
  volume_tvl_ratio: "~0.8x monthly, trending toward 1x"
  borrow_rate: "1% annualized (conservative rate controller defaults)"
  team_size: "6"
competitors: ["[[raydium]]", "[[meteora]]", "[[drift]]"]
built_on: ["Solana"]
tags: ["futarchy-ecosystem", "metadao", "leverage", "amm", "lending"]
---

# OmniPair

## Overview
Combined AMM + lending protocol on Solana — swapping and borrowing in the same pool. Currently the only venue for leverage on MetaDAO ecosystem tokens. Part of the futarchic governance ecosystem: enables large bets on decision market outcomes, increases volume, and improves signal quality in futarchy proposals.

## Current State
- **Market cap**: ~$2-3M (OMFG token) — approximately 1/40th of MetaDAO's valuation
- **TVL**: ~$250-300K (~3 weeks post-launch as of late Feb 2026)
- **Borrow rate**: 1% annualized — extremely low due to conservative rate controller defaults (only increases above 85% utilization). Market-clearing rate for META/OMFG could reach 15-20% annually.
- **Withdrawal fee**: 1% — unique among AMMs. Exists to prevent a specific liquidity manipulation/liquidation attack. Planned fix: free withdrawal after ~3-day waiting period.
- **DexScreener visibility**: Only ~10% of liquidity displays on some scanners (~$50K visible), making token look like a rug. Caused by Futarchic AMM structure.
- **Program status**: NOT immutable — controlled by multi-sig. ~4 contract upgrades in first week post-launch.
- **Pools**: ~50% seeded by MetaDAO/Colin (not formally/officially)

## Timeline
- **~2025-Q4** — Audit period begins (~3 months of audits)
- **~2026-02-15** — OmniPair launches (public beta / guarded launch)
- **2026-02-15 to 2026-02-22** — ~4 contract upgrades in first week
- **~2026-03-01** — Jupiter SDK ready, forked by Jupiter team. Integration expected imminently.
- **~2026-03-15 (est)** — Leverage/looping feature expected (1-3 weeks from late Feb conversation). Implemented and audited in contracts, needs auxiliary peripheral program.
- **Pending** — LP experience improvements, combined APY display (swap + interest), off-chain watchers for bad debt monitoring

## Competitive Position
- **"Only game in town"** for leverage on MetaDAO ecosystem tokens currently
- Rakka argues mathematically: same AMM + aggregator integration + borrow rate surplus = must yield more than Raydium for equivalent pools
- **Key vulnerability**: temporary moat. If MetaDAO reaches $1B valuation, Drift and other perp protocols will likely offer leverage on META and ecosystem tokens
- **Chicken-and-egg**: need LPs for borrowers, need borrowers for LP yield. Rakka prioritizing LP side first.
- **Jupiter integration is the single highest-impact catalyst** — expected to roughly triple volume and close most of the APY gap with Raydium
- **Valuation**: OMFG at ~1/40th of META market cap, described as "silly"/undervalued given OmniPair is the primary beneficiary of ecosystem volume growth

## Investment Thesis
OmniPair is a leveraged bet on MetaDAO ecosystem growth. If futarchic governance and ownership coins gain adoption, all trading volume flows through OmniPair as the default leverage venue. Current valuation ($2-3M) is severely discounted relative to MetaDAO (~$80-120M implied). Key catalysts: Jupiter integration (volume), leverage feature (demand driver), ecosystem growth (rising tide). Key risks: temporary moat, DexScreener visibility, small team (6).

**Thesis status:** ACTIVE

## Technical Details
- Interest accrual is time-dependent (calculated on interaction, not streamed on-chain)
- Collateral is NOT re-hypothecated (locked, not used as LP) — potential V2 feature
- LP tokens cannot be used as collateral — potential V2 feature
- Multiple pools with different parameters allowed; configs are market-driven
- Circuit breaker / pause mechanism (multi-sig controlled; plans for future permissionless version with bonding)
- Rate controller: begins increasing rates only above 85% utilization; dynamic collateral factor caps utilization at ~50-60%

## Open Questions
- No team token package in place yet — alignment mechanism absent
- No airdrop/LP incentive program agreed
- Combined AMM+lending creates novel attack surfaces not fully explored at scale

## Relationship to KB
- [[permissionless leverage on metaDAO ecosystem tokens catalyzes trading volume and price discovery that strengthens governance by making futarchy markets more liquid]] — OmniPair is the direct implementation of this claim
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — OmniPair addresses the liquidity friction
- [[ownership coins primary value proposition is investor protection not governance quality because anti-rug enforcement through market-governed liquidation creates credible exit guarantees that no amount of decision optimization can match]] — leverage enables more aggressive price discovery

---

Relevant Entities:
- [[metadao]] — platform / ecosystem
- [[rakka]] — founder
- [[raydium]] — AMM competitor
- [[meteora]] — AMM competitor
- [[drift]] — future leverage competitor

Topics:
- [[internet finance and decision markets]]
