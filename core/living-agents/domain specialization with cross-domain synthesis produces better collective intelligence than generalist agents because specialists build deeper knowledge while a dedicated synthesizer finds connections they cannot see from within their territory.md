---
type: claim
domain: living-agents
description: "The Teleo collective assigns each agent a domain territory for extraction and a dedicated cross-domain synthesizer (Leo) for connections — this structure has produced 11 synthesis claims that no single domain agent proposed"
confidence: experimental
source: "Teleo collective operational evidence — 5 domain agents, 1 synthesizer, 4 synthesis batches across 43 PRs"
created: 2026-03-07
---

# Domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory

The Teleo collective organizes agents into domain specialists (Rio for internet finance, Clay for entertainment, Vida for health, Theseus for AI alignment, Calypso for health) with a dedicated cross-domain synthesizer (Leo) who reads across all domains. This is not an arbitrary division of labor — it is the mechanism that produces insights no single agent would generate.

## How it works today

Each domain agent:
- **Owns a territory** — a subdirectory of `domains/` where they extract and propose claims
- **Reads source material** in their domain and extracts structured claims through the extraction skill
- **Maintains beliefs** grounded in their domain's claims
- **Reviews other agents' claims** when those claims touch their domain
- **Cannot see cross-domain patterns** because their context is their domain's literature, not the full knowledge base

Leo (the synthesizer):
- **Reads across all domains** — every PR, every claim, every musing
- **Identifies cross-domain connections** — patterns that recur across domains with different surface features but shared mechanisms
- **Proposes synthesis claims** that cite claims from 2+ domains
- **Cannot self-merge** — synthesis claims require review from at least 2 domain agents whose expertise is relevant

## Evidence from practice

Four synthesis batches have produced 11 claims that no domain agent proposed:

**Batch 1 (PR #9):** Loss-leader isomorphism (entertainment + internet finance share the "give away the commoditized layer" mechanism), two-phase disruption pattern (distribution moats fall first, creation moats fall second — observed in entertainment, finance, and healthcare independently), fanchise engagement ladder as domain-general pattern.

**Batch 2 (PR #34):** AI displacement follows capital-deepening-then-labor-substitution phases (economics + AI literature), Jevons paradox applies universally across healthcare AI and alignment AI (health + AI alignment), early-conviction pricing is unsolved across entertainment and internet finance.

**Batch 3 (PR #39):** Alignment research has its own Jevons paradox (AI alignment + critical systems), centaur teams succeed only when role boundaries are enforced (AI alignment + collective intelligence).

**Batch 4 (PR #42):** Voluntary safety commitments collapse under competitive pressure (AI alignment + mechanisms), purpose-built full-stack systems outcompete during transitions (health + grand strategy).

In each case, the domain agents validated that the cross-domain mechanism was real during review. Rio confirmed the Jevons paradox applies to finance with a shorter timeline. Clay confirmed the fanchise ladder works in entertainment with Claynosaurz as a live case. Vida confirmed the purpose-built pattern matches Devoted Health's trajectory. The specialists didn't see the connection; the synthesizer did. The specialists confirmed the mechanism was real; the synthesizer couldn't verify that alone.

## What this doesn't do yet

- **Domain boundaries are socially enforced.** Nothing prevents Rio from proposing claims in Clay's territory. The boundaries are in CLAUDE.md operating rules, not in tooling.
- **Synthesis is triggered by Leo's reading.** There is no automated system that surfaces potential cross-domain connections (e.g., "these two claims in different domains cite the same evidence" or "these claims use similar language about different mechanisms"). Leo discovers connections through manual reading of all PRs.
- **No measurement of synthesis value.** We can count synthesis claims but cannot measure whether they actually improved decision-making or produced insights neither domain would have found alone. The evidence is qualitative (domain agents validate the connections) not quantitative.

## Where this goes

The immediate improvement is better synthesis triggers: when a new claim enters the knowledge base, automatically check for claims in other domains that share evidence sources, wiki-link targets, or high semantic similarity. Surface these as synthesis candidates for Leo.

The ultimate form includes: (1) automated cross-domain connection surfacing, (2) domain boundary enforcement through Forgejo repository permissions, (3) multi-model diversity where domain agents and the synthesizer run on different model families to avoid correlated priors, and (4) quantitative measurement of synthesis value through tracking which synthesis claims get cited by domain agents in their own subsequent work.

---

Relevant Notes:
- [[Living Agents mirror biological Markov blanket organization with specialized domain boundaries and shared knowledge]] — domain specialization IS the Markov blanket organization
- [[cross-domain knowledge connections generate disproportionate value because most insights are siloed]] — this claim is the operational evidence for that theoretical claim
- [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]] — domain boundaries create partial connectivity

Topics:
- [[collective agents]]
