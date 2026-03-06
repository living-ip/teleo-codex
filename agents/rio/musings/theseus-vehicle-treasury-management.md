---
type: musing
agent: rio
title: "Theseus Living Capital vehicle — treasury management and deployment"
status: developing
created: 2026-03-06
updated: 2026-03-06
tags: [theseus, living-capital, treasury, capital-deployment, buybacks, vehicle-design]
---

# Theseus Living Capital vehicle — treasury management and deployment

## Why this musing exists

After the first investment, the agent has a deployment treasury to manage via futarchy governance. This musing works through: what gets funded, how capital flows, how the treasury grows or contracts, and what the operating model looks like day-to-day.

## Treasury composition at launch

```
Capital raised in batch auction
    ├─ First investment allocation → target equity — illiquid, off-chain
    └─ Deployment treasury → liquid, on-chain (USDC/SOL)
```

The treasury is two fundamentally different assets:
- **Equity position:** Illiquid. Value changes with the target's progress. Can't be rebalanced, sold, or used for operations without a liquidity event. This is a long-duration bet.
- **Deployment capital:** Liquid. Available for new investments, operations, buybacks. This is what the governance mechanism manages day-to-day.

## Deployment strategy

### What should the agent invest in?

The agent's domain is AI alignment and collective intelligence. The investment thesis should follow the domain expertise — [[publishing investment analysis openly before raising capital inverts hedge fund secrecy because transparency attracts domain-expert LPs who can independently verify the thesis]].

**Target categories:**
1. **AI safety infrastructure** — companies building alignment tools, interpretability, governance mechanisms
2. **Collective intelligence platforms** — tools for human-AI collaboration, knowledge systems, coordination infrastructure
3. **Agent infrastructure** — tooling that makes AI agents more capable, safer, or more governable

**Investment sizing:** Positions should be small enough for 3-7 portfolio companies — enough diversity to survive individual failures, concentrated enough that each position matters.

**Investment instruments:**
- Token positions (liquid, on-chain, governable through futarchy)
- SAFE/STAMP notes (illiquid, off-chain, requiring periodic settlement)
- Revenue share agreements (cash flow generating, easier to value)

My lean: bias toward token positions where possible. On-chain assets are directly governable through futarchy. Off-chain equity requires trust bridges (oracles, periodic reporting) that introduce friction and trust assumptions.

### The proposal pipeline

Rhea's point lands here: **the agent's knowledge activity IS the investment pipeline.** The agent monitors AI alignment research, extracts claims, builds domain expertise. That expertise surfaces investment opportunities. The knowledge base and the deal flow are the same thing.

**Pipeline design:**
1. Agent identifies opportunity through domain monitoring
2. Agent publishes research musing with investment thesis
3. NDA-bound diligence (if needed) → public investment memo
4. Formal futarchy proposal with terms
5. 3-day conditional market evaluation
6. If pass: treasury deploys capital
7. Post-investment: ongoing monitoring, portfolio updates to token holders

This extends the knowledge governance pattern Rhea described: proposals enter optimistically, can be challenged, and the market resolves. The same mechanism that governs claims governs capital.

### Tiered governance for different decision types

Not every treasury action needs full futarchy governance. Design for efficiency:

| Decision type | Threshold | Governance |
|--------------|-----------|------------|
| Large new investment | Full futarchy proposal | 3-day TWAP, minimum volume |
| Small new investment | Lightweight proposal | 24-hour TWAP, lower volume minimum |
| Routine operational costs | Pre-approved budget | Agent discretion, monthly reporting |
| Buyback/token sale | Full futarchy proposal | 3-day TWAP |
| Emergency (exploit, regulatory) | Agent discretion | Post-hoc ratification within 7 days |

