---
type: entity
entity_type: decision_market
name: "MetaDAO: Engage in $100,000 OTC Trade with Ben Hawkins? [2]"
domain: internet-finance
status: failed
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "Ben Hawkins"
proposal_url: "https://www.futard.io/proposal/E1FJAp8saDU6Da2ccayjLBfA53qbjKRNYvu7QiMAnjQx"
proposal_date: 2024-02-18
resolution_date: 2024-02-24
category: "treasury"
summary: "Failed proposal for $100k OTC sale of up to 500 META tokens with 20/80 vesting split"
tracked_by: rio
created: 2026-03-11
---

# MetaDAO: Engage in $100,000 OTC Trade with Ben Hawkins? [2]

## Summary
Proposal 8 sought approval for Ben Hawkins to purchase up to 500 META tokens from the MetaDAO treasury for $100,000 USDC, with pricing at max(TWAP_pass, $200). The structure included 20% immediate release and 80% linear vesting over 12 months via Streamflow. The USDC would create a 50/50 AMM pool matched by the DAO. The proposal failed despite acknowledging insufficient META market liquidity.

## Market Data
- **Outcome:** Failed
- **Proposer:** Ben Hawkins (7GmjpH2hpj3A5d6f1LTjXUAy8MR8FDTvZcPY79RDRDhq)
- **Proposal Account:** E1FJAp8saDU6Da2ccayjLBfA53qbjKRNYvu7QiMAnjQx
- **Proposal Number:** 8
- **Created:** 2024-02-18
- **Resolved:** 2024-02-24
- **META Spot Price at Proposal:** $695.92 (2024-02-18 20:20 UTC)
- **Circulating Supply:** 14,530 META
- **Multisig:** FpMnruqVCxh3o2oBFZ9uSQmshiyfMqzeJ3YfNQfP9tHy (4/6 threshold)

## Significance
This proposal is notable for its failure despite explicitly addressing an acknowledged problem (insufficient META liquidity). The market rejected the solution even while the background section stated liquidity was "proving insufficient to support the demand." This demonstrates futarchy's ability to distinguish between problem recognition and solution approval—a more nuanced evaluation than simple yes/no voting.

The vesting structure (20% immediate, 80% over 12 months) attempted to balance buyer liquidity needs against DAO dilution concerns. The pricing mechanism created significant uncertainty: at $200/META the allocation would be 500 tokens, but at the spot price of $695.92 it would be only 143 tokens—a 3.5x variance in dilution impact.

The proposal required traditional governance scaffolding (6-member multisig with detailed execution instructions) despite futarchy decision-making, confirming the pattern that market mechanisms govern decisions while operational execution requires conventional structures.

## Relationship to KB
- [[metadao]] - treasury management decision
- [[futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance]]
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]]
- [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]]