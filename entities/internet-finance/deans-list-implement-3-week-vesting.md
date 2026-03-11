---
type: entity
entity_type: decision_market
name: "IslandDAO: Implement 3-Week Vesting for DAO Payments"
domain: internet-finance
status: passed
parent_entity: "[[deans-list]]"
platform: "futardio"
proposer: "proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2"
proposal_url: "https://www.futard.io/proposal/C2Up9wYYJM1A94fgJz17e3Xsr8jft2qYMwrR6s4ckaKK"
proposal_date: 2024-12-16
resolution_date: 2024-12-19
category: "treasury"
summary: "Linear 3-week vesting for all DAO payments to reduce sell pressure from 80% immediate liquidation to 33% weekly rate"
key_metrics:
  weekly_payments: "3,000 USDC"
  previous_sell_rate: "80% (2,400 USDC/week)"
  post_vesting_sell_rate: "33% (1,000 USDC/week)"
  sell_pressure_reduction: "58%"
  projected_valuation_increase: "15%-25%"
  pass_threshold_mcap: "533,500 USDC"
  baseline_mcap: "518,000 USDC"
tracked_by: rio
created: 2026-03-11
---

# IslandDAO: Implement 3-Week Vesting for DAO Payments

## Summary
Proposal to implement linear 3-week vesting for all DAO payments (rewards, compensation) via token streaming contracts. Aimed to reduce immediate sell pressure from 80% of payments being liquidated weekly (2,400 USDC of 3,000 USDC) to 33% weekly rate (1,000 USDC), a 58% reduction. Projected 15%-25% valuation increase through combined sell pressure reduction (10%-15% price impact) and improved market sentiment (5%-10% demand growth).

## Market Data
- **Outcome:** Passed
- **Proposer:** proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2
- **Resolution:** 2024-12-19
- **Pass Threshold:** 533,500 USDC MCAP (baseline 518,000 + 3%)

## Mechanism Details
- **Vesting Schedule:** Linear unvesting starting day 1 over 3 weeks
- **Implementation:** Token streaming contract
- **Target:** All DAO payments (rewards, compensation)
- **Rationale:** Discourage market manipulation, support price growth, align recipient incentives

## Significance
Demonstrates futarchy-governed treasury operations addressing sell pressure dynamics. The proposal included sophisticated market impact modeling: 80% immediate liquidation rate, weekly payment flows (3,000 USDC), sell pressure as percentage of market cap (0.81% reduction over 3 weeks), and price elasticity estimates (1%-2% supply reduction → 10%-20% price increase). Shows how DAOs use vesting as tokenomic stabilization rather than just alignment mechanism.

## Relationship to KB
- [[deans-list]] - treasury governance decision
- [[time-based-token-vesting-is-hedgeable-making-standard-lockups-meaningless-as-alignment-mechanisms-because-investors-can-short-sell-to-neutralize-lockup-exposure-while-appearing-locked]] - vesting as sell pressure management
- [[futarchy-adoption-faces-friction-from-token-price-psychology-proposal-complexity-and-liquidity-requirements]] - proposal complexity example
