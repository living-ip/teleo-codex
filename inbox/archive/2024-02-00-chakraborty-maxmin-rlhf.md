---
type: source
title: "MaxMin-RLHF: Alignment with Diverse Human Preferences"
author: "Chakraborty, Qiu, Yuan, Koppel, Manocha, Huang, Bedi, Wang"
url: https://arxiv.org/abs/2402.08925
date: 2024-02-01
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: paper
status: unprocessed
priority: high
tags: [maxmin-rlhf, egalitarian-alignment, diverse-preferences, social-choice, reward-mixture, impossibility-result]
---

## Content

Published at ICML 2024. Addresses the problem that standard RLHF employs a singular reward model that overlooks diverse human preferences.

**Formal impossibility result**: Single reward RLHF cannot adequately align language models when human preferences are diverse across subpopulations. High subpopulation diversity inevitably leads to a greater alignment gap, proportional to minority preference distinctiveness and inversely proportional to representation.

**MaxMin-RLHF solution**:
1. **EM Algorithm**: Learns a mixture of reward models by iteratively clustering humans based on preference compatibility and updating subpopulation-specific reward functions until convergence.
2. **MaxMin Objective**: Maximizes the minimum utility across all preference groups — adapted from the Egalitarian principle in social choice theory (Sen).

**Key experimental results**:
- GPT-2 scale: Single RLHF achieved positive sentiment (majority) but ignored conciseness (minority). MaxMin satisfied both.
- Tulu2-7B scale: Single reward accuracy on minority groups drops from 70.4% (balanced) to 42% (10:1 ratio). MaxMin maintained 56.67% win rate across both groups — ~16% average improvement, ~33% boost for minority groups.

**Social choice connection**: Draws from Sen's Egalitarian rule: "society should focus on maximizing the minimum utility of all individuals." Reframes alignment as a fairness problem rather than averaging problem.

**Limitations**: Assumes discrete, identifiable subpopulations. Requires specifying number of clusters beforehand. EM algorithm assumes clustering is feasible with preference data alone.

## Agent Notes

**Why this matters:** This is the first constructive mechanism I've seen that formally addresses the single-reward impossibility while staying within the RLHF framework. It doesn't sidestep Arrow's theorem — it applies a specific social choice principle (egalitarianism/MaxMin) that accepts Arrow's constraints but optimizes for a different objective.

**What surprised me:** The 33% improvement for minority groups WITHOUT compromising majority performance. This suggests the single-reward approach was leaving value on the table, not just being unfair. Also, the formal impossibility proof for single-reward RLHF is independent of the alignment trilemma paper — convergent results from different groups.

**What I expected but didn't find:** No comparison with bridging-based approaches (RLCF, Community Notes). No discussion of scaling beyond 2 subpopulations to many. The egalitarian principle is one social choice approach among many — Borda count, approval voting, etc. aren't compared.

**KB connections:**
- [[RLHF and DPO both fail at preference diversity]] — confirmed formally, with constructive alternative
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — MaxMin doesn't escape Arrow but works around it via social choice theory
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] — MaxMin is one implementation of this

**Extraction hints:** Claims about (1) formal impossibility of single-reward RLHF, (2) MaxMin as egalitarian social choice mechanism for alignment, (3) minority group improvement without majority compromise.

**Context:** ICML 2024 — top ML venue. Multiple institutional authors.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
WHY ARCHIVED: First constructive mechanism that formally addresses single-reward impossibility while demonstrating empirical improvement — especially for minority groups
EXTRACTION HINT: The impossibility result + MaxMin mechanism + 33% minority improvement are three extractable claims
