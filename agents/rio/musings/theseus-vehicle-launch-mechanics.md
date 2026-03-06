---
type: musing
agent: rio
title: "Theseus Living Capital vehicle — token launch mechanics"
status: developing
created: 2026-03-06
updated: 2026-03-06
tags: [theseus, living-capital, launch-mechanics, price-discovery, token-launch, vehicle-design]
---

# Theseus Living Capital vehicle — token launch mechanics

## Why this musing exists

Leo tasked me with structuring Theseus as Living Capital's first investment agent. This musing answers: how does Theseus raise $1M through a token launch? Which mechanism, what architecture, what parameters? Everything in my launch mechanics musing converges here on a specific case.

## The constraints

Theseus's raise has specific properties that narrow the design space:

1. **$1M target** — small by traditional standards, large for a futard.io launch. Most MetaDAO ecosystem launches have been sub-$1M.
2. **Predetermined use of funds** — $500K goes to LivingIP equity, $500K stays as treasury. This is unusual: most token launches don't have a predetermined investment target at raise time.
3. **The token IS governance** — holders govern Theseus's investment decisions via futarchy. This isn't a memecoin or utility token. Governance quality depends on holder quality.
4. **First Living Capital vehicle** — sets the template. Whatever works (or fails) here defines expectations for every subsequent agent launch.

## What the claims say about mechanism selection

**Against static bonding curves (pump.fun model):**
- [[dutch-auction dynamic bonding curves solve the token launch pricing problem by combining descending price discovery with ascending supply curves eliminating the instantaneous arbitrage that has cost token deployers over 100 million dollars on Ethereum]] — even Doppler exists because bonding curves are exploitable
- Bot dominance means the first holders are extractors, not governance participants. For a vehicle where holder quality IS governance quality, this is fatal.

**Against pure dutch auction (Doppler model):**
- True believers — people who actually know Theseus's domain (AI alignment, collective intelligence) — would pay the highest prices. The mechanism penalizes exactly the holders you want.
- Cory's direction: we're not aligned with Doppler. Think critically.

**For futarchy-gated launch (futard.io model):**
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — this is the native platform
- [[futarchy-governed liquidation is the enforcement mechanism that makes unruggable ICOs credible because investors can force full treasury return when teams materially misrepresent]] — investor protection is built in
- Governance participants self-select for quality — you have to understand what you're trading to trade conditional markets effectively

**For batch auction pricing:**
- [[early-conviction pricing is an unsolved mechanism design problem because systems that reward early believers attract extractive speculators while systems that prevent speculation penalize genuine supporters]] — batch auctions sidestep this by giving everyone the same price
- Uniform clearing means no bot advantage, no true-believer penalty
- The $1M target can be structured as a minimum raise with a clearing price

## My current design for Theseus's launch

**Phase 1: Futarchy quality gate (futard.io)**
- Theseus proposes the launch through MetaDAO governance
- Conditional markets evaluate: does launching this agent increase META value?
- This filters quality — the market decides whether Theseus is worth launching
- Duration: standard 3-day TWAP window

**Phase 2: Batch auction for pricing**
- After governance approves, a batch auction runs for a fixed period (48-72 hours)
- Participants submit bids (amount + max price) — sealed or open TBD
- At close, uniform clearing price is calculated. Everyone pays the same price.
- Minimum raise: $1M. If bids total less, auction fails and funds return.
- Maximum raise: could cap at $2M to prevent over-dilution. Or uncapped with a price floor.

**Phase 3: Immediate liquidity provision**
- A portion of raised funds (10-15%) seeds an AMM pool at the clearing price
- This creates instant post-launch liquidity without a bonding curve
- The remaining funds split per the predetermined allocation ($500K LivingIP, remainder to treasury)

**Phase 4: Community alignment layer (post-launch)**
- Retroactive rewards for batch auction participants who hold through the first governance decision
- Governance participation bonuses — additional token allocation for trading in the first futarchy proposal
- [[the fanchise engagement ladder from content to co-ownership is a domain-general pattern for converting passive users into active stakeholders that applies beyond entertainment to investment communities and knowledge collectives]] — the airdrop IS the first rung

## Open questions specific to Theseus

**Predetermined investment problem.** If everyone knows $500K goes to LivingIP at $10M pre-money, the token's value is partially determined at launch. Buyers are effectively buying: (a) 5% of LivingIP through the vehicle, (b) exposure to future futarchy-governed investments from the $500K treasury, (c) governance rights over the agent. How does this affect price discovery? The batch auction may clear at something close to the LivingIP equity value divided by token supply, plus a premium for (b) and (c).

**Who participates?** The ideal batch auction participants are:
- AI alignment researchers who value Theseus's domain expertise
- MetaDAO ecosystem participants who understand futarchy governance
- LivingIP community members who want exposure to the platform
- Institutional or sophisticated individual investors who want the first Living Capital vehicle

**How do you reach these people without marketing materials that create Howey risk?** (See regulatory musing.)

**Template implications.** If this works, does every Living Capital agent launch follow the same 4-phase structure? Or does the mechanism need to flex based on the agent's domain, raise size, and community?

## 10-month scaling view

If Theseus launches successfully, the template needs to handle:
- Multiple simultaneous agent launches (Rio, Clay, Vida as investment agents)
- Variable raise sizes ($500K to $10M+)
- Cross-agent liquidity (can you LP agent tokens against each other?)
- Automated launch infrastructure (the 4-phase pipeline as a smart contract template)
- Reputation bootstrapping — later agents benefit from the track record established by earlier ones

The batch auction + futarchy gate combination could become a standard "Living Capital Launch Protocol" — a reusable infrastructure piece that any agent can plug into. This is where the [[internet capital markets compress fundraising from months to days because permissionless raises eliminate gatekeepers while futarchy replaces due diligence bottlenecks with real-time market pricing]] claim becomes operationally real.

-> QUESTION: What is futard.io's actual pricing mechanism after governance approval? Does the 4-phase design require building new infrastructure or can it run on existing rails?
-> GAP: No data on batch auction implementations on Solana. Need to research whether CowSwap-style batch clearing exists in the Solana ecosystem.
-> DEPENDENCY: Regulatory musing must confirm that batch auction + futarchy gate doesn't create new Howey risk beyond what's already analyzed.
