---
type: claim
domain: internet-finance
status: active
confidence: experimental
created: 2026-01-11
extractor: leo
---

# Ranger raised $86M through MetaDAO futarchy ICO with points preference structure

## Description

Ranger (perpetual futures aggregator) raised $86M through MetaDAO's futarchy-governed ICO platform, implementing a hybrid capital structure that combined permissionless futarchy mechanisms with points-based allocation preference. The structure included: (1) points holders received allocation preference for capital committed to the ICO (first access to purchase tokens at ICO price), with remaining allocation filled pro-rata by non-points commitments; (2) 30% team allocation with performance-based unlocks at 2x/3x/5x price multiples measured over 3-month TWAP; (3) bid program allowing token returns at ICO price minus treasury spend (not individual holder spend), functioning as a liquidation-lite mechanism; (4) $250k monthly treasury spend limit enforced through smart contract constraints that can be modified via futarchy governance vote.

## Evidence

- Ranger ICO raised $86M in commitments through MetaDAO's Futardio platform (self-reported) [Source: Futardio Launch Announcement, 2026-01-06]
- Points holders (from prior Ranger campaign) received allocation preference, with excess filled by non-points commitments (self-reported) [Source: Futardio Launch Announcement, 2026-01-06]
- 30% team allocation unlocks at 2x, 3x, 5x ICO price measured over 3-month TWAP windows (self-reported) [Source: Futardio Launch Announcement, 2026-01-06]
- Bid program allows returns at "ICO price minus treasury spend" where spend refers to treasury-level expenditure, not individual holder activity (self-reported) [Source: Futardio Launch Announcement, 2026-01-06]
- $250k monthly spend limit enforced via smart contract, modifiable through futarchy governance (self-reported) [Source: Futardio Launch Announcement, 2026-01-06]
- Token distribution: 42% ICO, 30% team (performance-locked), 17% existing investors, 11% liquidity [Source: Futardio Launch Announcement, 2026-01-06]

## Challenges

- All claims are self-reported; no independent verification of raise amount or mechanism implementation
- 47% insider control (17% existing investors + 30% team) approaches governance veto threshold in futarchy systems requiring >50% approval, potentially undermining "unruggable" framing
- Points preference creates two-tier access structure that may compromise futarchy's permissionless properties
- With 47% locked and 11% in liquidity, initial circulating supply could be <42%, making 3-month TWAP manipulation easier than implied through low-float dynamics
- $250k monthly limit can be changed via futarchy vote; with insiders controlling 47%, this constraint may be weaker than presented
- Bid program as liquidation-lite mechanism has not been tested; unclear if it provides meaningful investor protection
- Single case study insufficient to validate hybrid futarchy-points structure at scale

## Related Claims

- [[metadao-futarchy-governance-uses-conditional-markets-to-let-token-price-determine-protocol-decisions]]
- [[performance-unlocked-team-tokens-with-price-multiple-triggers-and-twap-settlement-create-long-term-alignment-without-initial-dilution]]
- [[futarchy-governed-liquidation-is-the-enforcement-mechanism-that-makes-unruggable-ICOs-credible-because-investors-can-force-full-treasury-return-when-teams-materially-misrepresent]]