---
type: claim
claim: Dean's List DAO futarchy market validated treasury de-risking proposal that modeled 5-20 percent FDV increase exceeding 3 percent TWAP threshold
domain: internet-finance
confidence: experimental
created: 2026-03-11
source:
  - inbox/archive/2024-12-02-futardio-proposal-approve-deans-list-treasury-management.md
---

## Description

A December 2024 futarchy proposal for Dean's List DAO treasury de-risking passed conditional token markets with TWAP exceeding the 3% threshold. The proposal author modeled the FDV impact at 5-20% increase from converting volatile assets to stablecoins, but the market validated only that the proposal cleared the pass threshold—not the specific 5-20% range.

## Context

Dean's List DAO is a small organization (~$500k FDV, ~$75,000-$87,000 treasury). The proposal sought to convert treasury holdings from volatile DEAN tokens and SOL to USDC stablecoins. The proposal author (@BearUntied) modeled two scenarios:

1. **Low confidence boost (5%):** FDV increases from $500,000 to $525,000
2. **High confidence boost (20%):** FDV increases from $500,000 to $600,000

The rationale: converting to stablecoins signals financial prudence to markets, reducing perceived risk and increasing investor confidence in the DAO's longevity.

The conditional token market confirmed the proposal would have positive expected impact (TWAP > 3% threshold), but this does not validate the specific 5-20% range. The market's verdict was "this proposal is net-positive" not "this proposal will increase FDV by 5-20%." The 5-20% range is the *input* (the proposer's modeled scenarios), not the *output* (what the market priced).

Dean's List DAO is small with likely thin conditional markets. Treasury management proposals in such contexts are typically uncontested. No data on trading volume, market depth, or participant count is available to assess whether the TWAP represented robust price discovery or simply approval of an obvious treasury management decision.

## Evidence

- Proposal author modeled two FDV increase scenarios: 5% and 20%
- Baseline FDV: $500,000 (conservative estimate)
- Low scenario: $525,000 (+5%)
- High scenario: $600,000 (+20%)
- Conditional token TWAP exceeded 3% threshold (proposal passed)
- Market confirmed positive expected impact but did not price the specific 5-20% range
- Actual market depth and liquidity unknown
- Proposal account: 4gaJ8bi1gpNEx6xSSsepjVBM6GXqTDfLbiUbzXbARHW1
- DAO account: 9TKh2yav4WpSNkFV2cLybrWZETBWZBkQ6WB6qV9Nt9dJ
- Autocrat version: 0.3
- Completed: 2024-12-05

## Relevant Notes

- [[dean-list-dao-treasury-stablecoin-conversion-modeled-survival-probability-increase-from-50-to-90-percent]] — the survival probability modeling from the same proposal
- [[ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests]] — treasury de-risking as active capital management
- [[futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance]] — futarchy prices outcomes of traditional financial analysis rather than replacing it
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] — procedural treasury proposals get thin markets
