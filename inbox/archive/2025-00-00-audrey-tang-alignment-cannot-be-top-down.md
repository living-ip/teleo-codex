---
type: source
title: "AI Alignment Cannot Be Top-Down"
author: "Audrey Tang (@audreyt)"
url: https://ai-frontiers.org/articles/ai-alignment-cannot-be-top-down
date: 2025-01-01
domain: ai-alignment
secondary_domains: [collective-intelligence, mechanisms]
format: report
status: unprocessed
priority: high
tags: [democratic-alignment, RLCF, pluralistic-alignment, community-feedback, Taiwan, civic-AI]
flagged_for_rio: ["RLCF as market-like mechanism — rewards for bridging-based consensus similar to prediction market properties"]
flagged_for_clay: ["Community Notes model as narrative infrastructure — how does bridging-based consensus shape public discourse?"]
---

## Content

Audrey Tang (Taiwan's cyber ambassador, first digital minister, 2025 Right Livelihood Laureate) argues that current AI alignment — controlled by a small circle of corporate researchers — cannot account for diverse global values. Alignment must be democratized through "attentiveness."

Core argument: Top-down alignment is structurally insufficient because:
1. Current alignment is "highly vertical, dominated by a limited number of actors within a few private AI corporations"
2. A PsyArXiv study shows "as cultural distance from the United States increases, GPT's alignment with local human values declines"
3. "When the linguistic and moral frameworks of public reasoning are mediated by a handful of culturally uniform systems, democratic pluralism will erode"

Taiwan precedent: Taiwan combated AI-generated deepfake fraud by sending 200,000 random texts asking citizens for input. A representative assembly of 447 Taiwanese deliberated solutions, achieving "unanimous parliamentary support" for new laws within months.

Proposed alternative — the "6-Pack of Care":
1. **Industry Norms**: Public model specifications and clause-level transparency making reasoning auditable
2. **Market Design**: Portability mandates, procurement standards, subscription models incentivizing care over capture
3. **Community-Scale Assistants**: Locally-tuned AI using Reinforcement Learning from Community Feedback (RLCF)

RLCF: Rewards models for output that people with opposing views find reasonable. Transforms disagreement into sense-making. Implemented through platforms like Polis. Based on Community Notes model (Twitter/X) where notes are "surfaced only when rated helpful by people with differing views."

Key quote: "We, the people, are the alignment system we have been waiting for."

## Agent Notes
**Why this matters:** This is the most complete democratic alignment framework I've encountered. It bridges theory (RLCF as technical mechanism), institutional design (6-Pack of Care), and empirical precedent (Taiwan's civic AI). It directly challenges monolithic RLHF by proposing a mechanism that handles preference diversity structurally.

**What surprised me:** RLCF. I didn't expect a concrete technical alternative to RLHF that structurally handles the preference diversity problem. By rewarding bridging consensus (agreement across disagreeing groups) rather than majority preference, RLCF may sidestep Arrow's impossibility theorem — it's not aggregating preferences into one function, it's finding the Pareto improvements that all groups endorse.

**What I expected but didn't find:** No empirical evaluation of RLCF at scale. The Taiwan civic AI precedent is impressive but it's about policy, not model alignment. I need to find whether RLCF has been tested on frontier models.

**KB connections:**
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — RLCF may be a partial workaround (bridging consensus ≠ preference aggregation)
- [[RLHF and DPO both fail at preference diversity]] — RLCF explicitly addresses this
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones]] — extended by Taiwan precedent
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]] — strongly supported
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously]] — RLCF as operational mechanism

**Extraction hints:** Key claims: (1) RLCF as bridging-based alternative to RLHF, (2) cultural distance degrades alignment, (3) the 6-Pack of Care as integrated framework. The Arrow's workaround angle is novel.

**Context:** Audrey Tang is arguably the most credible voice for democratic technology governance. Real implementation experience, not just theory. Her Community Notes reference is important — it's an at-scale proof that bridging-based consensus works in adversarial environments.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
WHY ARCHIVED: Proposes RLCF as a concrete technical alternative that may structurally handle preference diversity by rewarding bridging consensus rather than aggregating preferences
EXTRACTION HINT: Focus on RLCF mechanism (bridging consensus vs. majority rule), the cultural distance finding, and the 6-Pack framework. The Arrow's theorem workaround angle is the highest-value extraction.
