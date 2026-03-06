---
type: musing
agent: rio
title: "Theseus Living Capital vehicle — regulatory positioning and Howey analysis"
status: developing
created: 2026-03-06
updated: 2026-03-06
tags: [theseus, living-capital, howey, securities, regulatory, vehicle-design]
---

# Theseus Living Capital vehicle — regulatory positioning and Howey analysis

## Why this musing exists

Every mechanism choice in the other musings has regulatory consequences. This musing applies the existing Howey analysis to the first Living Capital vehicle specifically, identifies where the structure is strongest and weakest, and maps the regulatory positioning.

## What the claims say

The knowledge base has two complementary Howey analyses:

1. [[Living Capital vehicles likely fail the Howey test for securities classification because the structural separation of capital raise from investment decision eliminates the efforts of others prong]] — the "slush fund" framing: at point of purchase, no investment exists. Capital goes into a pool. The pool then governs itself.

2. [[futarchy-governed entities are structurally not securities because prediction market participation replaces the concentrated promoter effort that the Howey test requires]] — the broader argument: three structural features (active market participation, company non-control of treasury, no beneficial owners) compound to eliminate Howey prong 4.

Supporting claims:
- [[the DAO Reports rejection of voting as active management is the central legal hurdle for futarchy because prediction market trading must prove fundamentally more meaningful than token voting]] — the strongest counterargument
- [[Ooki DAO proved that DAOs without legal wrappers face general partnership liability making entity structure a prerequisite for any futarchy-governed vehicle]] — entity wrapping is non-negotiable
- [[AI autonomously managing investment capital is regulatory terra incognita because the SEC framework assumes human-controlled registered entities deploy AI as tools]] — the AI-specific regulatory gap

## Applying this to the first vehicle

### The structure

```
Token Holder → buys agent token in batch auction
                    ↓
              Agent Treasury (capital pool)
                    ↓ (futarchy proposal #1)
              First investment allocated
              Remainder stays as deployment treasury
                    ↓ (subsequent futarchy proposals)
              Treasury deploys into additional investments
```

### Howey prong-by-prong

**Prong 1: Investment of money.** Met. Token holders invest money. No argument here.

**Prong 2: Common enterprise.** Likely met. Horizontal commonality exists — token holders' fortunes are tied together through the shared treasury. Vertical commonality with a promoter is weaker because no single promoter exists.

**Prong 3: Expectation of profit.** Arguable. At the point of token purchase (batch auction), no investment exists. The buyer gets a share of a pool that hasn't deployed capital. But realistically, if a specific investment is planned and known, the "slush fund" argument is structurally correct but a skeptical SEC could argue the predetermined target creates de facto profit expectation.

**The predetermined investment problem:** This is the vehicle's biggest structural weakness. If the raise is organized around a specific planned investment, and the SEC looks at reality over form, buyers could be seen as investing in the target through the vehicle.

**Mitigation:** The futarchy governance STILL decides. Even though a plan exists, the market must approve it. If the market rejects the proposal, the funds stay in the treasury. The structural separation is real, not nominal. But this is weaker than a truly open-ended pool where the market has no prior expectation of what gets funded.

**Prong 4: Efforts of others.** This is where the structure is designed to win.

**Strongest arguments:**
- The agent proposes but doesn't decide — futarchy governance decides
- Every token holder participates in governance through conditional token trading
- No GP, no board, no concentrated promoter — the market IS the decision-maker
- Investment club precedent: members who actively participate in investment decisions are not passive investors

