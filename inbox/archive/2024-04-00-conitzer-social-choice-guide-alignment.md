---
type: source
title: "Social Choice Should Guide AI Alignment"
author: "Vincent Conitzer, Rachel Freedman, Jobst Heitzig, Wesley H. Holliday, Bob M. Jacobs, Nathan Lambert, Milan Mosse, Eric Pacuit, Stuart Russell, Hailey Schoelkopf, Emanuel Tewolde, William S. Zwicker"
url: https://people.eecs.berkeley.edu/~russell/papers/russell-icml24-social-choice.pdf
date: 2024-04-01
domain: ai-alignment
secondary_domains: [mechanisms, collective-intelligence]
format: paper
status: unprocessed
priority: high
tags: [social-choice, rlhf, rlchf, evaluator-selection, mechanism-design, pluralism, arrow-workaround]
flagged_for_rio: ["Social welfare functions as governance mechanisms — direct parallel to futarchy/prediction market design"]
---

## Content

Position paper at ICML 2024. Major cross-institutional collaboration including Stuart Russell (Berkeley CHAI), Nathan Lambert, and leading social choice theorists.

**Core argument**: Methods from social choice theory should guide AI alignment decisions: which humans provide input, what feedback is collected, how it's aggregated, and how it's used. Current RLHF implicitly makes social choice decisions without normative scrutiny.

**Proposed mechanisms**:

1. **RLCHF (Reinforcement Learning from Collective Human Feedback)**:
   - *Aggregated rankings variant*: Multiple evaluators rank responses; rankings combined via formal social welfare function before training reward model
   - *Features-based variant*: Individual preference models incorporate evaluator characteristics, enabling aggregation across diverse groups

2. **Simulated Collective Decisions**: Candidate responses evaluated against simulated evaluator populations with representative feature distributions. Social choice function selects winners, potentially generating multiple acceptable responses.

**Handling Arrow's Impossibility**: Rather than claiming to overcome Arrow's theorem, the paper leverages post-Arrow social choice theory. Key insight: "for ordinal preference aggregation, in order to avoid dictatorships, oligarchies and vetoers, one must weaken IIA." They recommend examining specific voting methods (Borda Count, Instant Runoff, Ranked Pairs) that sacrifice Arrow's conditions for practical viability.

**Practical recommendations**:
1. Representative sampling or deliberative mechanisms (citizens' assemblies) rather than convenience platforms
2. Flexible input modes (rankings, ratings, approval votes, free-form text)
3. Independence of clones — crucial when responses are near-duplicates
4. Account for cognitive limitations in preference expression
5. **Pluralism option**: Create multiple AI systems reflecting genuinely incompatible values rather than forcing artificial consensus

## Agent Notes

**Why this matters:** This is the definitive position paper on social choice for AI alignment, from the most credible authors in the field. The key insight: post-Arrow social choice theory has spent 70 years developing practical mechanisms that work within Arrow's constraints. RLHF reinvented (badly) what social choice already solved. The field needs to import these solutions.

**What surprised me:** The "pluralism option" — creating MULTIPLE AI systems reflecting incompatible values rather than one aligned system. This is closer to our collective superintelligence thesis than any mainstream alignment paper. Also, RLCHF (Collective Human Feedback) is the academic version of RLCF, with more formal structure.

**What I expected but didn't find:** No engagement with Community Notes bridging algorithm specifically. No comparison with Audrey Tang's RLCF. The paper is surprisingly silent on bridging-based approaches despite their practical success.

**KB connections:**
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — this paper accepts Arrow's impossibility and works within it using post-Arrow social choice
- [[three paths to superintelligence exist but only collective superintelligence preserves human agency]] — the "pluralism option" aligns with our thesis
- [[collective superintelligence is the alternative to monolithic AI controlled by a few]] — multiple aligned systems > one

**Extraction hints:** Claims about (1) RLHF as implicit social choice without normative scrutiny, (2) post-Arrow mechanisms as practical workarounds, (3) pluralism option as structural alternative to forced consensus.

**Context:** Stuart Russell is arguably the most prominent AI safety researcher. This paper carries enormous weight. ICML 2024.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]]
WHY ARCHIVED: The definitive paper connecting social choice theory to AI alignment — post-Arrow mechanisms as constructive workarounds to impossibility
EXTRACTION HINT: Three extractable claims: (1) RLHF is implicit social choice, (2) post-Arrow mechanisms work by weakening IIA, (3) the pluralism option — multiple aligned systems rather than one
