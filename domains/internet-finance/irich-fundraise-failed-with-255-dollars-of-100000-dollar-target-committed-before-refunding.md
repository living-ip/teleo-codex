---
type: claim
claim_id: irich-fundraise-failed
title: i.rich fundraise failed with $255 of $100,000 target committed before refunding
description: The i.rich project's MetaDAO conditional token fundraise closed after one day with only 0.26% of target funding, triggering automatic refunds
confidence: proven
tags: [futarchy, metadao, fundraising, solana, failure-analysis]
created: 2025-03-04
---

## Claim

The i.rich platform's fundraise through MetaDAO's conditional token mechanism raised only $255 of its $100,000 target (0.26%) before closing and refunding contributors after approximately one day.

## Evidence

**On-chain Data**:
- Fundraise target: $100,000 USDC
- Amount committed: $255 USDC
- Funding ratio: 0.26%
- Duration: ~1 day before closure
- Outcome: Automatic refund triggered due to failure to meet minimum threshold
- Date: March 2026

**Source**: MetaDAO proposal records and on-chain transaction data from the conditional token contract

## Interpretation

The rapid closure (1 day) with minimal funding (0.26%) suggests active market rejection rather than insufficient participation. The speed indicates market participants evaluated the proposal and chose not to fund it, which is different from a slow fundraise that fails to reach critical mass.

This data point demonstrates futarchy's conditional market mechanism functioning as designed: the market aggregated information about the project's expected value and rejected it efficiently. The low funding percentage and quick timeline suggest:

1. Market participants reviewed the pitch and found it uncompelling
2. The conditional market actively rejected the proposal rather than merely failing to attract attention
3. The mechanism successfully prevented capital allocation to a project the market deemed unlikely to succeed

## Challenges / Limitations

- **Attribution Ambiguity**: The data shows market rejection but cannot isolate whether this was due to:
  - Weak product-market fit for i.rich specifically
  - Poor pitch deck quality or presentation
  - General skepticism of the link-in-bio + Blinks model
  - Broader market conditions affecting risk appetite
  - Low liquidity in MetaDAO's fundraising mechanism

- **Sample Size**: Single data point from one fundraise attempt

- **Mechanism Maturity**: MetaDAO's conditional token fundraising was relatively new, so low participation could reflect unfamiliarity with the mechanism rather than project quality assessment

## Related Claims

- [[metadao-uses-conditional-tokens-for-fundraising-decisions]]
- [[futarchy-adoption-faces-friction-from-complexity-of-conditional-market-mechanisms]]
- [[irich-combines-link-in-bio-with-solana-blinks-and-dex-referrals-to-monetize-social-traffic-through-embedded-transactions]]

## Metadata

- **Source**: MetaDAO on-chain records, March 2026
- **Confidence**: Proven (verifiable on-chain data)
- **Date**: 2026-03-04