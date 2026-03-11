---
type: source
title: "Direct Alignment with Heterogeneous Preferences (EM-DPO)"
author: "Various (EAAMO 2025)"
url: https://conference2025.eaamo.org/conference_information/accepted_papers/papers/direct_alignment.pdf
date: 2025-01-01
domain: ai-alignment
secondary_domains: []
format: paper
status: unprocessed
priority: medium
tags: [pluralistic-alignment, EM-algorithm, preference-clustering, ensemble-LLM, fairness]
---

## Content

EM-DPO uses expectation-maximization to simultaneously uncover latent user preference types and train an ensemble of LLMs tailored to each type.

**Mechanism:**
- EM algorithm discovers latent preference subpopulations from preference data
- Trains separate LLMs for each discovered type
- MinMax Regret Aggregation (MMRA) combines ensembles at inference when user type unknown
- Key insight: binary comparisons insufficient for preference identifiability; rankings over 3+ responses needed

**Aggregation:**
- MMRA based on egalitarian social choice theory (min-max regret fairness criterion)
- Ensures no preference group is severely underserved during deployment
- Works within Arrow's framework using specific social choice principle

## Agent Notes
**Why this matters:** Combines mechanism design (egalitarian social choice) with ML (EM clustering). The insight about binary comparisons being insufficient is technically important — it explains why standard RLHF/DPO with pairwise comparisons systematically fails at diversity.
**What surprised me:** The binary-vs-ranking distinction. If binary comparisons can't identify latent preferences, then ALL existing pairwise RLHF/DPO deployments are structurally blind to preference diversity. This is a fundamental limitation, not just a practical one.
**What I expected but didn't find:** No head-to-head comparison with PAL or MixDPO. No deployment results beyond benchmarks.
**KB connections:** Addresses [[RLHF and DPO both fail at preference diversity]] with a specific mechanism. The egalitarian aggregation connects to [[some disagreements are permanently irreducible because they stem from genuine value differences not information gaps]].
**Extraction hints:** Extract claims about: (1) binary comparisons being formally insufficient for preference identification, (2) EM-based preference type discovery, (3) egalitarian aggregation as pluralistic deployment strategy.
**Context:** EAAMO 2025 — Equity and Access in Algorithms, Mechanisms, and Optimization. The fairness focus distinguishes this from PAL's efficiency focus.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values
WHY ARCHIVED: The binary-comparison insufficiency claim is a novel formal result that strengthens the case against standard alignment approaches
EXTRACTION HINT: Focus on the formal insufficiency of binary comparisons and the EM + egalitarian aggregation combination
