---
type: entity
entity_type: decision_market
name: "MetaDAO: Approve Performance-Based Compensation for Proph3t and Nallok"
domain: internet-finance
status: passed
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
parent_entity: "[[metadao]]"
platform: "futardio"
proposer: "Proph3t & Nallok"
proposal_url: "https://www.futard.io/proposal/BgHv9GutbnsXZLZQHqPL8BbGWwtcaRDWx82aeRMNmJbG"
proposal_date: 2024-05-27
resolution_date: 2024-05-31
category: hiring
summary: "Convex payout: 2% supply per $1B market cap increase (max 10% at $5B), $90K/yr salary each, 4-year vest starting April 2028"
tags: ["futarchy", "compensation", "founder-incentives", "mechanism-design"]
---

# MetaDAO: Approve Performance-Based Compensation for Proph3t and Nallok

## Summary
The founders proposed a convex performance-based compensation package: 2% of token supply per $1 billion market cap increase, capped at 10% (1,975 META each) at $5B. Fixed salary of $90K/year each. Four-year cliff — no tokens unlock before April 2028 regardless of milestones. DAO can claw back all tokens until December 2024. The $1B market cap benchmark was defined as $42,198 per META (allowing for 20% dilution post-proposal).

The proposal included explicit utility calculations using expected value theory: Nallok requires $361M success payout to rationally stay (20% success probability estimate), Proph3t requires $562M (10% success probability). This drove the 10% allocation at $5B market cap (~$500M payout each).

## Market Data
- **Outcome:** Passed (2024-05-31)
- **Autocrat version:** 0.3
- **Key participants:** Proph3t (architect/mechanism designer), Nallok (operations manager)

## Significance
This is the first real-world example of futarchy-governed founder compensation. The mechanism design is sophisticated: convex payouts align incentives with exponential growth, the 4-year cliff signals long-term commitment, and the clawback provision creates accountability.

The explicit utility calculation in the proposal is remarkable — founders openly modeled their reservation wages, success probabilities, and effort costs, then derived the compensation that makes maximum effort rational. Proph3t estimated only 10% success probability, making his required payout higher than Nallok's despite both receiving equal allocation. This transparency is the opposite of typical startup compensation negotiations.

The proposal also honestly acknowledges centralization: "If Nallok and I walk away, probability of success drops by at least 50%." Futarchy governed the compensation decision, but the organization remained founder-dependent — the market approved this rather than pretending otherwise.

## Relationship to KB
- [[metadao]] — founder compensation structure
- [[performance-unlocked-team-tokens-with-price-multiple-triggers-and-twap-settlement-create-long-term-alignment-without-initial-dilution]] — direct implementation of this mechanism
- [[token economics replacing management fees and carried interest creates natural meritocracy in investment governance]] — performance-based rather than fixed allocation
- [[time-based token vesting is hedgeable making standard lockups meaningless as alignment mechanisms because investors can short-sell to neutralize lockup exposure while appearing locked]] — this proposal uses milestone vesting instead of time-based, partially addressing the hedging problem

---

Relevant Entities:
- [[metadao]] — parent organization
- [[proph3t]] — compensated founder
- [[nallok]] — compensated founder

Topics:
- [[internet finance and decision markets]]