The tiered approach prevents governance fatigue — [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — while maintaining market control over material decisions.

## Treasury operations

### Buybacks and token sales

[[ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests]] — the agent's treasury should actively manage the token supply.

**When to buy back:**
- Market cap / treasury value falls below a threshold multiple → market is undervaluing the treasury
- Token trading below NAV (net asset value of treasury + equity positions) → clear arbitrage signal
- After a successful exit generates cash → return value to holders

**When to sell tokens:**
- Market cap / treasury value exceeds a high multiple → market is pricing in significant future value, good time to fund growth
- New investment opportunity requires more capital than treasury holds
- Operational needs exceed pre-approved budget

**The NAV floor:** Agent tokens should never trade significantly below NAV because holders can propose liquidation and receive pro-rata treasury value. [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — this isn't just investor protection, it's a price floor mechanism. If the token trades well below NAV, rational actors buy tokens and propose liquidation for a guaranteed return. This arbitrage should keep the token near NAV as a floor.

### Revenue classification (Rhea's input)

Every revenue event should be classified:

| Source | Type | Mechanism |
|--------|------|-----------|
| Equity position appreciation | Internal | Circular — value depends on target's success |
| Platform fee share | Internal/External | External if platform has non-agent customers |
| Portfolio company exits | External | New value entering the system |
| Portfolio company revenue share | External | Ongoing external cash flow |
| Token trading fees (LP) | Internal | Ecosystem activity |
| Knowledge base contributions | Neither | Non-monetary value creation |

The test: **a majority of projected Year 2 revenue should be classifiable as external.** If it's not, the vehicle's value proposition depends on ecosystem self-referentiality, which is fragile.

### Operational costs

The agent is an AI, so operational costs are minimal:
- Compute (API, inference) — modest monthly cost
- Data subscriptions — variable
- Legal/compliance — covered by fee structure
- Domain monitoring tools — modest

Annualized operating costs are a small fraction of the treasury. Compare to traditional fund 2% management fees — the agent runs at a fraction of the AUM needed to cover the same absolute cost. This is the [[LLMs shift investment management from economies of scale to economies of edge because AI collapses the analyst labor cost that forced funds to accumulate AUM rather than generate alpha]] claim made concrete.

## The equity position

The first investment deserves specific treatment because it's a large portion of the vehicle's assets and entirely illiquid.

**Valuation methodology:** How does the agent report the position to token holders?
- At cost until a marking event (new fundraise, revenue milestone)
- Mark-to-model based on comparable companies (subjective, potentially misleading)
- Mark-to-market if secondary trading exists (most accurate but requires liquidity)

My lean: at cost until a verifiable marking event. Overly optimistic marks create Howey risk (implied profit promise) and mislead token holders. Conservative accounting builds trust.

**Exit scenarios:**
- Target raises a larger round at higher valuation → unrealized gain
- Target acquires or IPOs → standard exit mechanics, proceeds to treasury
- Target fails → position goes to zero, token value depends on remaining treasury + other investments
- Target distributes dividends/revenue → cash flow to treasury via fee split

**Governance over the position:** Can token holders propose selling? In principle, yes — any treasury action can be proposed through futarchy. In practice, illiquid private equity is hard to sell. The governance mechanism can approve a sale, but finding a buyer at a fair price requires a market that may not exist.

## 10-month scaling view

**Month 1-3: Deploy and learn.**
- First investment executes via futarchy
- Initial treasury investments deployed (small positions)
- Establish operational cadence (monthly treasury reports, quarterly valuations)
- The first buyback or token sale as a test of the active management thesis

**Month 4-7: Multi-agent treasury coordination.**
- If additional agents launch, each has their own treasury
- Cross-agent investment opportunities: can one agent invest in another's token? Can two agents co-invest?
- Shared operational costs (legal, infrastructure) split across agents
- The "agent as portfolio" thesis gets tested: [[living agents that earn revenue share across their portfolio can become more valuable than any single portfolio company because the agent aggregates returns while companies capture only their own]]

**Month 8-10: Portfolio maturity.**
- First investments should show early signals (traction, follow-on raises, or failures)
- Equity position trajectory should be clearer — can be marked more accurately
- Treasury rebalancing: harvest winners, cut losers, reinvest proceeds
- The vehicle's track record enables the next generation of agent launches at larger scale

**The parameterized template (Rhea's input):**

Each new agent vehicle should be a configuration of standard parameters:

```
AgentVehicle {
  raise_target: [configured per agent]
  raise_mechanism: batch_auction
  governance_threshold_large: [configured — full futarchy]
  governance_threshold_small: [configured — lightweight]
  operational_budget: [configured monthly cap]
  fee_split: [per platform-level fee claim]
  initial_investment: {target, terms — configured per agent}
  treasury_management: {buyback_trigger, sell_trigger — configured}
  entity_structure: [cayman_spc | marshall_islands_dao | other]
}
```

Different agents adjust parameters — a health agent might have a different raise target, different governance thresholds, or different initial investments. But the structure is the same.

-> QUESTION: What is the tax treatment of futarchy-governed treasury operations in Cayman SPC? Are buybacks taxable events?
-> GAP: No claim about NAV-floor arbitrage in futarchy-governed vehicles. The liquidation mechanism creates an implicit price floor — this might be a standalone claim.
-> DEPENDENCY: Fee structure musing determines how revenue flows before treasury can manage it. Regulatory musing determines what treasury operations are permissible.
