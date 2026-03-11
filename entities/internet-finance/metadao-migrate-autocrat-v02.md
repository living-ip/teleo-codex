---
type: entity
entity_type: decision_market
name: "MetaDAO: Migrate Autocrat Program to v0.2"
domain: internet-finance
status: passed
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "HenryE & Proph3t"
proposal_url: "https://www.futard.io/proposal/HXohDRKtDcXNKnWysjyjK8S5SvBe76J5o4NdcF4jj963"
proposal_date: 2024-03-28
resolution_date: 2024-04-03
category: mechanism
summary: "Upgrade Autocrat to v0.2 with reclaimable rent, conditional token merging, improved metadata, and lower pass threshold (5% to 3%)"
tags: ["futarchy", "autocrat", "mechanism-upgrade", "solana"]
---

# MetaDAO: Migrate Autocrat Program to v0.2

## Summary
Technical upgrade from Autocrat v0.1 to v0.2. Three new features: (1) reclaimable rent — recover ~4 SOL used to create proposal markets, lowering proposal creation friction; (2) conditional token merging — combine 1 pTOKEN + 1 fTOKEN back into 1 TOKEN, improving liquidity during multiple active proposals; (3) conditional token metadata — tokens show names and logos in wallets instead of raw mint addresses. Config changes: pass threshold lowered from 5% to 3%, default TWAP value set to $100, TWAP updates in $5 increments (enhancing manipulation resistance), minimum META lot size reduced from 1 to 0.1 META.

## Market Data
- **Outcome:** Passed (2024-04-03)
- **Autocrat version:** 0.1 (last proposal on v0.1)
- **Key participants:** HenryE (author), Proph3t (author), OtterSec (program verification)

## Significance
First major Autocrat upgrade approved through futarchy itself — MetaDAO used its own governance mechanism to upgrade its governance mechanism. The changes directly addressed friction points: high proposal creation costs (~4 SOL), liquidity fragmentation across proposals, and poor UX for conditional tokens.

The pass threshold reduction from 5% to 3% is particularly noteworthy — it lowered the bar for proposals to pass, reflecting the team's belief that the original threshold was too conservative. The TWAP manipulation resistance improvements ($5 increments instead of 1%) show iterative mechanism refinement based on live experience.

Programs deployed: autocrat_v0 (metaRK9dUBnrAdZN6uUDKvxBVKW5pyCbPVmLtUZwtBp), openbook_twap (twAP5sArq2vDS1mZCT7f4qRLwzTfHvf5Ay5R5Q5df1m), conditional_vault (vAuLTQjV5AZx5f3UgE75wcnkxnQowWxThn1hGjfCVwP).

## Relationship to KB
- [[metadao]] — mechanism upgrade
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — Autocrat evolution
- [[futarchy implementations must simplify theoretical mechanisms for production adoption because original designs include impractical elements that academics tolerate but users reject]] — iterative UX improvements
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — directly addressed proposal creation friction

---

Relevant Entities:
- [[metadao]] — parent organization
- [[proph3t]] — co-author

Topics:
- [[internet finance and decision markets]]
