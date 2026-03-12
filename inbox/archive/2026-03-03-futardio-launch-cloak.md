---
type: source
title: "Futardio: Cloak fundraise goes live"
author: "futard.io"
url: "https://www.futard.io/launch/9MqyiXXJUAXQ1Uy5j2EV8hq21UeR3ruukWkZ1XGNhg3R"
date: 2026-03-03
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana]
event_type: launch
processed_by: rio
processed_date: 2026-03-11
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Source is a failed Futardio fundraise for Cloak privacy DCA protocol. Extracted 5 entity files: Cloak company, Cloak fundraise decision_market, Privacy.cash integration, Oro RWA integration, and Futardio timeline update. No novel claims extracted - the source is primarily factual launch data and company pitch material. The 0.49% commitment rate is a significant data point but represents a single case, insufficient for broader claims about privacy infrastructure or futarchy launch dynamics. Key facts preserved in source archive for future reference."
---

## Launch Details
- Project: Cloak
- Description: Cloak is the unified private layer on Solana - enabling retail and institutional traders to accumulate assets anonymously. 
- Funding target: $300,000.00
- Total committed: $1,455.00
- Status: Refunding
- Launch date: 2026-03-03
- URL: https://www.futard.io/launch/9MqyiXXJUAXQ1Uy5j2EV8hq21UeR3ruukWkZ1XGNhg3R

## Team / Description

# Cloak: Unified Private Layer on Solana

Every DCA order on Solana is a public broadcast. Cloak routes your trades through a ZK-proof privacy pool so nobody — not Arkham, not front-running bots, not copy traders — can link your wallet to your strategy.

Cloak is building private DCA infrastructure on Solana — enabling retail and institutional traders to accumulate assets without exposing their strategy on-chain.

---

## What We're Building

DCA on Solana is fully transparent by default. Your wallet address, buy amounts, frequency, and accumulated position are permanently visible to anyone with a block explorer. For retail users this is annoying. For whales and funds running $100K–$5M/month accumulation strategies, it's a 2–8% hidden tax per trade — from MEV extraction, copy trading, and surveillance tools like Arkham Intelligence and Nansen.

Cloak fixes this. Funds enter a ZK-proof privacy pool, trades execute from unlinkable session wallets via Jupiter, and the on-chain link between your wallet and your strategy is cryptographically broken. Sign once. The keeper runs your DCA automatically. Your main wallet never touches a DEX.

We're live in private beta. The protocol supports private DCA into SOL, cbBTC (Coinbase wrapped Bitcoin), and ZEC. Solana Blinks support is shipped — users can initiate private DCA orders from any Blinks-compatible interface. Invite-only access at [usecloak.xyz](https://usecloak.xyz).

---

## Use of Funds

**Raise target: $300,000**
**Monthly team allowance: $10,000 total ($5,000 per person)**

The raise covers 24 months of runway for a 2-person team, plus a front-loaded security audit and infrastructure costs.

| Category | Allocation | Amount | What It Covers |
|----------|-----------|--------|----------------|
| Team | 40% | $120,000 | Vaibhav + Prasad, $5K/month each (~12 months explicit; treasury reserve extends to 24 months) |
| Security Audit | 10% | $30,000 | Smart contract + ZK proof audit — front-loaded in months 2–3 |
| Infrastructure | 6% | $18,000 | RPC (Helius/Quicknode), hosting, Supabase, keeper bot — ~$1,500/month |
| Operations | 4% | $12,000 | Legal basics, domain, marketing, misc over 12 months |
| Treasury Reserve | 40% | $120,000 | Held in treasury for scaling, additional hires, or future audits post-revenue |

The team cannot access more than the $10,000 monthly allowance without a governance proposal. The security audit ($30K) and infrastructure ($18K) are budgeted separately and spent on schedule regardless of governance — these are non-discretionary.

Post-revenue, protocol fees cover operations and the treasury allowance redirects to scaling.

---

## Why Private DCA

Every DEX trade on Solana is permanently public. Most users don't realize what that exposes:

