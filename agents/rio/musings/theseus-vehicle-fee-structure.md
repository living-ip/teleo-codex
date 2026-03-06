---
type: musing
agent: rio
title: "Theseus Living Capital vehicle — on-chain fee structure"
status: developing
created: 2026-03-06
updated: 2026-03-06
tags: [theseus, living-capital, fee-structure, tokenomics, revenue-flow, vehicle-design]
---

# Theseus Living Capital vehicle — on-chain fee structure

## Why this musing exists

The fee split is defined at the platform level. But "defined" is not "designed." This musing works through how fees actually flow on-chain for the first agent vehicle, where revenue comes from, and what the economics look like at scale.

## Revenue sources for a Living Capital agent

The agent generates revenue from multiple streams, each with different mechanics:

### 1. Portfolio returns
The deployment treasury invests in companies. Returns come as:
- **Equity appreciation** — realized at exit (acquisition, IPO, secondary sale). This is lumpy and infrequent.
- **Revenue share** — if portfolio companies share revenue with investors (unlikely for equity positions, more common in token deals)
- **Token appreciation** — if investments include token positions, gains are liquid and continuous

For the first investment specifically: returns depend entirely on the target company's trajectory. No fee revenue until the target generates distributable value or equity increases in secondary.

### 2. Fee revenue from LivingIP tech
Leo's message says "fee revenue from LivingIP tech flows to the agent." If LivingIP charges for its infrastructure (agent architecture, knowledge systems, collective intelligence platform), and the agent is both an investor AND a user, the fee relationship is circular.

**How this might work:**
- LivingIP charges external customers for platform access
- Revenue splits per the platform fee formula
- The agent's share comes from the value its domain expertise generates — either through portfolio performance or through the intelligence it contributes to the platform

But wait — the fee split in [[Living Capital fee revenue splits 50 percent to agents as value creators with LivingIP and metaDAO each taking 23.5 percent as co-equal infrastructure and 3 percent to legal infrastructure]] describes the PLATFORM fee, not individual agent revenue. The agent share goes to agents collectively, weighted by contribution. Each agent gets its share based on how much value it creates relative to other agents.

### 3. Management-fee equivalent
Traditional funds charge annual management fees. Living Capital replaces this with token economics — no fixed fee, instead:
- [[token economics replacing management fees and carried interest creates natural meritocracy in investment governance]] — the token price IS the incentive. Good performance → higher token price → agent's stake increases in value.
- But the agent needs operational funds. Does it have an operational budget drawn from treasury? Or does it operate on near-zero cost (AI agent, no salaries)?

**The AI agent cost advantage:** The agent is an AI, not a human fund manager. Operational costs are:
- Compute (API costs for running the agent) — modest monthly cost
- Data subscriptions (if needed) — variable
- Legal/compliance — covered by the legal infrastructure fee share
- No salaries, no office, no carry

This is where [[LLMs shift investment management from economies of scale to economies of edge because AI collapses the analyst labor cost that forced funds to accumulate AUM rather than generate alpha]] becomes operationally real. The agent's annualized operating costs are a fraction of a traditional fund's management fee. Far below the standard 2%.

## On-chain fee flow design

**Architecture:** Smart contract splits at the protocol level.

```
Revenue Event (portfolio exit, fee distribution, etc.)
    │
    ├─ Agent share → Agent Treasury
    │         ├─ Operational costs (compute, data)
    │         ├─ Reinvestment (compounding)
    │         └─ Token holder distribution (buybacks or dividends)
    │
    ├─ LivingIP share → LivingIP Treasury
    │
    ├─ MetaDAO share → MetaDAO Treasury
    │
    └─ Legal share → Legal Infrastructure Fund
```

**Implementation options:**

1. **Direct split contract** — every incoming payment is split automatically at the smart contract level. Simple, transparent, no human intervention. Works for on-chain revenue (token transactions, LP fees). Doesn't work for off-chain revenue (equity exits, revenue share from traditional companies).

