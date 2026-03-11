---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence, cultural-dynamics]
description: "Pre-registered experiment (800+ participants, 40+ countries) found collective diversity rose (Cliff's Delta=0.31, p=0.001) while individual creativity was unchanged (F(4,19.86)=0.12, p=0.97) — AI made ideas different, not better"
confidence: experimental
source: "Theseus, from Doshi & Hauser (2025), 'How AI Ideas Affect the Creativity, Diversity, and Evolution of Human Ideas'"
created: 2026-03-11
depends_on:
  - "collective intelligence requires diversity as a structural precondition not a moral preference"
  - "partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity"
challenged_by:
  - "Homogenizing Effect of Large Language Models on Creative Diversity (ScienceDirect, 2025) — naturalistic study of 2,200 admissions essays found AI-inspired stories more similar to each other than human-only stories, with the homogenization gap widening at scale"
---

# high AI exposure increases collective idea diversity without improving individual creative quality creating an asymmetry between group and individual effects

The dominant narrative — that AI homogenizes human thought — is empirically wrong under at least one important condition. Doshi and Hauser (2025) ran a large-scale pre-registered experiment using the Alternate Uses Task (generating creative uses for everyday objects) with 800+ participants across 40+ countries. Their "multiple-worlds" design let ideas from prior participants feed forward to subsequent trials, simulating the cascading spread of AI influence over time.

The central finding is a paradox: **high AI exposure increased collective diversity** (Cliff's Delta = 0.31, p = 0.001) while having **no effect on individual creativity** (F(4,19.86) = 0.12, p = 0.97). The summary is exact: "AI made ideas different, not better."

The distinction between individual and collective effects matters enormously for how we design AI systems. Individual quality (fluency, flexibility, originality scores) didn't improve — participants weren't getting better at creative thinking by seeing AI ideas. But the population-level distribution of ideas became more diverse. These are different measurements and the divergence between them is the novel finding.

This directly complicates the homogenization argument. If AI systematically made ideas more similar, collective diversity would have declined — but it rose. The mechanism appears to be that AI ideas introduce variation that human-to-human copying would not have produced, disrupting the natural tendency toward convergence (see companion claim on baseline human convergence).

**Scope qualifier:** This finding holds at the experimental exposure levels tested (low/high AI exposure in a controlled task). It may not generalize to naturalistic settings at scale, where homogenization has been observed (ScienceDirect 2025 admissions essay study). The relationship is architecture-dependent, not inherently directional.

## Evidence
- Doshi & Hauser (2025), arXiv:2401.13481v3 — primary experimental results
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] — confirms why the collective-level diversity finding matters

## Challenges
The ScienceDirect (2025) study of 2,200 admissions essays found the opposite effect: LLM-inspired stories were more similar to each other than human-only stories, and the gap widened at scale. Both findings can be correct if the direction of AI's effect on diversity depends on exposure architecture (high vs. naturalistic saturation) and task type (constrained creative task vs. open writing).

---

Relevant Notes:
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] — this claim provides experimental evidence that AI can, under the right conditions, satisfy this precondition rather than undermine it
- [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]] — AI may function as an external diversity source that substitutes for topological partial connectivity
- [[AI is collapsing the knowledge-producing communities it depends on creating a self-undermining loop that collective intelligence can break]] — complicated by this finding: AI may not uniformly collapse diversity, it may generate it under high-exposure conditions while collapsing it in naturalistic saturated settings

Topics:
- [[domains/ai-alignment/_map]]
