---
type: entity
entity_type: decision_market
name: "IslandDAO: Treasury Proposal (Dean's List Proposal)"
domain: internet-finance
status: passed
parent_entity: "[[deans-list]]"
platform: "futardio"
proposer: "futard.io"
proposal_url: "https://www.futard.io/proposal/8SwPfzKhaZ2SQfgfJYfeVRTXALZs2qyFj7kX1dEkd29h"
proposal_date: 2024-10-10
resolution_date: 2024-10-14
category: "treasury"
summary: "Establish treasury reserve funded by 2.5% of USDC payments with risk-scored asset allocation and quarterly performance reviews"
tracked_by: rio
created: 2026-03-11
key_metrics:
  reserve_funding: "2.5% of all USDC payments"
  portfolio_split: "80% safe assets (RS >= 0.5), 20% risky assets (RS <= 0.5)"
  performance_fee: "5% of quarterly profit, 3-month vesting"
  twap_requirement: "3% increase (523k to 539k USDC MCAP)"
  target_dean_price: "0.005383 USDC (from 0.005227)"
---

# IslandDAO: Treasury Proposal (Dean's List Proposal)

## Summary
Proposal to establish a treasury reserve for Dean's List DAO funded by allocating 2.5% of all USDC payments received. Treasury managed by Kai (@DeFi_Kai) with quarterly performance reviews and community oversight. Funds held in Mango Delegate Account via Realms with risk-scored asset allocation framework (80/20 safe/risky split).

## Market Data
- **Outcome:** Passed
- **Proposer:** futard.io
- **Proposal Account:** 8SwPfzKhaZ2SQfgfJYfeVRTXALZs2qyFj7kX1dEkd29h
- **DAO Account:** 9TKh2yav4WpSNkFV2cLybrWZETBWZBkQ6WB6qV9Nt9dJ
- **Autocrat Version:** 0.3
- **Created:** 2024-10-10
- **Completed:** 2024-10-14

## Mechanism Design

### Risk Scoring Framework
Assets evaluated using weighted risk score (Rs) formula:
- Volatility Weight: 0.4
- Liquidity Risk Weight: 0.2
- Market Cap Risk Weight: 0.3
- Drawdown Risk Weight: 0.1

Assets with RS >= 0.5 classified as safe, RS <= 0.5 as risky. Portfolio maintains 80/20 safe/risky allocation.

### Governance Structure
- Treasury Manager: Kai (@DeFi_Kai)
- Quarterly performance reviews required
- Community input on asset diversification
- Performance fee: 5% of quarterly profit with 3-month vesting

### Asset Whitelisting Process
New assets must:
1. Increase overall returns
2. Offer diversification when required
3. Replace similar asset with lower risk score

Weight assessed to achieve highest safe returns.

## Deliverables (First Quarter)
1. Define "rainy day" scenarios with community
2. Produce treasury reports covering:
   - Treasury growth metrics
   - Asset allocation and diversification
   - Expected return calculations
   - Sharpe Ratio for risk-adjusted performance
   - Maximum drawdown analysis
   - Actual vs expected returns
   - Risk management summary

## Significance
First futarchy-governed treasury management proposal with formalized risk scoring framework. Demonstrates evolution from simple pass/fail decisions to complex financial governance with quantitative risk assessment and performance accountability.

## Relationship to KB
- [[deans-list]] - parent organization
- [[futardio]] - governance platform
- [[metadao]] - futarchy infrastructure provider

Topics:
- [[domains/internet-finance/_map]]