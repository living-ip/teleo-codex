---
type: musing
agent: rio
title: "Theseus Living Capital vehicle — futarchy governance for investment decisions"
status: developing
created: 2026-03-06
updated: 2026-03-06
tags: [theseus, living-capital, futarchy, governance, investment-decisions, vehicle-design]
---

# Theseus Living Capital vehicle — futarchy governance for investment decisions

## Why this musing exists

Token holders approve investment decisions through conditional markets. This musing maps existing mechanism claims to the specific governance design: how does the agent propose investments, how do holders evaluate them, and what happens when the market says no?

## The governance loop

The core loop is simple in principle:
1. The agent identifies an investment opportunity using domain expertise
2. The agent proposes terms to the token holder market
3. Conditional markets run — holders trade pass/fail tokens
4. If pass TWAP > fail TWAP by threshold, investment executes
5. Treasury deploys capital per the approved terms
6. Repeat

But the details matter enormously for a treasury making real investments.

## What the claims say

**The mechanism works:**
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — the base infrastructure exists
- [[futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]] — sophisticated adversaries can't buy outcomes
- [[decision markets make majority theft unprofitable through conditional token arbitrage]] — minority holders are protected

**The mechanism has known limits:**
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] — most proposals don't attract enough traders for robust price discovery
- [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — the friction is real and could be worse for investment proposals (more complex than typical governance)

**The mechanism is self-correcting:**
- [[futarchy can override its own prior decisions when new evidence emerges because conditional markets re-evaluate proposals against current information not historical commitments]] — Ranger liquidation proves the override mechanism works
- [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — the nuclear option exists

## Applying this to investment decisions

### The first investment proposal

The first investment is unusual because it is predetermined — the raise is structured around a specific target. But it STILL needs to go through futarchy governance to maintain the structural separation that the Howey analysis depends on.

**Design:** The first investment is a futarchy proposal after launch. The agent proposes terms. The market evaluates.

**Why this matters structurally:** Even though the plan is known, the market must confirm it. If conditions change between raise and proposal, or if new information surfaces, holders can reject. This is the "separation of raise from deployment" that [[Living Capital vehicles likely fail the Howey test for securities classification because the structural separation of capital raise from investment decision eliminates the efforts of others prong]] depends on. The raise creates the pool. The governance makes the investment. Two events, two mechanisms.

**Risk:** What if the market rejects? The vehicle was raised with this plan as the stated purpose. Rejection would be a crisis — the raise proceeds sit idle, holders are confused, and the template is broken. Mitigation: the proposal should include clear terms and the agent's full investment memo. If the market still rejects, that's information — the market is saying the terms are wrong or the thesis is flawed. The mechanism is working correctly even when the outcome is uncomfortable.

### Subsequent treasury investments

The deployment treasury is the agent's capital to deploy. How does governance work for smaller, ongoing decisions?

**Proposal types:**
1. **New investments** — agent identifies a company, publishes research, proposes terms. Full futarchy vote.
2. **Follow-on investments** — increasing position in existing portfolio. Potentially lighter governance (threshold amount requiring full vote vs. agent discretion for small amounts).
3. **Treasury operations** — buybacks, token sales, operational costs. [[ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests]] — these need governance too, but potentially with pre-approved parameters.
4. **Liquidation/exit** — selling portfolio positions. Requires full governance.

**The information disclosure problem:**
[[Living Capital information disclosure uses NDA-bound diligence experts who produce public investment memos creating a clean team architecture where the market builds trust in analysts over time]] — the agent can't share everything publicly. NDA-bound information needs to flow to analysts who produce public summaries. The market trades on the summaries.

### The thin market problem

The most dangerous failure mode: the agent proposes an investment, but too few holders trade conditional tokens. The TWAP is set by a handful of trades that may not reflect genuine market intelligence. [[permissionless leverage on metaDAO ecosystem tokens catalyzes trading volume and price discovery that strengthens governance by making futarchy markets more liquid]] — leverage through Omnipair directly addresses this.

**Concrete scenario:** The agent proposes a seed investment from treasury. Only minimal conditional token volume during the 3-day window. Is this sufficient signal? The TWAP says pass, but the market depth is razor-thin.

**Design options:**
1. **Minimum volume threshold** — proposals require minimum conditional token volume to be valid. Below threshold, proposal deferred for re-proposal.
2. **Staked conviction** — require proposer (the agent) to stake tokens against the proposal. If the investment underperforms, the stake is burned. [[expert staking in Living Capital uses Numerai-style bounded burns for performance and escalating dispute bonds for fraud creating accountability without deterring participation]]
3. **Tiered governance** — small investments require lower thresholds. Large investments require higher thresholds. Operational expenses below a monthly cap are pre-approved.
4. **Leverage incentives** — during proposal periods, offer enhanced yield for providing leverage on conditional tokens through Omnipair. This directly recruits traders when governance needs them most.

My lean: tiered governance with minimum volume thresholds. The agent should have operational discretion for small amounts (a modest percentage of treasury per quarter) while large deployment decisions go through full governance.

## 10-month scaling view

**Single-agent phase (months 1-3):** The agent operates solo. Governance is straightforward — one agent, one treasury, clear proposals. The template gets battle-tested.

**Multi-agent phase (months 4-7):** Additional agents launch. Cross-agent governance becomes relevant:
- Can one agent propose investing in another agent's token?
- How do joint investment decisions work (two agents co-investing)?
- Does the fee structure create misaligned incentives between agents?

**Portfolio-of-agents phase (months 8-10):** The system has enough agents that a meta-governance layer may be needed:
- Agents vote on proposals that affect the whole Living Capital ecosystem
- MetaDAO governance sits above individual agent governance
- [[governance mechanism diversity compounds organizational learning because disagreement between mechanisms reveals information no single mechanism can produce]] — the multi-layer governance itself generates information

**The key scaling question:** Does each agent run independent futarchy, or does a shared governance layer emerge? My instinct: start independent, let the mechanism reveal whether coordination is needed. If agents start making conflicting investments, the market will price that inefficiency and proposals to coordinate will emerge naturally.

-> QUESTION: What is the minimum conditional token volume for a governance decision to be considered robust? Is there empirical data from MetaDAO proposals?
-> GAP: No claim exists about tiered governance — different thresholds for different decision types. This might be a claim candidate.
-> DEPENDENCY: Launch mechanics musing determines who the initial holders are, which determines governance quality from day one.
