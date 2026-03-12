---
type: entity
entity_type: decision_market
name: "IslandDAO: Enhancing The Dean's List DAO Economic Model"
domain: internet-finance
status: passed
parent_entity: "[[deans-list]]"
platform: "futardio"
proposer: "futard.io"
proposal_url: "https://www.futard.io/proposal/5c2XSWQ9rVPge2Umoz1yenZcAwRaQS5bC4i4w87B1WUp"
proposal_date: 2024-07-18
resolution_date: 2024-07-22
category: "treasury"
summary: "Transition from USDC payments to $DEAN token distributions funded by systematic USDC-to-DEAN buybacks"
tracked_by: rio
created: 2026-03-11
---

# IslandDAO: Enhancing The Dean's List DAO Economic Model

## Summary
The proposal restructured Dean's List DAO's payment model to create constant buy pressure on $DEAN tokens. Instead of paying citizens directly in USDC, the DAO now uses 80% of client revenue to purchase $DEAN from the market and distributes those tokens as payment. The 20% treasury tax remains in USDC to hedge against price volatility. The model projects net positive price pressure because citizens sell only ~80% of received tokens, creating 112k $DEAN net buy pressure per 2,500 USDC service cycle.

## Market Data
- **Outcome:** Passed
- **Proposer:** futard.io
- **Resolution:** 2024-07-22
- **Platform:** Futardio (MetaDAO Autocrat v0.3)

## Mechanism Details
- Service fee: 2,500 USDC per dApp review
- Treasury allocation: 20% (500 USDC) in stablecoins
- Buyback allocation: 80% (2,000 USDC) for $DEAN purchases
- Projected citizen sell-off: 80% of received tokens
- Net buy pressure: 20% of purchased tokens retained
- Projected FDV impact: 5.33% increase (from $337,074 to $355,028)
- Target: 6 dApp reviews per month (400 USDC daily buy volume)

## Significance
This proposal represents an operational treasury mechanism using futarchy governance to implement systematic token buybacks as a compensation model. Unlike simple buyback-and-burn programs, this model converts operational expenses into buy pressure while maintaining stablecoin reserves for volatility protection. The detailed financial modeling (FDV projections, volume analysis, price impact estimates) demonstrates how complex treasury decisions can navigate futarchy governance when backed by quantitative scenarios.

The 80% sell-off assumption acknowledges that DAO workers need liquid compensation, creating a hybrid model between pure equity alignment and fee-for-service payments.

## Relationship to KB
- [[deans-list]] - treasury mechanism change
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] - governance platform
- [[treasury-buyback-model-creates-constant-buy-pressure-by-converting-revenue-to-governance-token-purchases]] - mechanism claim