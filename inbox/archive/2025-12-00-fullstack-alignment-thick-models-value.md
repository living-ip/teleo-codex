---
type: source
title: "Full-Stack Alignment: Co-Aligning AI and Institutions with Thick Models of Value"
author: "Multiple authors"
url: https://arxiv.org/abs/2512.03399
date: 2025-12-01
domain: ai-alignment
secondary_domains: [mechanisms, grand-strategy]
format: paper
status: null-result
priority: medium
tags: [full-stack-alignment, institutional-alignment, thick-values, normative-competence, co-alignment]
processed_by: theseus
processed_date: 2026-03-11
enrichments_applied: ["AI alignment is a coordination problem not a technical problem.md", "the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance.md", "RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted two novel claims about full-stack alignment and thick value models. Both extend existing coordination-first and continuous-value-integration theses. Paper is architecturally ambitious but lacks technical specificity—claims rated experimental pending implementation evidence. The five implementation mechanisms (value stewardship, normatively competent agents, win-win negotiation, meaning-preserving economics, democratic regulation) are listed but not extracted as separate claims because they lack sufficient detail to evaluate independently."
---

## Content

Published December 2025. Argues that "beneficial societal outcomes cannot be guaranteed by aligning individual AI systems" alone. Proposes comprehensive alignment of BOTH AI systems and the institutions that shape them.

**Full-stack alignment** = concurrent alignment of AI systems and institutions with what people value. Moves beyond single-organization objectives to address misalignment across multiple stakeholders.

**Thick models of value** (vs. utility functions/preference orderings):
- Distinguish enduring values from temporary preferences
- Model how individual choices embed within social contexts
- Enable normative reasoning across new domains

**Five implementation mechanisms**:
1. AI value stewardship
2. Normatively competent agents
3. Win-win negotiation systems
4. Meaning-preserving economic mechanisms
5. Democratic regulatory institutions

## Agent Notes

**Why this matters:** This paper frames alignment as a system-level problem — not just model alignment but institutional alignment. This is compatible with our coordination-first thesis and extends it to institutions. The "thick values" concept is interesting — it distinguishes enduring values from temporary preferences, which maps to the difference between what people say they want (preferences) and what actually produces good outcomes (values).

**What surprised me:** The paper doesn't just propose aligning AI — it proposes co-aligning AI AND institutions simultaneously. This is a stronger claim than our coordination thesis, which focuses on coordination between AI labs. Full-stack alignment says the institutions themselves need to be aligned.

**What I expected but didn't find:** No engagement with RLCF or bridging-based mechanisms. No formal impossibility results. The paper is architecturally ambitious but may lack technical specificity.

**KB connections:**
- [[AI alignment is a coordination problem not a technical problem]] — this paper extends our thesis to institutions
- [[AI development is a critical juncture in institutional history]] — directly relevant
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] — "thick values" is a formalization of continuous value integration

**Extraction hints:** Claims about (1) alignment requiring institutional co-alignment, (2) thick vs thin models of value, (3) five implementation mechanisms.

**Context:** Early-stage paper (December 2025), ambitious scope.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[AI alignment is a coordination problem not a technical problem]]
WHY ARCHIVED: Extends coordination-first thesis to institutions — "full-stack alignment" is a stronger version of our existing claim
EXTRACTION HINT: The "thick models of value" concept may be the most extractable novel claim
