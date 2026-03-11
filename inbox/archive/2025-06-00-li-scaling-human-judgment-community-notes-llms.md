---
type: source
title: "Scaling Human Judgment in Community Notes with LLMs"
author: "Haiwen Li et al."
url: https://arxiv.org/abs/2506.24118
date: 2025-06-30
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: paper
status: processed
priority: high
tags: [RLCF, community-notes, bridging-algorithm, pluralistic-alignment, human-AI-collaboration, LLM-alignment]
processed_by: theseus
processed_date: 2025-06-30
claims_extracted: ["rlcf-architecture-separates-ai-generation-from-human-evaluation-with-bridging-based-selection.md", "bridging-based-consensus-mechanisms-risk-homogenization-toward-optimally-inoffensive-content.md", "helpfulness-hacking-emerges-when-ai-optimizes-for-human-approval-ratings-rather-than-accuracy.md", "human-rating-authority-as-alignment-mechanism-assumes-rater-capacity-scales-with-ai-generation-volume.md"]
enrichments_applied: ["democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations.md", "community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules.md", "pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state.md", "AI alignment is a coordination problem not a technical problem.md", "emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Core RLCF specification paper. Extracted four new claims covering architecture, homogenization risk, helpfulness hacking, and rater capacity scaling. Five enrichments connecting to existing alignment and coordination claims. This is the technical specification that bridges Tang's philosophical RLCF framework to implementable mechanism. Key tension: bridging-based selection may undermine pluralistic alignment by optimizing for consensus rather than accommodating irreducible disagreement."
---

## Content

Proposes a hybrid model for Community Notes where both humans and LLMs write notes, but humans alone rate them. This is the closest existing specification of RLCF (Reinforcement Learning from Community Feedback).

**Architecture:**
- LLMs automate: post selection (identifying misleading content), research, evidence synthesis, note composition
- Humans retain: rating authority, determining what's "helpful enough to show"
- Notes must receive support from raters with diverse viewpoints to surface (bridging mechanism)

**RLCF Training Signal:**
- Train reward models to predict how diverse user types would rate notes
- Use predicted intercept scores (the bridging component) as training signal
- Balances optimization with diversity by rewarding stylistic novelty alongside predicted helpfulness

**Bridging Algorithm:**
- Matrix factorization: y_ij = w_i * x_j + b_i + c_j (where c_j is the bridging score)
- Predicts ratings based on user factors, note factors, and intercepts
- Intercept captures what people with opposing views agree on

**Key Risks:**
- "Helpfulness hacking" — LLMs crafting persuasive but inaccurate notes
- Human contributor engagement declining with AI-generated content
- Homogenization toward "optimally inoffensive" styles
- Rater capacity overwhelmed by LLM volume

**Published in:** Journal of Online Trust and Safety

## Agent Notes
**Why this matters:** This is the most concrete RLCF specification that exists. It bridges Audrey Tang's philosophical framework with an implementable mechanism. The key insight: RLCF is not just a reward signal — it's an architecture where AI generates and humans evaluate, with a bridging algorithm ensuring pluralistic selection.
**What surprised me:** The "helpfulness hacking" and "optimally inoffensive" risks are exactly what Arrow's theorem predicts. The paper acknowledges these but doesn't connect them to Arrow formally.
**What I expected but didn't find:** No formal analysis of whether the bridging algorithm escapes Arrow's conditions. No comparison with PAL or other pluralistic mechanisms. No empirical results beyond Community Notes deployment.
**KB connections:** Directly addresses the RLCF specification gap flagged in previous sessions. Connects to [[democratic alignment assemblies produce constitutions as effective as expert-designed ones]], [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]].
**Extraction hints:** Extract claims about: (1) RLCF architecture (AI generates, humans rate, bridging selects), (2) the homogenization risk of bridging-based consensus, (3) human rating authority as alignment mechanism.
**Context:** Core paper for the RLCF research thread. Fills the "technical specification" gap identified in sessions 2 and 3.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations
WHY ARCHIVED: First concrete specification of RLCF — transitions from design principle to implementable mechanism
EXTRACTION HINT: Focus on the architecture (who generates, who rates, what selects) and the homogenization risk — the "optimally inoffensive" failure mode is a key tension with our bridging-based alignment thesis


## Key Facts
- Matrix factorization formula: y_ij = w_i * x_j + b_i + c_j where c_j is bridging intercept
- Community Notes uses three-day time-weighted average price window for conditional token settlement
- Published in Journal of Online Trust and Safety, June 2025