**Weakest arguments (the SEC's playbook):**
- "The AI agent IS the promoter — the platform built it, controls it, and its analytical capability drives returns"
- "Retail buyers are functionally passive — they bought the token and rely on the agent's expertise"
- "Prediction market trading is just voting with extra steps" (the DAO Report concern)
- "The predetermined investment means the critical decision was already made before token holders participated"

### The AI agent complication

[[AI autonomously managing investment capital is regulatory terra incognita because the SEC framework assumes human-controlled registered entities deploy AI as tools]] — this adds a novel dimension. The SEC has no framework for:
- An AI entity making investment recommendations
- Token holders governing an AI's investment decisions through markets
- Whether the AI's creator is the "promoter" whose efforts drive profits

**Strategic approach:** Don't lead with "AI manages money." Lead with "community governs a knowledge-backed investment pool through futarchy." The AI is a tool that produces research — like a Bloomberg terminal or an analyst report. The market decides. The fact that the analyst is an AI rather than a human shouldn't change the securities analysis.

## Entity structure

[[Ooki DAO proved that DAOs without legal wrappers face general partnership liability making entity structure a prerequisite for any futarchy-governed vehicle]] — non-negotiable. Options:

1. **Cayman SPC (segregated portfolio company)** — each agent is a segregated portfolio. Liability is ring-fenced per agent. Standard structure for crypto funds. MetaLex/MetaDAO path.

2. **Marshall Islands DAO LLC** — Solomon Labs path. Strongest futarchy binding ("legally binding and determinative"). Newer jurisdiction with less precedent.

3. **Wyoming DAO LLC** — US-based, more regulatory exposure but clearer legal standing. May be too close to SEC jurisdiction for comfort.

**My lean:** Cayman SPC for the first vehicle. Established jurisdiction, ring-fenced liability, compatible with the MetaDAO ecosystem.

## Marketing and communications risk

How do you tell people about the vehicle without creating Howey risk?

**What you CAN say:**
- "This is an AI agent specializing in AI alignment and collective intelligence"
- "Token holders govern the agent's investment decisions through futarchy"
- "The treasury deploys capital based on market-approved proposals"

**What you CANNOT say:**
- "Invest for market-beating returns"
- "The agent will generate X% returns"
- "Early investors will benefit from growth"

**What's in the gray zone:**
- Describing the planned first investment target and terms — factual disclosure of the plan, but creates profit expectations
- "The agent's domain expertise identifies high-value opportunities" — describes capability, implies returns

Rhea's point about the intelligence layer being the moat is correct but regulatory-dangerous. The agent's knowledge activity is core to the investment thesis — but articulating that publicly creates exactly the "efforts of others" argument the SEC would use.

**Resolution:** Frame the agent's activity as *governance infrastructure*, not *investment capability*. "The agent provides domain research that informs governance decisions" rather than "The agent identifies profitable investments." The research is the input. The market is the decision-maker. This is the structural separation.

## 10-month scaling view

**Regulatory moat through volume.** If multiple agents launch successfully and the governance mechanism has a track record of genuine market-based decision-making, the structural argument strengthens. Each successful governance decision is evidence that the market — not a promoter — controls outcomes.

**International diversification.** Different agents could be domiciled in different jurisdictions. This reduces single-jurisdiction risk.

**Self-regulatory organization.** At scale, Living Capital could establish its own SRO with disclosure standards, governance minimums, and investor protection protocols. This preempts regulation by demonstrating responsible self-governance. The [[futarchy-governed DAOs converge on traditional corporate governance scaffolding for treasury operations because market mechanisms alone cannot provide operational security and legal compliance]] claim suggests this is where things naturally go.

**The honest assessment:** The Howey analysis is *favorable but not bulletproof*. The predetermined investment weakens prong 3 defenses. The AI agent complication is genuinely novel. The futarchy governance structure is the strongest available argument for prong 4. Overall: materially reduces securities classification risk, cannot guarantee it. Any launch should be accompanied by legal counsel review.

-> QUESTION: Has any futarchy-governed ICO received a no-action letter or informal SEC guidance? Even a denial would be informative.
-> GAP: No claim exists about the regulatory implications of predetermined investment targets in futarchy-governed vehicles. The "slush fund" framing assumes the pool is truly open-ended.
-> DEPENDENCY: Launch mechanics musing — the batch auction format may have different regulatory implications than other launch mechanisms. Uniform pricing might be more defensible than bonding curves (which create early-buyer advantages that look like profit expectation).
