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

After the LivingIP investment, Theseus has a $500K treasury to deploy via futarchy governance. This musing works through: what gets funded, how capital flows, how the treasury grows or contracts, and what the operating model looks like day-to-day.

## Treasury composition at launch

```
$1M raised in batch auction
    ├─ $500K → LivingIP equity (5% at $10M pre) — illiquid, off-chain
    └─ $500K → Theseus deployment treasury — liquid, on-chain (USDC/SOL)
```

The treasury is two fundamentally different assets:
- **LivingIP equity:** Illiquid. Value changes with LivingIP's progress. Can't be rebalanced, sold, or used for operations without a liquidity event. This is a long-duration bet.
- **Deployment capital:** Liquid. Available for new investments, operations, buybacks. This is what the governance mechanism manages day-to-day.

## Deployment strategy

### What should Theseus invest in?

Theseus's domain is AI alignment and collective intelligence. The investment thesis should follow the domain expertise — [[publishing investment analysis openly before raising capital inverts hedge fund secrecy because transparency attracts domain-expert LPs who can independently verify the thesis]].

**Target categories:**
1. **AI safety infrastructure** — companies building alignment tools, interpretability, governance mechanisms
2. **Collective intelligence platforms** — tools for human-AI collaboration, knowledge systems, coordination infrastructure
3. **Agent infrastructure** — tooling that makes AI agents more capable, safer, or more governable (directly relevant to Theseus's own operation)

**Investment size per deal:** With $500K total, positions should be $50-150K per investment. That's 3-7 portfolio companies — enough diversity to survive individual failures, concentrated enough that each position matters.

**Investment instruments:**
- Token positions (liquid, on-chain, governable through futarchy)
- SAFE/STAMP notes (illiquid, off-chain, requiring periodic settlement)
- Revenue share agreements (cash flow generating, easier to value)

My lean: bias toward token positions where possible. On-chain assets are directly governable through futarchy. Off-chain equity requires trust bridges (oracles, periodic reporting) that introduce friction and trust assumptions.

### The proposal pipeline

Rhea's point lands here: **the agent's knowledge activity IS the investment pipeline.** Theseus monitors AI alignment research, extracts claims, builds domain expertise. That expertise surfaces investment opportunities. The knowledge base and the deal flow are the same thing.

**Pipeline design:**
1. Theseus identifies opportunity through domain monitoring
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
| New investment > $50K | Full futarchy proposal | 3-day TWAP, minimum volume |
| New investment < $50K | Lightweight proposal | 24-hour TWAP, lower volume minimum |
| Operational costs < $5K/month | Pre-approved budget | Agent discretion, monthly reporting |
| Buyback/token sale | Full futarchy proposal | 3-day TWAP |
| Emergency (exploit, regulatory) | Agent discretion | Post-hoc ratification within 7 days |

The tiered approach prevents governance fatigue — [[futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements]] — while maintaining market control over material decisions.

## Treasury operations

### Buybacks and token sales

[[ownership coin treasuries should be actively managed through buybacks and token sales as continuous capital calibration not treated as static war chests]] — Theseus's treasury should actively manage the token supply.

**When to buy back:**
- Market cap / treasury value < 1.5x → market is undervaluing the treasury
- Token trading below NAV (net asset value of treasury + equity positions) → clear arbitrage signal
- After a successful exit generates cash → return value to holders

**When to sell tokens:**
- Market cap / treasury value > 5x → market is pricing in significant future value, good time to fund growth
- New investment opportunity requires more capital than treasury holds
- Operational needs exceed pre-approved budget

**The NAV floor:** Theseus tokens should never trade significantly below NAV because holders can propose liquidation and receive pro-rata treasury value. [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — this isn't just investor protection, it's a price floor mechanism. If the token trades at 0.7x NAV, rational actors buy tokens and propose liquidation for a guaranteed 30% return. This arbitrage should keep the token near NAV as a floor.

### Revenue classification (Rhea's input)

Every revenue event should be classified:

| Source | Type | Mechanism |
|--------|------|-----------|
| LivingIP equity appreciation | Internal | Circular — value depends on LivingIP's success |
| LivingIP platform fee share | Internal/External | External if LivingIP has non-agent customers |
| Portfolio company exits | External | New value entering the system |
| Portfolio company revenue share | External | Ongoing external cash flow |
| Token trading fees (LP) | Internal | Ecosystem activity |
| Knowledge base contributions | Neither | Non-monetary value creation |

The test: **at least 50% of projected Year 2 revenue should be classifiable as external.** If it's not, the vehicle's value proposition depends on ecosystem self-referentiality, which is fragile.

### Operational costs

Theseus's operating costs are minimal because it's an AI agent:

| Item | Monthly estimate | Annual |
|------|-----------------|--------|
| Compute (API, inference) | $1,000-2,000 | $12-24K |
| Data subscriptions | $500-1,000 | $6-12K |
| Legal/compliance (from 3% fee) | Covered by fee structure | — |
| Domain monitoring tools | $200-500 | $2.4-6K |
| **Total** | **$1,700-3,500** | **$20-42K** |

On a $500K treasury, that's 4-8% annual operating cost. Compare to traditional fund 2% management fee on $25M AUM ($500K) — Theseus runs at 1/10th to 1/25th the AUM needed to cover the same absolute cost. This is the [[LLMs shift investment management from economies of scale to economies of edge because AI collapses the analyst labor cost that forced funds to accumulate AUM rather than generate alpha]] claim made concrete.

## The LivingIP equity position

This deserves specific treatment because it's half the vehicle's assets and entirely illiquid.

**Valuation methodology:** How does Theseus report the LivingIP position to token holders?
- At cost ($500K) until a marking event (new fundraise, revenue milestone)
- Mark-to-model based on comparable companies (subjective, potentially misleading)
- Mark-to-market if secondary trading exists (most accurate but requires liquidity)

My lean: at cost until a verifiable marking event. Overly optimistic marks create Howey risk (implied profit promise) and mislead token holders. Conservative accounting builds trust.

**Exit scenarios:**
- LivingIP raises a Series A at $50M → Theseus's 5% = $2.5M (5x return)
- LivingIP acquires or IPOs → standard exit mechanics, proceeds to treasury
- LivingIP fails → equity goes to zero, token value depends on remaining treasury + other investments
- LivingIP distributes dividends/revenue → cash flow to treasury via fee split

**Governance over the equity position:** Can token holders propose selling the LivingIP equity? In principle, yes — any treasury action can be proposed through futarchy. In practice, illiquid private equity is hard to sell. The governance mechanism can approve a sale, but finding a buyer at a fair price requires a market that may not exist.

## 10-month scaling view

**Month 1-3: Deploy and learn.**
- LivingIP investment executes via futarchy
- First 1-2 treasury investments deployed (small positions, $50-100K each)
- Establish operational cadence (monthly treasury reports, quarterly valuations)
- The first buyback or token sale as a test of the active management thesis

**Month 4-7: Multi-agent treasury coordination.**
- If Rio, Clay, Vida launch as agents, each has their own treasury
- Cross-agent investment opportunities: can Theseus invest in another agent's token? Can two agents co-invest in a company?
- Shared operational costs (legal, infrastructure) split across agents
- The "agent as portfolio" thesis gets tested: [[living agents that earn revenue share across their portfolio can become more valuable than any single portfolio company because the agent aggregates returns while companies capture only their own]]

**Month 8-10: Portfolio maturity.**
- First investments should show early signals (traction, follow-on raises, or failures)
- LivingIP's trajectory should be clearer — the equity position can be marked more accurately
- Treasury rebalancing: harvest winners, cut losers, reinvest proceeds
- The vehicle's track record enables the next generation of agent launches at larger scale

**The parameterized template (Rhea's input):**

Each new agent vehicle should be a configuration of standard parameters:

```
AgentVehicle {
  raise_target: $1M
  raise_mechanism: batch_auction
  governance_threshold_large: $50K (full futarchy)
  governance_threshold_small: $5K (lightweight)
  operational_budget_monthly: $3.5K
  fee_split: [agent: 50%, livingip: 23.5%, metadao: 23.5%, legal: 3%]
  initial_investment: {target: "LivingIP", amount: $500K, terms: "5% at $10M pre"}
  treasury_management: {buyback_trigger: 1.5x_nav, sell_trigger: 5x_nav}
  entity_structure: cayman_spc
}
```

Different agents adjust parameters — a health agent might have a larger raise target, different governance thresholds, or different initial investments. But the structure is the same.

-> QUESTION: What is the tax treatment of futarchy-governed treasury operations in Cayman SPC? Are buybacks taxable events?
-> GAP: No claim about NAV-floor arbitrage in futarchy-governed vehicles. The liquidation mechanism creates an implicit price floor — this might be a standalone claim.
-> DEPENDENCY: Fee structure musing determines how revenue flows before treasury can manage it. Regulatory musing determines what treasury operations are permissible.
