---
description: Applying the Howey test to futarchy-governed investment vehicles — the two-step separation of raise from deployment, combined with market-based decision-making, structurally undermines the securities classification that depends on investor passivity
type: analysis
domain: livingip
created: 2026-03-05
confidence: experimental
source: "Living Capital thesis development + Seedplex regulatory analysis, March 2026"
---

# Living Capital vehicles likely fail the Howey test for securities classification because the structural separation of capital raise from investment decision eliminates the efforts of others prong

The Howey test requires four elements for a security: (1) investment of money, (2) in a common enterprise, (3) with an expectation of profit, (4) derived from the efforts of others. Living Capital vehicles structurally undermine prongs 3 and 4.

## The slush fund framing

When someone buys a vehicle token through a futarchy-governed ICO, they get a pro-rata share of a capital pool. $1 in = $1 of pooled capital. The pool hasn't done anything. There is no promise of returns, no investment thesis baked into the purchase, no expectation of profit inherent in the transaction. It is conceptually a deposit into a collectively-governed treasury.

Profit only arises IF the pool subsequently approves an investment through futarchy, and IF that investment performs. But those decisions haven't been made at the time of purchase. The buyer is not "investing in" an investment — they are joining a pool that will collectively decide what to do with itself.

## Two levers of decentralization

The "efforts of others" prong fails for Living Capital because both the analysis and the decision are decentralized through two distinct mechanisms.

**The agent decentralizes analysis.** In a traditional fund, a GP and their analysts source and evaluate deals. That's concentrated effort — the promoter's effort. In Living Capital, the AI agent does this work, but the agent's intelligence is itself a collective product. Since [[agents must reach critical mass of contributor signal before raising capital because premature fundraising without domain depth undermines the collective intelligence model]], the agent's knowledge base is built by contributors, domain experts, and community engagement. The agent sources deals and evaluates opportunities, but it does so using collective intelligence, not a single promoter's thesis. You are investing in the agent — a new type of entity whose analytical capability is decentralized by construction.

**Futarchy decentralizes the decision.** The agent proposes. The market decides. Every token holder participates in that decision through conditional token pricing (by trading conditional tokens, or by holding through the decision period, which is itself a revealed preference). No promoter, no GP, no third party makes the investment decision. The market does. The investor IS part of that market.

Traditional fund: concentrated analysis (GP) + concentrated decision (GP) = efforts of others → security. Living Capital: decentralized analysis (agent/collective) + decentralized decision (futarchy) = no concentrated effort from any "other."

Since [[futarchy-based fundraising creates regulatory separation because there are no beneficial owners and investment decisions emerge from market forces not centralized control]], the two-step structure (raise first, propose second) means no one "raised money into an investment." Capital was raised into a pool. The pool's own governance mechanism then decided to deploy capital. Those are structurally distinct events with different participants and different mechanisms.

The proposer doesn't make the decision. They propose terms. The market evaluates those terms through conditional token pricing. If the pass token's TWAP exceeds the fail token's TWAP over the decision period, the proposal executes. If it doesn't, the proposal fails and capital stays in the pool. Since [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]], this isn't a vote where whales dominate — it's a market where anyone can express conviction through trading.

## Investment club precedent

SEC No-Action Letters (Maxine Harry, Sharp Investment Club, University of San Diego) consistently hold that investment clubs where members actively participate in management decisions are not offering securities. The key factors:

1. Members actively participate in investment decisions
2. No single manager controls outcomes
3. Members have genuine ability to influence decisions

Futarchy satisfies all three, arguably more strongly than traditional investment clubs:
- Every token holder makes an implicit decision during every proposal (hold pass tokens = approve, sell pass tokens = reject)
- No single entity has disproportionate control — conditional token markets aggregate all participants
- The mechanism provides genuine active participation, not just a vote button

## The strongest counterarguments

**"The agent IS the promoter."** The SEC could argue that LivingIP built the agent, the agent sources deals, therefore LivingIP's efforts drive profits. The counter: the agent's intelligence is a collective product (built by contributors, not LivingIP alone), and the agent proposes but does not decide. The agent is more like an analyst publishing research than a GP making allocation decisions. Analysts inform markets. Markets decide. The separation of analysis from decision is the key structural feature.

**"Retail buyers are functionally passive."** The SEC could argue ordinary buyers rely on the agent's analysis and active traders' market-making, making "active participation" nominal. The counter: choosing not to actively trade conditional tokens is itself a governance decision. Holding your pass tokens through the decision period reveals a preference to approve the proposal at current terms. The STRUCTURE provides genuine participation mechanisms. That some participants choose not to use them doesn't transform the structure into a passive investment — just as investment club members who miss meetings remain active investors because the structure gives them the right and mechanism to participate.

**"Marketing materials promise returns."** If the essay or pitch materials say "market-beating returns," that creates an expectation of profit. The counter: expectation of profit alone isn't sufficient — it must be derived from the efforts of OTHERS. Every stock buyer expects profit. The question is whether the profit depends on a promoter's concentrated effort, and here both levers (agent analysis + futarchy decision) are decentralized.

## How this compares to Seedplex's approach

Seedplex (Marshall Islands Series DAO LLC) uses a bifurcated token model — Venture Tokens (tradable, no rights) separate from Membership Tokens (rights-bearing, require onboarding and governance participation). This adds explicit bifurcation between market access and governance rights.

Living Capital could adopt elements of this approach — particularly the structural requirement for governance participation before full membership rights activate. But futarchy already provides a stronger decentralization argument than Seedplex's member voting, because the decision mechanism is a market rather than a vote that can be dominated by large holders.

## What this means practically

The thesis is that Living Capital vehicles are NOT securities because:
1. The capital raise creates a pool, not an investment — no expectation of profit at point of purchase
2. Investment decisions are made by the market (futarchy), not by a promoter — the "efforts of others" prong fails
3. Every token holder has genuine active participation in governance decisions
4. The structural separation of raise from deployment means no one "raised money into" a specific investment

This is a legal hypothesis, not established law. Since [[DAO legal structures are converging on a two-layer architecture with a base-layer DAO-specific entity for governance and modular operational wrappers for jurisdiction-specific activities]], the legal infrastructure is maturing but untested for this specific use case. The honest framing: this structure materially reduces securities classification risk, but cannot guarantee it. The strongest available position — not certainty.

---

Relevant Notes:
- [[futarchy-based fundraising creates regulatory separation because there are no beneficial owners and investment decisions emerge from market forces not centralized control]] — the foundational regulatory separation argument
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — the specific mechanism that decentralizes decision-making
- [[agents must reach critical mass of contributor signal before raising capital because premature fundraising without domain depth undermines the collective intelligence model]] — why the agent is a collective product, not a promoter's effort
- [[DAO legal structures are converging on a two-layer architecture with a base-layer DAO-specific entity for governance and modular operational wrappers for jurisdiction-specific activities]] — the evolving legal infrastructure
- [[two legal paths through MetaDAO create a governance binding spectrum from commercially reasonable efforts to legally binding and determinative]] — how binding the futarchy governance is under different legal structures
- [[STAMP replaces SAFE plus token warrant by adding futarchy-governed treasury spending allowances that prevent the extraction problem that killed legacy ICOs]] — the investment instrument designed for this structure

Topics:
- [[living capital]]
- [[internet finance and decision markets]]
- [[LivingIP architecture]]
