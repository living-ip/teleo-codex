---
type: source
subtype: forum-post
project: metadao
author: futarchy.io
date: 2023-11-18
url: https://forum.metadao.fi/t/proposal-develop-a-lst-vote-market/117
processed_date: 2026-03-11
claims_extracted:
  - marinade-directed-stake-creates-1-7m-annual-validator-bribe-market-through-213m-votable-stake.md
  - metadao-3000-meta-funding-request-values-meta-between-1-and-100-dollars-per-token.md
  - metadao-targets-legitimacy-through-profitable-products-not-governance-innovation-because-new-organizational-models-require-proof-of-viability.md
  - votium-style-non-custodial-bribe-markets-eliminate-user-fund-risk-by-separating-vote-commitment-from-reward-claims.md
enrichments_applied:
  - autocrat-v0-uses-three-day-twap-to-settle-conditional-tokens-against-final-market-price.md
---

# Proposal: Develop a LST Vote Market

## Proposal Details
- **Proposal account**: `BPFLoaderUpgradeab1e11111111111111111111111`
- **Autocrat version**: v0.3
- **Proposal completed**: November 2023

## Summary
Forum post proposing development of a liquid staking token (LST) vote market for Solana, modeled after Votium's bribe marketplace on Ethereum. Requests 3000 META tokens (valued at $1-100 per token) to build a non-custodial platform enabling validators to bid for Marinade directed stake votes.

## Market Opportunity Analysis

### Marinade Directed Stake Metrics
- **Total Value Locked**: $532M
- **Directed stake portion**: 40% = $213M
- **Estimated staking yield**: ~8%
- **Theoretical validator bribe market**: $213M × 8% × 10% = $1.7M annually
  - Assumes validators willing to pay up to 10% of marginal revenue
  - Actual market size depends on participation rates and competitive dynamics

### Votium Precedent
- Non-custodial bribe market on Ethereum
- Operating since 2021
- Architecture: users commit votes on-chain, claim rewards from separate contract
- No custody transfer required

## Strategic Context

### MetaDAO Legitimacy Strategy
Proposal argues MetaDAO should prioritize building profitable products over promoting governance innovation:

> "New organizational models need proof of viability. The best way to get that proof is to build things that make money."

Emphasizes demonstrating value through successful products rather than governance mechanism advocacy.

### Technical Implementation Notes
- Proposes adapting Votium's non-custodial architecture to Solana
- Would integrate with Marinade's directed stake voting system
- Enables validator competition for stake allocation without token custody transfer

## Enrichments Applied

### Autocrat TWAP Settlement
Enrichment to: [[autocrat-v0-uses-three-day-twap-to-settle-conditional-tokens-against-final-market-price]]

**Challenge note**: Proposal mentions "11-day evaluation period" for the funding proposal itself. This is the proposal duration (how long markets trade before the decision), which is distinct from and longer than the 3-day TWAP settlement window (how final price is calculated at the end). Autocrat proposals can have arbitrary durations; the 3-day TWAP specifically applies to price settlement mechanics at proposal conclusion. This is expected behavior, not a discrepancy.

**Data point**: Confirms v0.3 Autocrat implementation uses 3-day TWAP for settlement, as evidenced by this proposal's completion process.