---
type: entity
entity_type: decision_market
name: "Solomon: Futardio Launch"
domain: internet-finance
status: passed
parent_entity: "[[solomon]]"
platform: "futardio"
proposal_url: "https://www.futard.io/launch/634r63NH2qbTrSVyLieC3Ab3YKaEfoGnCLM8idZMEycE"
proposal_date: 2025-11-14
resolution_date: 2025-11-18
category: "fundraise"
summary: "Solomon raised $8M through futarchy-governed ICO after receiving $102.9M in commitments"
key_metrics:
  funding_target: "$2,000,000"
  total_committed: "$102,932,673.08"
  final_raise: "$8,000,000"
  oversubscription_ratio: 51.5
  token_allocation:
    metadao_liquidity: "20% of gross"
    solomon_treasury: "80% of gross"
tracked_by: rio
created: 2026-03-11
---

# Solomon: Futardio Launch

## Summary

Solomon launched a futarchy-governed fundraise on Futardio seeking $2M to bootstrap their composable stablecoin system (USDv). The raise was massively oversubscribed at 51.5x with $102.9M in commitments, ultimately closing at $8M final raise. The structure allocated 20% of gross to MetaDAO for token liquidity seeding and 80% to Solomon DAO treasury.

## Market Data

- **Outcome:** Passed (closed at $8M)
- **Funding Target:** $2M minimum, $5-8M ideal
- **Total Committed:** $102.9M
- **Final Raise:** $8M
- **Oversubscription:** 51.5x
- **Token:** SOLO (`SoLo9oxzLDpcq1dpqAgMwgce5WqkRDtNXK7EPnbmeta`)
- **Platform:** Futardio v0.6
- **Launch Date:** 2025-11-14
- **Close Date:** 2025-11-18

## Product Context

Solomon builds USDv, a composable dollar stablecoin that maintains $1 peg without rebasing, enabling yield generation through:
- **USDv:** Base composable dollar for integrations (DEXs, perps, money markets)
- **sUSDv:** Staking variant that accrues yield from basis trading (long spot, short perp) and T-bills
- **YaaS (Yield-as-a-Service):** Permissioned yield stream for treasuries/protocols that can't stake

The system addresses $150B+ of idle stablecoin capital across chains that earns no yield due to composability constraints of existing yield-bearing stablecoins.

## Capital Deployment Plan

1. Put treasury to work immediately (~16% APR generation)
2. Fund liquidity mining to accelerate TVL growth
3. Seed deeper USDv/USDC liquidity
4. Reduce custody and exchange fees through scale

## Operational Track Record

- Ran closed beta for one year with seven-figure TVL
- Handled multiple market shocks including October 10th Binance price dislocation with zero incidents
- Custody segregated with Ceffu (insurance coverage)
- Solana programs audited, admin operations via Squads multisig

## Significance

This launch demonstrates:
1. **Oversubscription management:** Futardio handled 51.5x oversubscription, taking $8M vs $2M minimum while leaving "real unmet demand after the raise closes"
2. **Stablecoin infrastructure fundraising:** First major stablecoin protocol to raise via futarchy-governed ICO
3. **Market validation:** $102.9M in commitments signals strong market demand for composable yield-bearing stablecoins

## Relationship to KB

- [[solomon]] — parent entity
- [[futardio]] — launch platform
- [[metadao]] — receives 20% of gross for liquidity seeding
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — mechanism used
- [[internet capital markets compress fundraising from months to days because permissionless raises eliminate gatekeepers while futarchy replaces due diligence bottlenecks with real-time market pricing]] — demonstrates compression (4 days)