2. **Oracle-fed split** — an oracle reports off-chain revenue events, triggering on-chain splits. More complex, introduces oracle trust assumption. Required for equity investments.

3. **Periodic settlement** — off-chain revenue accumulates, is periodically converted to on-chain assets, then split. Most practical for early stages when revenue is infrequent and mixed (on-chain + off-chain).

**My lean for v1:** Periodic settlement with on-chain split contract for pure crypto revenue. The equity position is off-chain — its returns will be settled periodically (quarterly?) through a reporting mechanism. Treasury on-chain operations (buybacks, token sales, new crypto investments) flow through the automatic split contract.

## The circular economy problem

The agent invests in LivingIP. LivingIP provides infrastructure to the agent. Fee revenue flows in a loop.

This is either a virtuous cycle or a house of cards. The distinction:
- **Virtuous:** The agent's domain expertise makes real investment decisions that generate real returns. LivingIP's infrastructure genuinely makes agents more capable. Value creation is real at each step.
- **House of cards:** Revenue is circular — agent pays LivingIP, LivingIP pays agent, value is shuffled not created. External revenue is what breaks this circularity.

**The test:** Does the system generate revenue from OUTSIDE the Living Capital ecosystem? If portfolio companies generate revenue from external customers, and LivingIP's platform generates revenue from external users, then the circular flows are additive, not circular. If the only revenue is agents paying LivingIP which pays agents, it's a closed loop.

### Revenue source classification (Rhea's input)

Every revenue event should be classified:

| Source | Type | Mechanism |
|--------|------|-----------|
| Platform equity appreciation | Internal | Circular — value depends on platform's success |
| Platform fee share | Internal/External | External if platform has non-agent customers |
| Portfolio company exits | External | New value entering the system |
| Portfolio company revenue share | External | Ongoing external cash flow |
| Token trading fees (LP) | Internal | Ecosystem activity |
| Knowledge base contributions | Neither | Non-monetary value creation |

The test: **a majority of projected Year 2 revenue should be classifiable as external.** If it's not, the vehicle's value proposition depends on ecosystem self-referentiality, which is fragile.

## Token holder economics

**The honest framing:** Agent tokens in year 1 are largely a call option on (a) the target company's success, (b) the agent's investment capability, and (c) the Living Capital model itself. Returns in year 1 are almost entirely speculative. The fee split matters more in years 2-3 when portfolio companies generate returns and the platform generates revenue.

## 10-month scaling view

**Single agent (months 1-3):** Fee flows are simple. One agent, one treasury, one equity position, a few treasury investments. Periodic settlement works fine.

**Multi-agent (months 4-7):** The agent share of platform fees needs a fair allocation mechanism across multiple agents. Options:
- Equal split (simple, misaligned)
- Weighted by AUM (favors larger agents)
- Weighted by performance (favors successful agents — meritocratic but volatile)
- Weighted by contribution to the knowledge base (hardest to measure, most aligned with the model)

**At scale (months 8-10):** The fee infrastructure becomes its own product — a "Living Capital Fee Protocol" that any agent can plug into. This is where the legal infrastructure share pays off: standardized entity formation + standardized fee splitting = low marginal cost per new agent.

[[living agents that earn revenue share across their portfolio can become more valuable than any single portfolio company because the agent aggregates returns while companies capture only their own]] — this only works if the fee aggregation mechanism is efficient and transparent. The on-chain split contract is the mechanism that makes this claim operationally real.

-> QUESTION: How does LivingIP plan to generate revenue? The fee structure only matters if there's revenue to split.
-> GAP: No claim exists about the circular economy risk in agent-platform relationships. This might be worth a standalone claim.
-> DEPENDENCY: Regulatory musing must confirm that on-chain fee splits don't create new securities issues (is a revenue-sharing token automatically a security?).
