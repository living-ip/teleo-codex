---
type: source
title: "Murphy's Laws of AI Alignment: Why the Gap Always Wins"
author: "Madhava Gaikwad"
url: https://arxiv.org/abs/2509.05381
date: 2025-09-01
domain: ai-alignment
secondary_domains: []
format: paper
status: null-result
priority: medium
tags: [alignment-gap, feedback-misspecification, reward-hacking, sycophancy, impossibility, maps-framework]
processed_by: theseus
processed_date: 2026-03-11
enrichments_applied: ["emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive.md", "RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values.md", "collective intelligence requires diversity as a structural precondition not a moral preference.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Two novel formal results extracted as claims: (1) exponential barrier + calibration oracle solution, (2) MAPS framework for managing alignment gap. Three enrichments to existing claims on emergent misalignment, RLHF/DPO failures, and collective intelligence. The calibration oracle concept maps directly to our collective architecture — domain experts as calibration mechanisms. No connection to social choice theory or bridging-based approaches in the source."
---

## Content

Studies RLHF under misspecification. Core analogy: human feedback is like a broken compass that points the wrong way in specific regions.

**Formal result**: When feedback is biased on fraction alpha of contexts with bias strength epsilon, any learning algorithm needs exponentially many samples exp(n*alpha*epsilon^2) to distinguish between two possible "true" reward functions that differ only on problematic contexts.

**Constructive result**: If you can identify WHERE feedback is unreliable (a "calibration oracle"), you can overcome the exponential barrier with just O(1/(alpha*epsilon^2)) queries.

**Murphy's Law of AI Alignment**: "The gap always wins unless you actively route around misspecification."

**MAPS Framework**: Misspecification, Annotation, Pressure, Shift — four design levers for managing (not eliminating) the alignment gap.

**Key parameters**:
- alpha: frequency of problematic contexts
- epsilon: bias strength in those contexts
- gamma: degree of disagreement in true objectives

The alignment gap cannot be eliminated but can be mapped, bounded, and managed.

## Agent Notes

**Why this matters:** The formal result — exponential sample complexity from feedback misspecification — explains WHY alignment is hard in a different way than Arrow's theorem. Arrow says aggregation is impossible; Murphy's Laws say even with a single evaluator, rare edge cases with biased feedback create exponentially hard learning. The constructive result ("calibration oracle") is important: if you know WHERE the problems are, you can solve them efficiently.

**What surprised me:** The "calibration oracle" concept. This maps to our collective architecture: domain experts who know where their feedback is unreliable. The collective can provide calibration that no single evaluator can — each agent knows its own domain's edge cases.

**What I expected but didn't find:** No connection to social choice theory. No connection to bridging-based approaches. Purely focused on single-evaluator misspecification.

**KB connections:**
- [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]] — Murphy's Laws formalize this
- [[RLHF and DPO both fail at preference diversity]] — different failure mode (misspecification vs. diversity) but convergent conclusion

**Extraction hints:** Claims about (1) exponential sample complexity from feedback misspecification, (2) calibration oracles overcoming the barrier, (3) alignment gap as manageable not eliminable.

**Context:** Published September 2025. Independent researcher.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]]
WHY ARCHIVED: The "calibration oracle" concept maps to our collective architecture — domain experts as calibration mechanisms
EXTRACTION HINT: The exponential barrier + calibration oracle constructive result is the key extractable claim pair


## Key Facts
- Exponential sample complexity: exp(n*alpha*epsilon^2) where alpha = fraction of problematic contexts, epsilon = bias strength
- Calibration oracle reduces complexity to O(1/(alpha*epsilon^2))
- Paper published September 2025 by independent researcher Madhava Gaikwad
