---
type: entity
entity_type: company
name: "Tally"
domain: internet-finance
handles: ["@talaboratories"]
website: https://tally.xyz
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
founded: 2020-01-01
category: "Onchain DAO governance platform (Ethereum)"
stage: mature
key_metrics:
  governance_type: "Onchain (binding execution)"
competitors: ["[[snapshot]]", "[[metadao]]"]
built_on: ["Ethereum"]
tags: ["governance", "token-voting", "onchain-governance", "dao-tooling"]
---

# Tally

## Overview
Onchain governance platform focused on Ethereum. Unlike Snapshot's off-chain voting, Tally executes vote results onchain — approved proposals trigger smart contract execution automatically. More secure than off-chain voting but higher friction (gas costs, slower).

## Current State
- **Mechanism**: Onchain token-weighted voting with automatic execution. Proposals create onchain transactions that execute if passed.
- **Ecosystem**: Ethereum-focused. Used by several major protocols.
- **Trade-off**: Higher security (binding execution) vs higher cost (gas) compared to Snapshot

## Competitive Position
- **vs Snapshot**: Higher security but lower adoption. Snapshot's free + gasless model dominates volume. Tally captures the "security-first" segment.
- **vs MetaDAO**: Same fundamental mechanism difference as Snapshot — voting vs markets. Tally adds onchain execution but doesn't change the information aggregation problem that futarchy addresses.
- **Moat**: Ethereum ecosystem positioning, but narrow moat.

## Investment Thesis
Tally occupies the "secure onchain voting" niche. If governance evolves toward market-based mechanisms, Tally faces the same structural pressure as Snapshot. But for decisions that require binding onchain execution from a vote, Tally has a clear use case.

**Thesis status:** WATCHING

## Relationship to KB
- [[DAO governance degenerates into political capture because proposal processes select for coalition-building skill over operational competence and the resulting bureaucracy creates structural speed disadvantages against focused competitors]] — Tally enables onchain version of the governance model this claim critiques

---

Relevant Entities:
- [[snapshot]] — off-chain voting alternative
- [[metadao]] — market-based governance alternative

Topics:
- [[internet finance and decision markets]]
