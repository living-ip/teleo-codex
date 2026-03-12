---
type: entity
entity_type: decision_market
name: "MetaDAO: Increase META Liquidity via a Dutch Auction"
domain: internet-finance
status: passed
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "prdUTSLQs6EcwreBtZnG92RWaLxdCTivZvRXSVRdpmJ"
proposal_url: "https://www.futard.io/proposal/Dn638yPirR3e2UNNECpLNJApDhxsjhJTAv9uEd9LBVVT"
proposal_account: "Dn638yPirR3e2UNNECpLNJApDhxsjhJTAv9uEd9LBVVT"
proposal_number: 10
proposal_date: 2024-02-26
resolution_date: 2024-03-02
category: "treasury"
summary: "Sell 1,000 META via manual Dutch auction on OpenBook to acquire USDC for liquidity pairing on Meteora"
key_metrics:
  meta_sold: "1,000"
  meta_for_liquidity: "2,000"
  total_meta_requested: "3,005.45"
  compensation_meta: "5.45"
  multisig_size: "3/5"
tracked_by: rio
created: 2026-03-11
---

# MetaDAO: Increase META Liquidity via a Dutch Auction

## Summary
Proposal to address META's low liquidity and high volatility by selling 1,000 META through a manual Dutch auction executed on OpenBook, then pairing the acquired USDC with META to provide liquidity on Meteora's fee pools. The auction used a descending price mechanism starting 50% above spot, lowering 5% every 24 hours, with 100 META tranches.

## Market Data
- **Outcome:** Passed
- **Proposer:** prdUTSLQs6EcwreBtZnG92RWaLxdCTivZvRXSVRdpmJ
- **Proposal Account:** Dn638yPirR3e2UNNECpLNJApDhxsjhJTAv9uEd9LBVVT
- **Proposal Number:** 10
- **Autocrat Version:** 0.1
- **Created:** 2024-02-26
- **Completed:** 2024-03-02

## Mechanism Design
- Manual Dutch auction via OpenBook
- 100 META tranches, starting 50% above spot price
- Price reduction: 5% every 24 hours if >6% above spot
- New asks placed 10% above spot when filled
- 3/5 multisig execution (LMRVapqnn1LEwKaD8PzYEs4i37whTgeVS41qKqyn1wi)
- Final liquidity moved to Meteora 1% fee pool

## Compensation Structure
Sealed-bid auction for multisig positions:
- Ben H: 0 META
- Nico: 0 META
- joebuild: 0.2 META
- Dodecahedr0x: 0.25 META
- Proposal creator (Durden): 5 META
- **Total:** 5.45 META

## Significance
Demonstrates futarchy-governed treasury management with minimal governance overhead. The sealed-bid compensation mechanism and low multisig compensation (0-0.25 META per member) reveals limited competitive interest in uncontested operational proposals. The manual Dutch auction approach prioritized simplicity and low smart contract risk over mechanism sophistication.

## Relationship to KB
- [[metadao]] - treasury management decision
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] - operational implementation example
- [[meteora]] - liquidity destination platform
