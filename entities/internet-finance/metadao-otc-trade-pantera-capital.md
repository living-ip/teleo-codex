---
type: entity
entity_type: decision_market
name: "MetaDAO: Engage in $50,000 OTC Trade with Pantera Capital"
domain: internet-finance
status: failed
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz"
proposal_url: "https://www.futard.io/proposal/H59VHchVsy8UVLotZLs7YaFv2FqTH5HAeXc4Y48kxieY"
proposal_date: 2024-02-18
resolution_date: 2024-02-23
category: "fundraise"
summary: "Pantera Capital proposed acquiring $50,000 USDC worth of META tokens through OTC trade with 20% immediate transfer and 80% vested over 12 months"
tracked_by: rio
created: 2026-03-11
---

# MetaDAO: Engage in $50,000 OTC Trade with Pantera Capital

## Summary
Pantera Capital proposed a $50,000 OTC purchase of META tokens from The Meta-DAO treasury, structured as 20% immediate transfer and 80% linear vesting over 12 months. The price per META was to be determined as the minimum of the average TWAP of pass/fail markets and $100. The proposal failed, indicating market rejection of the terms or strategic direction.

## Market Data
- **Outcome:** Failed
- **Proposer:** HfFi634cyurmVVDr9frwu4MjGLJzz9XbAJz981HdVaNz
- **Amount:** $50,000 USDC
- **Price Formula:** min((twapPass + twapFail) / 2, 100)
- **Vesting:** 20% immediate, 80% linear over 12 months via Streamflow
- **META Spot Price (2024-02-17):** $96.93
- **META Circulating Supply:** 14,530

## Significance
This proposal represents an early attempt at institutional capital entry into futarchy-governed DAOs through structured OTC deals. The failure is notable because it suggests either:
1. Market skepticism about the valuation terms (price cap at $100 vs spot of $96.93)
2. Concern about dilution impact on existing holders
3. Strategic disagreement with bringing institutional capital into governance

The proposal included sophisticated execution mechanics (multisig custody, TWAP-based pricing, Streamflow vesting) that became templates for later fundraising structures. The involvement of multiple community members (0xNallok, 7Layer, Proph3t) as multisig signers showed early governance scaffolding.

## Relationship to KB
- [[metadao]] - failed fundraising proposal
- [[futarchy-based fundraising creates regulatory separation because there are no beneficial owners and investment decisions emerge from market forces not centralized control]] - tested institutional OTC structure
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] - used TWAP pricing mechanism