---
type: entity
entity_type: company
name: "MetaDAO"
domain: internet-finance
handles: ["@MetaDAOProject"]
website: https://metadao.fi
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
founded: 2023-01-01
founders: ["proph3t"]
category: "Futarchy governance protocol + ownership coin launchpad (Solana)"
stage: growth
key_metrics:
  meta_price: "~$3.78 (March 2026)"
  market_cap: "~$85.7M"
  ecosystem_market_cap: "$219M total ($69M non-META)"
  total_revenue: "$3.1M+ (Q4 2025: $2.51M — 54% Futarchy AMM, 46% Meteora LP)"
  total_equity: "$16.5M (up from $4M in Q3 2025)"
  runway: "15+ quarters at ~$783K/quarter burn"
  icos_facilitated: "8 on MetaDAO proper (through Dec 2025), raising $25.6M total"
  ecosystem_launches: "45 (via Futardio)"
  futarchic_amm_lp_share: "~20% of each project's token supply"
  proposal_volume: "$3.6M Q4 2025 (up from $205K in Q3)"
competitors: ["snapshot", "tally"]
built_on: ["Solana"]
tags: ["futarchy", "decision-markets", "ownership-coins", "governance", "launchpad"]
---

# MetaDAO

## Overview
The futarchy governance protocol on Solana. Implements decision markets through Autocrat — a system where proposals create parallel pass/fail token universes settled by time-weighted average price over a three-day window. Also operates as a launchpad for ownership coins through Futardio (unruggable ICOs). The first platform for futarchy-governed organizations at scale.

## Current State
- **Autocrat**: Conditional token markets for governance decisions. Proposals create pass/fail universes; TWAP settlement over 3 days.
- **Futardio**: Unruggable ICO launch platform. Projects raise capital through the MetaDAO ecosystem with futarchy-governed accountability. Replaced the original uncapped pro-rata mechanism that caused massive overbidding (Umbra: $155M committed for $3M raise = 50x oversubscription; Solomon: $103M committed for $8M = 13x).
- **Futarchic AMM**: Custom-built AMM for decision market trading. No fees for external LPs — all fees go to the protocol. ~20% of each project's token supply is in the Futarchic AMM LP. LP cannot be withdrawn during active markets.
- **Financial**: $85.7M market cap, $219M ecosystem market cap ($69M non-META). Total revenue $3.1M+ (Q4 2025 alone: $2.51M). Total equity $16.5M, 15+ quarters runway.
- **Ecosystem**: 8 curated ICOs raising $25.6M total (through Dec 2025) + 45 permissionless Futardio launches
- **Treasury**: Active management via subcommittee proposals (see Solomon DP-00001). Omnibus proposal migrated ~90% of META liquidity into Futarchy AMM and burned ~60K META.
- **Known limitation**: Limited trading volume in uncontested decisions — when community consensus is obvious, conditional markets add little information

## Timeline
- **2023** — MetaDAO founded by Proph3t
- **2024** — Autocrat deployed; early governance proposals
- **2025-10** — Futardio launches (Umbra is first launch, ~$155M committed)
- **2025-11** — Solomon launches via Futardio ($103M committed for $8M raise)
- **2026-02** — Futardio mechanism updated (unruggable ICO replacing pro-rata)
- **2026-02/03** — Multiple new Futardio launches: Rock Game, Turtle Cove, VervePay, Open Music, SeekerVault, SuperClaw, LaunchPet, Seyf, Areal, Etnlio
- **2026-03** — Ranger liquidation proposal; treasury subcommittee formation
- **2026-03** — Pine Analytics Q4 2025 quarterly report published

- **2024-02-18** — metadao-otc-trade-pantera-capital failed: Pantera Capital's $50,000 OTC purchase proposal rejected by futarchy markets
- **2024-02-20** — [[metadao-develop-multi-option-proposals]] proposed: develop multi-modal proposal functionality for 200 META across 4 milestones (failed 2024-02-25)
## Key Decisions
| Date | Proposal | Proposer | Category | Outcome |
|------|----------|----------|----------|---------|
| 2024-03-03 | metadao-burn-993-percent-meta | doctor.sol & rar3 | Treasury | Passed |
| 2024-03-13 | metadao-develop-faas | 0xNallok | Strategy | Passed |
| 2024-03-28 | metadao-migrate-autocrat-v02 | HenryE & Proph3t | Mechanism | Passed |
| 2024-05-27 | metadao-compensation-proph3t-nallok | Proph3t & Nallok | Hiring | Passed |
| 2024-06-26 | metadao-fundraise-2 | Proph3t | Fundraise | Passed |
| 2024-11-21 | metadao-create-futardio | unknown | Strategy | Failed |
| 2025-01-28 | metadao-token-split-elastic-supply | @aradtski | Mechanism | Failed |
| 2025-02-10 | metadao-hire-robin-hanson | Proph3t | Hiring | Passed |
| 2025-02-26 | metadao-release-launchpad | Proph3t & Kollan | Strategy | Passed |
| 2025-08-07 | metadao-migrate-meta-token | Proph3t & Kollan | Mechanism | Passed |

## Competitive Position
- **First mover** in futarchy-governed organizations at scale
- **No direct competitor** for conditional-market governance on Solana
- **Indirect competitors**: Snapshot (token voting, free, widely adopted), Tally (onchain governance, Ethereum-focused)
- **Structural advantage**: the Futarchic AMM is purpose-built; no existing AMM can replicate conditional token market settlement
- **Key vulnerability**: depends on ecosystem project quality. Failed launches (Ranger liquidation) damage platform credibility. Brand separation between MetaDAO platform and Futardio-launched projects is an active design challenge.

## Investment Thesis
MetaDAO is the platform bet on futarchy as a governance mechanism. If decision markets prove superior to token voting (evidence: Stani Kulechov's DAO critique, convergence toward hybrid governance models), MetaDAO is the infrastructure layer that captures value from every futarchy-governed organization. Current risk: ecosystem quality varies widely, and limited trading volume in uncontested decisions raises questions about mechanism utility.

**Thesis status:** ACTIVE

## Key Metrics to Track
- % of total futarchic market volume (market share of decision markets)
- Number of active projects with meaningful governance activity
- Futardio launch success rate (projects still active vs liquidated/abandoned)
- Committed-to-raised ratio on new launches (improving from 50x overbidding?)
- Ecosystem token aggregate market cap

## Relationship to KB
- [[MetaDAO is the futarchy launchpad on Solana where projects raise capital through unruggable ICOs governed by conditional markets creating the first platform for ownership coins at scale]] — core claim about MetaDAO
- [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]] — mechanism description
- [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] — known limitation
- [[futarchy-governed permissionless launches require brand separation to manage reputational liability because failed projects on a curated platform damage the platforms credibility]] — active design challenge
- DAO governance degenerates into political capture because proposal processes select for coalition-building skill over operational competence and the resulting bureaucracy creates structural speed disadvantages against focused competitors — the problem MetaDAO solves

---

Relevant Entities:
- omnipair — leverage infrastructure for ecosystem
- proph3t — founder
- solomon — ecosystem launch
- futardio — launch platform

Topics:
- [[internet finance and decision markets]]
