---
type: entity
entity_type: company
name: "Ranger Finance"
domain: internet-finance
handles: ["@ranger_finance"]
status: liquidating
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
founded: 2026-01-06
category: "Perps aggregator / DEX aggregation (Solana/Hyperliquid)"
stage: declining
key_metrics:
  raise: "$6M+ (39% of RNGR supply at ~$15M FDV)"
  projected_volume: "$5B (actual: ~$2B — 60% below)"
  projected_revenue: "$2M (actual: ~$500K — 75% below)"
  liquidation_value: "$0.75-$0.82 per token (estimated)"
competitors: ["Jupiter", "Drift"]
built_on: ["Solana", "Hyperliquid"]
tags: ["perps", "aggregation", "metadao-ecosystem", "liquidation", "futarchy-enforcement"]
---

# Ranger Finance

## Overview
Perps aggregator and DEX aggregation platform on Solana/Hyperliquid. Three products: perps aggregation (Jupiter, Drift), spot meta-aggregation (Jupiter, DFlow), and Ranger Earn (vault-based yield strategies). Launched via MetaDAO ICO in January 2026. Now undergoing futarchy-governed liquidation — the first major test of the unruggable ICO enforcement mechanism.

## Current State
- **Liquidation**: MetaDAO community passed liquidation proposal (early March 2026). Snapshot scheduled March 12, 2026.
- **Reasons for liquidation**:
  - Material misrepresentations before fundraise: projected $5B volume and $2M revenue; actual was ~$2B volume (60% below) and ~$500K revenue (75% below)
  - Activity dropped 90%+ post-ICO
  - Most "users" were reportedly token farmers, not legitimate platform participants
- **Liquidation terms**: Pull all RNGR and USDC from the Futarchy AMM, return treasury funds to tokenholders (excluding unvested/protocol-owned), estimated $0.75-$0.82 per token. IP and infrastructure return to Glint House PTE LTD.
- **Post-liquidation pivot**: Shifted to focus exclusively on vaults product, suspending perp aggregation and spot trading. Running "Build-A-Bear Hackathon" with up to $1M in vault TVL seed funding. All-time $1.13M+ paid to Ranger Earn depositors.

## Timeline
- **2026-01-06** — ICO on MetaDAO. Raised $6M+, selling 39% of RNGR at ~$15M FDV. Full liquidity at TGE (no vesting). Team allocation performance-based (milestones at 2x/4x/8x/16x/32x).
- **2026-02** — Volume and revenue significantly below projections. Activity drop-off.
- **2026-03** — Liquidation proposal passed via futarchy. Snapshot scheduled March 12.
- **2026-03-06** — Pivot to vaults-only, suspend perp/spot aggregation.

## Significance for KB
Ranger is THE test case for futarchy-governed enforcement. The system is working as designed: investors funded a project, the project underperformed relative to representations, the community used futarchy to force liquidation and treasury return. This is exactly what the "unruggable ICO" mechanism promises — and Ranger is the first live demonstration.

Key questions this case answers:
1. Does futarchy enforcement actually work? (Yes — liquidation proposal passed)
2. Do investors get meaningful recovery? ($0.75-$0.82 per token = 75-82% recovery)
3. Does the threat of liquidation create accountability? (Evidence: team pivoted to vaults before liquidation completed)

## Relationship to KB
- [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — Ranger IS the evidence for this claim
- [[futarchy-governed permissionless launches require brand separation to manage reputational liability because failed projects on a curated platform damage the platforms credibility]] — Ranger demonstrates the brand separation challenge
- [[ownership coins primary value proposition is investor protection not governance quality because anti-rug enforcement through market-governed liquidation creates credible exit guarantees that no amount of decision optimization can match]] — Ranger tests investor protection in practice

---

Relevant Entities:
- [[metadao]] — parent platform
- [[futardio]] — launch mechanism

Topics:
- [[internet finance and decision markets]]
