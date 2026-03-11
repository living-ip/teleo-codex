---
type: entity
entity_type: company
name: "Snapshot"
domain: internet-finance
handles: ["@SnapshotLabs"]
website: https://snapshot.org
status: active
tracked_by: rio
created: 2026-03-11
last_updated: 2026-03-11
founded: 2020-01-01
category: "Off-chain DAO voting platform"
stage: mature
key_metrics:
  dao_count: "10,000+"
  total_votes_cast: "Millions"
  pricing: "Free"
competitors: ["[[tally]]", "[[metadao]]"]
built_on: ["Ethereum", "Multi-chain"]
tags: ["governance", "token-voting", "dao-tooling"]
---

# Snapshot

## Overview
Free off-chain voting platform. The default governance tool for DAOs — over 10,000 DAOs use Snapshot for token-weighted voting on proposals. Off-chain execution (votes are gasless, recorded on IPFS). Widely adopted because it's free and frictionless, but off-chain results are non-binding unless paired with execution layers.

## Current State
- **Adoption**: 10,000+ DAOs, including most major DeFi protocols
- **Mechanism**: Token-weighted voting, off-chain (gasless). Results stored on IPFS.
- **Pricing**: Free — no fees for creating spaces or running votes
- **Limitation**: Off-chain = non-binding. Requires trust that multisig holders will execute vote results. No onchain enforcement.

## Competitive Position
- **Dominant incumbent** in DAO voting. Network effects + free pricing = high adoption inertia.
- **vs MetaDAO/futarchy**: Fundamentally different mechanism — Snapshot uses voting (legitimacy-based), MetaDAO uses markets (information-based). Not direct competition today, but if futarchy proves superior for capital allocation decisions, Snapshot's governance model becomes the "legacy" approach.
- **vs Tally**: Tally does onchain voting (binding execution). Snapshot does off-chain (non-binding). Different trade-offs: Snapshot is cheaper/easier, Tally is more secure.
- **Moat**: Network effects + free = strong adoption inertia. But switching costs are actually low — DAOs can migrate governance tools without changing anything else.

## Investment Thesis
Snapshot is the token voting incumbent. If DAO governance evolves toward market-based mechanisms (futarchy) or founder-led hybrid models, Snapshot's relevance diminishes for high-stakes decisions. But for low-stakes community polling and signaling, Snapshot likely persists indefinitely. The question: does governance converge on Snapshot's model or evolve past it?

**Thesis status:** WATCHING — incumbent under structural pressure from governance evolution

## Relationship to KB
- [[DAO governance degenerates into political capture because proposal processes select for coalition-building skill over operational competence and the resulting bureaucracy creates structural speed disadvantages against focused competitors]] — Snapshot enables the governance model this claim critiques
- [[quadratic voting fails for crypto because Sybil resistance and collusion prevention are unsolvable]] — applies to Snapshot's token-weighted model (not quadratic, but same Sybil problem)
- [[token voting DAOs offer no minority protection beyond majority goodwill]] — Snapshot facilitates this dynamic

---

Relevant Entities:
- [[tally]] — onchain voting alternative
- [[metadao]] — market-based governance alternative

Topics:
- [[internet finance and decision markets]]