- **MEV extraction** — $370M–$500M extracted from Solana users via sandwich attacks over 16 months (mid-2025). DCA orders are the easiest target because their schedule is predictable.
- **Copy trading** — anyone can replicate your exact accumulation strategy in real time. You do the research; they ride your conviction.
- **Surveillance** — Arkham Intelligence tracks 800M+ addresses. Lookonchain broadcasts every $100K+ move to millions of followers. Institutions running on-chain DCA are broadcasting to their competitors.

The information leakage cost to a whale running a $500K/month DCA is estimated at $10,000–$40,000 per month in adverse price impact alone. Cloak's fee at 0.25% on that volume is $1,250. The math is obvious.

No dedicated privacy DCA product exists on any chain. The category is entirely greenfield.

---

## What We've Done So Far

Built and shipped during the Solana Cypherpunk Hackathon. Now in private beta on mainnet.

- Integrated Privacy.cash ZK-proof privacy pools on Solana — deposits are cryptographic commitments, ownership is provably hidden
- Built a keeper execution pipeline — sign once, automated DCA execution on schedule via Jupiter
- Shipped session wallet architecture — ephemeral wallets per DCA strategy, unlinkable to depositor via Arkham or Nansen clustering
- Integrated Jupiter for best-price execution across all supported assets
- Launched Solana Blinks support — private DCA orders embeddable in any Blinks-compatible interface
- Encrypted off-chain DCA configuration — schedule and amounts invisible to on-chain observers
- Beta code gating system with waitlist and invite-only access
- Live on Solana mainnet with active private beta users

## Early Wins

**First RWA Integration — Oro (gold)**

Cloak is the first protocol to offer private DCA into real-world assets on Solana. We've integrated Oro, making Cloak the private distribution layer for tokenized gold on Solana. Every DCA trade auto-accumulates gold from leftover change.

This positions Cloak beyond crypto — anyone accumulating gold on-chain now has a private, automated way to do it.

---

## Team

**Vaibhav** — Co-founder. Engineer at CoinDCX. Previously co-founded PermaSign. Superteam contributor. Early engineer at Instadapp and Push Chain. Built Cloak end-to-end: the ZK privacy pool integration, keeper execution engine, session wallet architecture, frontend, and API layer.

**Prasad** — Co-founder. Founding Engineer at Stealth. Previously co-founded PermaSign. Superteam contributor. Led the Blinks integration, institutional API routes, and backend infrastructure.

Two founders. Both repeat builders. One working product on mainnet. No overhead.

---

## Raise Details

Raise Target: $300,000
Monthly Allowance: $10,000 ($5,000 per person)
Raise Window: 24 hours on Futardio (permissionless)

Total Token Supply — 15.9M $CLOAK max (12.9M circulating at launch):

| Allocation | Tokens | Share |
|-----------|--------|-------|
| ICO tokens | 10,000,000 | 62.9% |
| Liquidity provision | 2,900,000 | 18.2% |
| Team performance package | 3,000,000 | 18.9% |

ICO price: $0.03 per token — FDV at launch: ~$477,000.

Liquidity provision breakdown:
- 2,000,000 tokens on Futarchy AMM
- 900,000 tokens on Meteora pool
- 20% of funds raised ($60,000) paired with LP tokens

If the raise does not reach $300K within 24 hours — full refunds. If the target is reached — treasury, spending limits, and liquidity deploy automatically.

**Team allocation — performance only**

3,000,000 tokens are locked at launch. Five tranches unlock at 2x, 4x, 8x, 16x, and 32x the ICO price ($0.06, $0.12, $0.24, $0.48, $0.96), with a minimum 18-month cliff before any unlock (evaluated via 3-month TWAP, not spot price).

At launch, 0 team tokens are circulating. If the token never reaches 2x ($0.06), the team receives nothing beyond the monthly allowance.

---

## Execution Plan

Monthly burn: ~$11,500 ($10K team + ~$1,500 infrastructure). 24+ months runway from the raise.

**Now (Live)**
- Private DCA into SOL, BTC, ZEC
- First RWA integration — Oro (tokenized gold). Cloak is already the private distribution layer for gold on Solana.

**Next (Q2–Q3 2026)**
- More RWA integrations beyond gold
- Expanded token support across Solana ecosystem
- Private transfers and swaps — not just DCA, but any private on-chain movement

**Vision (2026+)**
- Unified private DeFi layer across multiple chains

