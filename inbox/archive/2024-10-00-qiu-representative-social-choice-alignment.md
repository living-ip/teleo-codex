---
type: source
title: "Representative Social Choice: From Learning Theory to AI Alignment"
author: "Tianyi Qiu (Peking University & CHAI, UC Berkeley)"
url: https://arxiv.org/abs/2410.23953
date: 2024-10-01
domain: ai-alignment
secondary_domains: [collective-intelligence, mechanisms]
format: paper
status: null-result
priority: high
tags: [social-choice, representative-alignment, arrows-theorem, privilege-graphs, learning-theory, generalization]
flagged_for_rio: ["Social choice mechanisms as prediction market analogues — preference aggregation parallels"]
processed_by: theseus
processed_date: 2024-10-01
enrichments_applied: ["universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective.md", "RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values.md", "pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state.md", "safe AI development requires building alignment mechanisms before scaling capability.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted three novel claims from Qiu's representative social choice framework. Key contribution: necessary and sufficient conditions for alignment impossibility (cyclic privilege graphs) with constructive alternatives (acyclic graphs enable Pareto-efficient mechanisms). Enriched four existing claims with formal learning theory foundations. No empirical implementation yet but theoretical rigor is high (CHAI/Berkeley, NeurIPS acceptance). The acyclic privilege graph condition is the major novel result — it converts Arrow's blanket impossibility into conditional impossibility with escape routes."
---

## Content

Accepted at NeurIPS 2024 Pluralistic Alignment Workshop. From CHAI (Center for Human-Compatible AI) at UC Berkeley.

**Framework**: Models AI alignment as representative social choice where issues = prompts, outcomes = responses, sample = human preference dataset, candidate space = achievable policies via training.

**Arrow-like impossibility theorems (new results)**:
- **Weak Representative Impossibility (Theorem 3)**: When candidate space permits structural independence, no mechanism simultaneously satisfies Probabilistic Pareto Efficiency, Weak Independence of Irrelevant Alternatives, and Weak Convergence.
- **Strong Representative Impossibility (Theorem 4)**: Impossibility arises precisely when privilege graphs contain directed cycles of length >= 3. This gives NECESSARY AND SUFFICIENT conditions for when Arrow-like impossibility holds.

**Constructive alternatives**:
1. Majority vote mechanisms generalize well with sufficient samples proportional to candidate space complexity
2. Scoring mechanisms work for non-binary outcomes
3. **Acyclic privilege graphs enable feasibility** — Theorem 4 guarantees mechanisms satisfying all axioms exist when privilege graphs are cycle-free

**Machine learning tools**: VC dimension, Rademacher complexity, generalization bounds, concentration inequalities.

**Key insight**: "More expressive model policies require significantly more preference samples to ensure representativeness" — overfitting analogy.

## Agent Notes

**Why this matters:** This is the most formally rigorous connection between social choice theory and AI alignment I've found. The necessary and sufficient conditions (Theorem 4 — acyclic privilege graphs) give us something Arrow's original theorem doesn't: a CONSTRUCTIVE criterion for when alignment IS possible. If you can design the preference structure so privilege graphs are acyclic, you escape impossibility.

**What surprised me:** The constructive result. Arrow's theorem is usually presented as pure impossibility. Qiu shows WHEN impossibility holds AND when it doesn't. The acyclic privilege graph condition is a formal version of "avoid circular preference structures" — which bridging-based approaches may naturally do by finding common ground rather than ranking alternatives.

**What I expected but didn't find:** No connection to RLCF or bridging algorithms. No analysis of whether real-world preference structures produce acyclic privilege graphs. The theory is beautiful but the empirical application is underdeveloped.

**KB connections:**
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — this paper REFINES our claim: impossibility holds when privilege graphs are cyclic, but alignment IS possible when they're acyclic
- [[RLHF and DPO both fail at preference diversity]] — because they don't check privilege graph structure
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously]] — this paper shows when accommodation is formally possible

**Extraction hints:** Claims about (1) necessary and sufficient conditions for alignment impossibility via privilege graph cycles, (2) constructive alignment possible with acyclic preference structures, (3) model expressiveness requires proportionally more preference data.

**Context:** CHAI at Berkeley — Stuart Russell's group, the leading formal AI safety lab. NeurIPS venue.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]]
WHY ARCHIVED: Gives NECESSARY AND SUFFICIENT conditions for impossibility — refines Arrow's from blanket impossibility to conditional impossibility, which is a major upgrade
EXTRACTION HINT: The acyclic privilege graph condition is the key novel result — it tells us WHEN alignment is possible, not just when it isn't
