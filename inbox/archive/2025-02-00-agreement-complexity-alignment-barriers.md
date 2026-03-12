---
type: source
title: "Intrinsic Barriers and Practical Pathways for Human-AI Alignment: An Agreement-Based Complexity Analysis"
author: "Multiple authors"
url: https://arxiv.org/abs/2502.05934
date: 2025-02-01
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: paper
status: processed
processed_by: theseus
processed_date: 2026-03-12
claims_extracted:
  - "reward hacking is globally inevitable because finite training samples systematically under-cover rare high-loss states in large task spaces"
  - "alignment overhead is computationally irreducible because no method eliminates the fundamental costs of encoding diverse values across sufficiently large agent populations or objective sets"
  - "consensus-driven objective reduction makes multi-agent alignment tractable by shrinking the objective space to regions of shared agreement rather than attempting universal coverage"
enrichments:
  - "emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive" — new upstream mechanism: structural coverage gaps make reward hacking structurally inevitable, which provides the precondition for emergent deception
priority: high
tags: [impossibility-result, agreement-complexity, reward-hacking, multi-objective, safety-critical-slices]
---

## Content

Oral presentation at AAAI 2026 Special Track on AI Alignment.

Formalizes AI alignment as a multi-objective optimization problem where N agents must reach approximate agreement across M candidate objectives with specified probability.

**Key impossibility results**:
1. **Intractability of encoding all values**: When either M (objectives) or N (agents) becomes sufficiently large, "no amount of computational power or rationality can avoid intrinsic alignment overheads."
2. **Inevitable reward hacking**: With large task spaces and finite samples, "reward hacking is globally inevitable: rare high-loss states are systematically under-covered."
3. **No-Free-Lunch principle**: Alignment has irreducible computational costs regardless of method sophistication.

**Practical pathways**:
- **Safety-critical slices**: Rather than uniform coverage, target high-stakes regions for scalable oversight
- **Consensus-driven objective reduction**: Manage multi-agent alignment through reducing the objective space via consensus

## Agent Notes

**Why this matters:** This is a third independent impossibility result (alongside Arrow's theorem and the RLHF trilemma). Three different mathematical traditions — social choice theory, complexity theory, and multi-objective optimization — converge on the same structural finding: perfect alignment with diverse preferences is computationally intractable. This convergence is itself a strong claim.

**What surprised me:** The "consensus-driven objective reduction" pathway is exactly what bridging-based approaches (RLCF, Community Notes) do — they reduce the objective space by finding consensus regions rather than covering all preferences. This paper provides formal justification for why bridging works: it's the practical pathway out of the impossibility result.

**What I expected but didn't find:** No explicit connection to Arrow's theorem or social choice theory, despite the structural parallels. No connection to bridging-based mechanisms.

**KB connections:**
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — third independent confirmation
- [[reward hacking is globally inevitable]] — this could be a new claim
- [[safe AI development requires building alignment mechanisms before scaling capability]] — the safety-critical slices approach is an alignment mechanism

**Extraction hints:** Claims about (1) convergent impossibility from three mathematical traditions, (2) reward hacking as globally inevitable, (3) consensus-driven objective reduction as practical pathway.

**Context:** AAAI 2026 oral presentation — high-prestige venue for formal AI safety work.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]]
WHY ARCHIVED: Third independent impossibility result from multi-objective optimization — convergent evidence from three mathematical traditions strengthens our core impossibility claim
EXTRACTION HINT: The convergence of three impossibility traditions AND the "consensus-driven reduction" pathway are both extractable
