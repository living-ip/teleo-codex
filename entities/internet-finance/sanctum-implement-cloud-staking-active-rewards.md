---
type: entity
entity_type: decision_market
name: "Sanctum: Should Sanctum implement CLOUD staking and active staking rewards?"
domain: internet-finance
status: passed
parent_entity: "[[sanctum]]"
platform: "futardio"
proposer: "proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2"
proposal_url: "https://www.futard.io/proposal/4BTTxsV98Rhm1qjDe2yPdXtj7j7KBSuGtVQ6rUNWjjXf"
proposal_date: 2025-02-06
resolution_date: 2025-02-09
autocrat_version: "0.3"
category: "mechanism"
summary: "Implement CLOUD staking with 30-day vesting lockup and allocate 30M CLOUD to active staking rewards for governance participation"
tracked_by: rio
created: 2026-03-11
---

# Sanctum: Should Sanctum implement CLOUD staking and active staking rewards?

## Summary

Sanctum's first governance proposal (CLOUD-1) passed on 2025-02-09, implementing two mechanisms: (1) CLOUD staking with 30-day linearly vesting lockup as the base asset for futarchy participation, designed to mitigate Keynesian beauty contest dynamics by incentivizing long-term holder participation, and (2) active staking rewards allocating 30M CLOUD (3% of total supply) over six months to participants based on (staked amount × time) × votes participated, with a 10 USDC minimum trading volume threshold per proposal.

## Market Data

- **Outcome:** Passed
- **Proposer:** proPaC9tVZEsmgDtNhx15e7nSpoojtPD3H9h4GqSqB2
- **Platform:** Futardio (Autocrat v0.3)
- **Resolution:** 2025-02-09
- **Proposal Number:** CLOUD-1 (Sanctum's first governance proposal)

## Mechanism Design

**Staking Implementation:**
- 30-day linearly vesting lockup (~3.3 CLOUD/day per 100 sCLOUD unstaked)
- Planned transition from CLOUD/USDC to sCLOUD/USDC markets (deferred initially due to user confusion)
- Designed to filter for long-term holders and reduce speculative momentum trading

**Active Staking Rewards:**
- 30M CLOUD allocation (3% of total supply)
- Two 15M tranches distributed quarterly
- Rewards formula: (staked CLOUD × time) × number of votes participated
- Minimum 10 USDC trading volume per proposal to qualify
- First distribution ~3 months after passage
- Proposal cadence: every two weeks (1 week deliberation + 3 day voting)

## Significance

This proposal represents the first major implementation of staking-gated futarchy markets on Solana, introducing two novel mechanisms to address known futarchy failure modes: beauty contest dynamics (via lockups) and low participation (via rewards). The staged rollout strategy—deferring sCLOUD markets until users are comfortable—demonstrates pragmatic adoption friction management.

The 30M CLOUD allocation (3% of supply) is substantial, indicating Sanctum's commitment to subsidizing governance participation as a public good rather than expecting pure market incentives to drive engagement.

## Relationship to KB

- [[sanctum]] — first governance decision
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — uses Autocrat v0.3
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — explicitly acknowledges and manages adoption friction
- [[staking-lockups-mitigate-keynesian-beauty-contest-in-futarchy-by-forcing-long-term-holder-participation]] — mechanism rationale
- [[active-staking-rewards-incentivize-futarchy-participation-by-compensating-governance-effort-with-token-distributions]] — mechanism rationale