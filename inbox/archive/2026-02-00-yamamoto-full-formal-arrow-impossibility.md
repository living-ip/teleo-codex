---
type: source
title: "A Full Formal Representation of Arrow's Impossibility Theorem"
author: "Kazuya Yamamoto"
url: https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0343069
date: 2026-02-01
domain: ai-alignment
secondary_domains: [critical-systems]
format: paper
status: enrichment
priority: medium
tags: [arrows-theorem, formal-proof, proof-calculus, social-choice]
processed_by: theseus
processed_date: 2026-03-11
enrichments_applied: ["safe AI development requires building alignment mechanisms before scaling capability.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Pure formal verification paper with no AI alignment discussion. Strengthens mathematical foundation for existing Arrow's impossibility claims by providing machine-checkable proof. No new claims warranted—this is infrastructure for existing arguments, not a novel proposition. The curator correctly identified this as enrichment material rather than standalone claim."
---

## Content

Constructs a full formal representation of Arrow's impossibility theorem using proof calculus in formal logic. Published in PLOS One, February 2026.

Key contribution: meticulous derivation revealing the global structure of the social welfare function central to the theorem. Complements existing proofs (computer-aided proofs from AAAI 2008, simplified proofs via Condorcet's paradox) with a full logical representation.

## Agent Notes
**Why this matters:** Machine-checkable proof of Arrow's theorem. If we claim Arrow's theorem constrains alignment, having a formally verified version strengthens the claim from "mathematical argument" to "machine-verified result."
**What surprised me:** The timing — published Feb 2026, just as the AI alignment field is grappling with Arrow's implications. The formal proof tradition is catching up to the applied work.
**What I expected but didn't find:** No connection to AI alignment in the paper itself. The formal proof is pure social choice theory.
**KB connections:** Strengthens the foundation under [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]].
**Extraction hints:** May not warrant its own claim — but enriches the existing Arrow's claim with the note that the theorem now has a full formal representation (2026).
**Context:** PLOS One — open-access, peer-reviewed. Formal verification trend in mathematics.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective
WHY ARCHIVED: Provides formal verification foundation for our Arrow's impossibility claim
EXTRACTION HINT: Likely enrichment to existing claim rather than standalone — add as evidence that Arrow's theorem is now formally machine-verifiable


## Key Facts
- Arrow's impossibility theorem received full formal representation using proof calculus (Yamamoto, PLOS One, February 2026)
- Formal proof complements existing computer-aided proofs from AAAI 2008
- Derivation reveals global structure of social welfare function central to the theorem
