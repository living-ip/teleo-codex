---
type: entity
entity_type: decision_market
name: "MetaDAO: Develop Multi-Option Proposals?"
domain: internet-finance
status: failed
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "agrippa"
proposal_url: "https://www.futard.io/proposal/J7dWFgSSuMg3BNZBAKYp3AD5D2yuaaLUmyKqvxBZgHht"
proposal_date: 2024-02-20
resolution_date: 2024-02-25
category: "mechanism"
summary: "Proposal to develop multi-modal proposal functionality allowing multiple mutually-exclusive outcomes beyond binary pass/fail, compensated at 200 META across four milestones"
tracked_by: rio
created: 2026-03-11
---

# MetaDAO: Develop Multi-Option Proposals?

## Summary
Proposal by agrippa to build multi-modal proposal functionality for MetaDAO, enabling decisions with N mutually-exclusive outcomes rather than just pass/fail. The feature would allow futarchic selection among alternatives (e.g., choosing contest winners from multiple applicants). Compensation requested: 200 META distributed across four development milestones, evaluated by a 5-member multisig.

## Market Data
- **Outcome:** Failed
- **Proposer:** agrippa (99dZcXhrYgEmHeMKAb9ezPaBqgMdg1RjCGSfHa7BeQEX)
- **Proposal Account:** J7dWFgSSuMg3BNZBAKYp3AD5D2yuaaLUmyKqvxBZgHht
- **Created:** 2024-02-20
- **Completed:** 2024-02-25

## Significance
This proposal represents a significant architectural expansion of MetaDAO's futarchy implementation. Multi-option proposals address a fundamental limitation: binary pass/fail cannot handle selection among alternatives, which is required for many governance decisions (hiring, grants, strategic choices). The proposer estimated this would add 12.1% value to MetaDAO by exponentially increasing decision-making bandwidth and providing a mechanism to reduce pork-barrel spending through mandatory draft stages where alternatives can be proposed.

The proposal failed despite strong technical rationale, suggesting either market skepticism about the value proposition, concerns about the proposer's ability to deliver, or insufficient liquidity/participation in the decision market.

## Technical Approach
The proposal outlined a from-scratch multi-modal conditional vault program with no hard limits on number of outcomes, requiring deep Solana/Anchor expertise. Four milestones: (1) immediate payment on passage, (2) conditional vault completion, (3) futarch integration, (4) frontend implementation. A 5-member multisig (Proph3t, DeanMachine, 0xNallok, LegalizeOnionFutures, sapphire) would evaluate milestone completion.

## Relationship to KB
- [[metadao]] - governance mechanism expansion
- [[futarchy-implementations-must-simplify-theoretical-mechanisms-for-production-adoption-because-original-designs-include-impractical-elements-that-academics-tolerate-but-users-reject]] - demonstrates specific simplification need
- [[MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window]] - architectural evolution