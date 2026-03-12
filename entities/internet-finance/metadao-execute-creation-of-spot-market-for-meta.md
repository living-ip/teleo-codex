---
type: entity
entity_type: decision_market
name: "MetaDAO: Execute Creation of Spot Market for META?"
domain: internet-finance
status: passed
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "UuGEwN9aeh676ufphbavfssWVxH7BJCqacq1RYhco8e"
proposal_url: "https://www.futard.io/proposal/HyA2h16uPQBFjezKf77wThNGsEoesUjeQf9rFvfAy4tF"
proposal_date: 2024-02-05
resolution_date: 2024-02-10
category: "treasury"
summary: "Authorized 4,130 META transfer to 4/6 multisig to execute spot market creation through participant sale and liquidity pool establishment"
key_metrics:
  meta_allocated: "4,130 META"
  sale_allocation: "3,100 META"
  lp_allocation: "1,000 META"
  usdc_paired: "35,000 USDC"
  initial_price: "35 USDC/META"
  multisig_compensation: "30 META (5 per member)"
  target_raise: "75,000 USDC"
tracked_by: rio
created: 2026-03-11
---

# MetaDAO: Execute Creation of Spot Market for META?

## Summary
This proposal authorized the transfer of 4,130 META tokens to a 4/6 multisig to execute the creation of a spot market for META tokens. The execution plan involved coordinating a private sale to raise 75,000 USDC, then using 1,000 META paired with 35,000 USDC to create a liquidity pool on Meteora, setting an initial spot price of 35 USDC per META.

## Market Data
- **Outcome:** Passed
- **Proposer:** UuGEwN9aeh676ufphbavfssWVxH7BJCqacq1RYhco8e
- **Proposal Number:** 5
- **Completed:** 2024-02-10
- **Autocrat Version:** 0.1

## Execution Structure
The proposal established a 4/6 multisig containing Proph3t, Dean, Nallok, Durden, Rar3, and BlockchainFixesThis to execute a multi-step process:

1. Collect demand through Google form
2. Proph3t determines allocations
3. Participants transfer USDC (Feb 5-7 deadline)
4. Backfill unmet demand from waitlist (Feb 8)
5. Multisig distributes META to participants, creates LP, and disbands (Feb 9)

Token allocation breakdown:
- 3,100 META to sale participants
- 1,000 META paired with 35,000 USDC for liquidity pool
- 30 META as multisig member compensation (5 META each)

## Significance
This proposal demonstrates the operational scaffolding required for futarchy-governed treasury operations. The proposal explicitly acknowledged "no algorithmic guarantee" of execution, instead relying on reputational incentives: "it's unlikely that 4 or more of the multisig members would be willing to tarnish their reputation in order to do something different."

The execution model shows futarchy DAOs using human-operated multisigs with social enforcement for operational tasks even when the governance decision itself is market-determined. This represents a pragmatic hybrid between algorithmic governance and traditional operational execution.

## Relationship to KB
- [[metadao]] - parent entity, treasury operation
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] - governance mechanism
- [[futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance]] - operational pattern
- [[meteora]] - liquidity pool platform