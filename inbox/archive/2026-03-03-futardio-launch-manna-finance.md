---
type: source
title: "Futardio: Manna Finance fundraise goes live"
author: "futard.io"
url: "https://www.futard.io/launch/5whxoTjxW4oKeSN4C8yf5JUur7pcSChkPWgmhSZQ8oD5"
date: 2026-03-03
domain: internet-finance
format: data
status: unprocessed
tags: [futardio, metadao, futarchy, solana]
event_type: launch
---

## Launch Details
- Project: Manna Finance
- Description: Lock SOL to mint solUSD at 0% interest rate.
- Funding target: $120,000.00
- Total committed: $205.00
- Status: Refunding
- Launch date: 2026-03-03
- URL: https://www.futard.io/launch/5whxoTjxW4oKeSN4C8yf5JUur7pcSChkPWgmhSZQ8oD5

## Team / Description

# Manna — Futard.io Raise Description

> **"Borrow against your SOL. Keep the upside."**
> Manna is a zero-interest CDP protocol on Solana. Deposit SOL, mint solUSD, pay once.

---

## What We're Building

Manna is a Liquity V1-style Collateralized Debt Position (CDP) protocol on Solana. Users deposit SOL as collateral, mint **solUSD** (a decentralized stablecoin pegged to $1), and pay only a **one-time borrowing fee — no ongoing interest, ever.**

The peg is maintained by two hard mechanisms:
1. **Redemptions** — solUSD can always be exchanged for $1 of SOL, creating a hard floor.
2. **Liquidations** — vaults below the minimum collateral ratio are liquidated via the Stability Pool, where stakers earn SOL at a discount.

Governance will be launched via **MetaDAO** — full futarchy from day one. The market decides what's value-accretive.

---

## Market & Differentiation

### Target Market

| Segment | Pain Point | Manna's Answer |
|---|---|---|
| SOL holders | Want liquidity without selling | Borrow solUSD against SOL, zero interest |
| Leveraged traders | Need cheap leverage on SOL | 125% min CR = max capital efficiency |
| DeFi stablecoin users | Want a trust-minimized, decentralized USD | Non-custodial, no governance attack surface |
| Stability Pool stakers | Want yield without impermanent loss risk | Earn SOL at a discount when liquidations happen |

**Primary beachhead:** SOL holders with >10 SOL who want liquidity without triggering a taxable sell event. This is a large, underserved segment on Solana.

### Competitive Edge

| | **solUSD (Manna)** | **USX (Solstice)** | **USDv (Solomon)** | **jupUSD (Jupiter)** | **USDGO (OSL)** |
|---|---|---|---|---|---|
| **Mechanism** | CDP · overcollateralized | Delta-neutral synthetic | Yield-bearing backed | RWA-backed (BlackRock BUIDL + USDe) | Fiat-backed · regulated |
| **Backing** | SOL (native) | BTC, ETH, SOL + perp shorts, stablecoins, tokenized treasuries | On-chain dollar yield strategies | 90% USDtb (BlackRock BUIDL), 10% USDe (Ethena) | USD deposits · KYC-gated |
| **User gives up asset?** | ❌ Keep SOL exposure | ✅ Yes | ✅ Yes | ✅ Yes | ✅ Yes |
| **Ongoing Interest** | ✅ None | N/A | N/A | N/A | N/A |
| **Minting** | Permissionless (open to all) | Permissioned (institutions only) via DEX otherwise | Permissionless | Permissionless | Permissioned (KYC required) |
| **Decentralized** | ✅ Fully | ⚠️ Hybrid (custody: Copper + Ceffu) | ⚠️ Partial | ⚠️ Partial (backed by centralized instruments) | ❌ No |
| **Hard $1 Floor** | ✅ On-chain redemptions | ⚠️ Soft (institutional redemptions) | ⚠️ Soft | ⚠️ Soft | ✅ Fiat-backed |
| **SOL upside retained** | ✅ Full | ❌ | ❌ | ❌ | ❌ |
| **Governance** | MetaDAO (Futarchy) | None | Unknown | JUP DAO | Centralized |
| **Status** | Launching 2026 | Live (Sept 2025) · Largest Solana-native stablecoin | Live | Live (Jan 2026) | Live (Feb 2026) |

**Manna's moat:**
- **0% interest** — nobody on Solana offers this. The entire borrow cost is the one-time fee (0.5% base).
- **Solana-native speed and cost** — transactions settle in 400ms at <$0.01.
- **Futarchy governance** — the only CDP on Solana governed by prediction markets, not a multisig or token vote.
- **SOL-only collateral** — simplicity is a security property. No oracle complexity, no multi-asset liquidation cascades.

### Go-To-Market