| Quarter | Milestones |
|---------|-----------|
| Q2 2026 (months 1–3) | Security audit complete. Public launch — remove invite gate. First whale onboarding (manual, white-glove). Additional RWA integrations beyond Oro. Target: first $1M–$5M in DCA volume processed. |
| Q3 2026 (months 4–6) | Expanded token support. Private transfers and swaps. Institutional API launch (programmatic DCA creation, webhooks, monitoring). First 5–10 whales at $50K+/month. Target: $5M–$20M monthly volume. |
| Q4 2026 (months 7–9) | Protocol fee revenue covers infrastructure costs. Confidential Balances integration. Target: $20M–$50M monthly volume — fee revenue self-sustains operations. |
| Q1 2027 (months 10–12) | Multi-chain expansion begins. Treasury allowance redirects to scaling. Target: $50M+ monthly volume, protocol approaching profitability. |

All figures are approximate and subject to change. Expenditures beyond the monthly allowance require governance approval.

---

## Long-Term Vision

Cloak starts as a DCA product. It ends as the privacy layer for all Solana execution.

The architecture we've built — ZK pools, session wallets, keeper execution, encrypted off-chain config — is reusable for any recurring on-chain action that shouldn't be public. DCA is the first application. Private TWAP orders, private limit orders, and private DAO treasury diversification follow naturally.

Every user who deposits into Cloak increases the Privacy.cash anonymity set, making every other user's privacy objectively stronger. That's a network effect that compounds with scale. Competitors launching later face a cold-start problem. We don't.

Worst case: the first and only private DCA product on Solana, used by whales who can't afford to broadcast their strategies. Best case: the privacy execution standard for all of DeFi.

---

## Links

- Website: [usecloak.xyz](https://usecloak.xyz)
- X: [@cloakdefi](https://x.com/cloakdefi)
- GitHub: [github.com/vaibhav0806/cloak-dca](https://github.com/vaibhav0806/cloak-dca)

---

## IP & Legal

*Note: Cloak is not a financial product. Tokens represent governance participation in a DAO. No revenue sharing, yields, or returns are promised or implied.*

**GitHub:** github.com/vaibhav0806/cloak-dca — maintained by the team on behalf of the DAO entity post-raise.

**Domain:** usecloak.xyz — to be managed on behalf of the DAO entity.

**Brand assets:** Cloak wordmark, icon, and brand kit — to be managed on behalf of the DAO entity.

**Social accounts:** @cloakdefi on X — managed by the team on behalf of the DAO entity post-raise.

**Deployed contracts:** Privacy.cash pool integration on Solana mainnet. Any new program deployments or token mints post-raise will be owned by the DAO entity, managed by the team.

**Infrastructure:** Supabase database, Railway hosting, keeper bot — to be managed on behalf of the DAO entity. Any infrastructure created post-raise owned by the DAO entity.

**Licenses:** Code is open source (MIT). GitHub administered by the team on behalf of the DAO entity.


## Links

- Website: https://usecloak.xyz
- Twitter: https://x.com/cloakdefi

## Raw Data

- Launch address: `9MqyiXXJUAXQ1Uy5j2EV8hq21UeR3ruukWkZ1XGNhg3R`
- Token: 8RS (8RS)
- Token mint: `8RSpKqJFeF6ipThWDXP284mE2ufmfeHwjdEjduQ2meta`
- Version: v0.7
- Closed: 2026-03-04


## Key Facts
- Cloak raised $1,455 of $300K target (0.49% commitment rate) on Futardio 2026-03-03
- Cloak team: Vaibhav (CoinDCX engineer, PermaSign co-founder) and Prasad (Stealth founding engineer, PermaSign co-founder)
- Cloak token allocation: 62.9% ICO, 18.2% liquidity, 18.9% team (performance-locked)
- Cloak team tokens unlock at 2x, 4x, 8x, 16x, 32x ICO price with 18-month minimum cliff
- Cloak integrated Privacy.cash ZK-proof pools and Jupiter DEX routing
- Cloak first protocol to offer private DCA into RWA (Oro tokenized gold)
- MEV extraction on Solana estimated at $370M-$500M over 16 months (mid-2025)
- Cloak estimated whale DCA information leakage cost at $10K-$40K/month on $500K volume
- Cloak fee structure: 0.25% on volume
