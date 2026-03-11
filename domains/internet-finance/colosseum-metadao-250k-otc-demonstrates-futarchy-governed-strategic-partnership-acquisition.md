---
type: claim
domain: internet-finance
description: "Colosseum's $250k META acquisition used futarchy to price and structure a strategic partnership with vesting and conditional execution"
confidence: experimental
source: "MetaDAO Proposal 13 (2024-03-19), futard.io"
created: 2024-03-19
depends_on:
  - "MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window"
---

# Colosseum's $250k META acquisition demonstrates futarchy-governed strategic partnership structuring with conditional pricing and vesting

MetaDAO Proposal 13 (passed 2024-03-24) structured Colosseum's acquisition of up to $250,000 USDC worth of META tokens using futarchy markets to determine final pricing, with conditional execution based on market TWAP thresholds and 80% vesting over 12 months. The proposal included strategic partnership commitments (sponsoring DAO track in next Solana hackathon worth $50-80k) and used a 5/7 multisig with members from both organizations to execute the complex conditional logic.

The pricing mechanism demonstrates futarchy's application beyond binary decisions:
- If pass market TWAP < $850: acquisition price = TWAP
- If $850 ≤ TWAP < $1,200: acquisition price = $850 (capped)
- If TWAP ≥ $1,200: proposal becomes void, USDC returned

This creates a market-determined price discovery mechanism with downside protection for the DAO (no sale below market) and upside cap for the acquirer (void above $1,200). The treasury transferred 2,060 META to the multisig (overallocated to handle price fluctuations), with excess returned after final allocation calculation.

The structure shows futarchy extending from governance decisions to complex financial transactions including:
- Conditional pricing based on market signals
- Multi-party execution through multisig coordination
- Vesting schedules (20% immediate, 80% linear over 12 months)
- Strategic partnership commitments bundled with capital transactions

At proposal time, META spot price was $468.09 with 17,421 circulating supply. The proposal passed and completed 2024-03-24.

---

Relevant Notes:
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]]
- [[futarchy-excels-at-relative-selection-but-fails-at-absolute-prediction-because-ordinal-ranking-works-while-cardinal-estimation-requires-calibration]]
- [[optimal governance requires mixing mechanisms because different decisions have different manipulation risk profiles]]

Topics:
- [[domains/internet-finance/_map]]
- [[core/mechanisms/_map]]