**Phase 1 — Core DeFi users (Months 1–3 post-launch)**
- Target: power users on Jupiter, Kamino, and MarginFi looking for a cheaper borrow
- Channels: X/Twitter, Solana DeFi Twitter community, MetaDAO community
- Metric: $5M TVL

**Phase 2 — Stability Pool TVL (Months 3–6)**
- Target: solUSD holders seeking yield; integrate solUSD into Orca/Raydium pools
- Channels: integrations, liquidity mining incentives from protocol revenue
- Metric: $2M in Stability Pool

**Phase 3 — solUSD adoption as collateral (Months 6–12)**
- Target: get solUSD listed as collateral on MarginFi, Drift, or Kamino
- Channel: DAO-to-DAO proposals via MetaDAO governance
- Metric: solUSD circulating supply >$10M

---

## Use of Funds

**Raise Target: $120,000 USDC**
**Runway: 12 months**
**Monthly Spend Limit (onchain enforced): $10,000/mo**

### Monthly Burn Breakdown

| Category | Monthly Cost | % of Burn | Notes |
|---|---|---|---|
| **Core Team** | $7,000 | 70% | 1 full-time founder + part-time contributor |
| **Infrastructure** | $1,000 | 10% | RPC nodes (Helius), monitoring (Datadog), VPS, domains |
| **Marketing & Community** | $1,500 | 15% | X ads, KOL outreach, content, bounties |
| **Security & Legal** | $500 | 5% | Audit prep, Cayman entity maintenance, bug bounty fund |
| **Total** | **$10,000** | **100%** | |

**Runway math:** $120,000 ÷ $10,000/mo = **12 months**

### What this raise specifically funds:
1. **Smart contract security audit** — estimated $15,000–25,000
2. **Mainnet deployment and monitoring** for the first 3 months
3. **Founder runway** to work full-time on the protocol without distraction
4. **Liquidity bootstrapping** — initial Stability Pool seed to ensure liquidations work at launch

---

## Roadmap & Milestones

### ✅ Already Done
- Core protocol design and architecture
- Anchor/Rust smart contracts: 11 instructions (open_vault, borrow, repay, liquidate, redeem, stability pool, and more)
- TypeScript SDK and test suite
- Landing page (manna.finance) and brand identity

### 🔨 Month 1 — Audit Preparation (April 2026)
- [ ] Fix known issues: Pyth oracle integration, base rate decay optimization, redistribution logic
- [ ] Internal security review and fuzz testing
- [ ] Submit to Ottersec or OShield for audit
- [ ] Devnet deployment open to public testers

### 🔨 Month 2–3 — Audit & Fixes (May 2026)
- [ ] Receive audit report
- [ ] Fix all critical and high findings
- [ ] Publish audit report publicly
- [ ] Final devnet testnet period (2 weeks minimum)

### 🚀 Month 4 — Mainnet Launch (June 2026)
- [ ] Mainnet deployment on Solana
- [ ] Protocol TVL cap at $1M for first 4 weeks (safety)
- [ ] Stability Pool live and open
- [ ] solUSD trading pair on Orca

### 📈 Month 5–6 — Growth (July–August 2026)
- [ ] Remove TVL cap after 30 days incident-free
- [ ] Token launch preparation via MetaDAO
- [ ] First DAO governance proposals
- [ ] Integration proposals to MarginFi / Kamino

### 🏛 Month 7–12 — DAO Transition (September 2026+)
- [ ] Full MetaDAO futarchy governance live
- [ ] Governance token distributed to Stability Pool stakers, borrowers, and raise participants
- [ ] Protocol revenue split: 50% to Stability Pool, 50% to DAO treasury
- [ ] V2 planning: additional collateral types (mSOL, JitoSOL) via DAO vote

---

## Why Futard.io

Manna's governance model is built on futarchy — the same philosophy powering Futard.io and MetaDAO. This isn't just a funding round; it's the first step in building a DAO that governs a real protocol by prediction markets.

Raise participants will have **onchain governance exposure** to every major protocol decision — not through token votes that can be gamed, but through decision markets where the market price signals what's actually value-accretive.

We're not pitching to VCs. We're raising from the community that will use and govern the protocol.

---

*Manna Protocol — manna.finance*
*Built on Solana. Governed by futarchy.*


## Links

- Website: https://manna.finance/
- Twitter: https://x.com/MannaFinance

## Raw Data

- Launch address: `5whxoTjxW4oKeSN4C8yf5JUur7pcSChkPWgmhSZQ8oD5`
- Token: DQu (DQu)
- Token mint: `DQuz3AeodGAoyXV5MG56F1ZqvgRpn1VhFwFskW6Jmeta`
- Version: v0.7
- Closed: 2026-03-04
