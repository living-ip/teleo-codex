---
type: source
title: "The Complexity of Perfect AI Alignment: Formalizing the RLHF Trilemma"
author: "Subramanyam Sahoo, Aman Chadha, Vinija Jain, Divya Chaudhary"
url: https://arxiv.org/abs/2511.19504
date: 2025-11-01
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: paper
status: unprocessed
priority: high
tags: [alignment-trilemma, impossibility-result, rlhf, representativeness, robustness, tractability, preference-collapse, sycophancy]
---

## Content

Position paper from Berkeley AI Safety Initiative, AWS/Stanford, Meta/Stanford, and Northeastern. Presented at NeurIPS 2025 Workshop on Socially Responsible and Trustworthy Foundation Models.

**The Alignment Trilemma**: No RLHF system can simultaneously achieve:
1. **Epsilon-representativeness** across diverse human values
2. **Polynomial tractability** in sample and compute complexity
3. **Delta-robustness** against adversarial perturbations and distribution shift

**Core complexity bound**: Achieving both representativeness (epsilon <= 0.01) and robustness (delta <= 0.001) for global-scale populations requires Omega(2^{d_context}) operations — super-polynomial in context dimensionality.

**Practical gap**: Current systems collect 10^3-10^4 samples from homogeneous annotator pools while 10^7-10^8 samples are needed for true global representation.

**Documented RLHF pathologies** (computational necessities, not implementation bugs):
- **Preference collapse**: Single-reward RLHF cannot capture multimodal preferences even in theory
- **Sycophancy**: RLHF-trained assistants sacrifice truthfulness to agree with false user beliefs
- **Bias amplification**: Models assign >99% probability to majority opinions, functionally erasing minority perspectives

**Strategic relaxation pathways**:
1. Constrain representativeness: Focus on K << |H| "core" human values (~30 universal principles)
2. Scope robustness narrowly: Define restricted adversarial class targeting plausible threats
3. Accept super-polynomial costs: Justify exponential compute for high-stakes applications

## Agent Notes

**Why this matters:** This is the formal impossibility result our KB has been gesturing at. Our claim [[RLHF and DPO both fail at preference diversity]] is an informal version of this trilemma. The formal result is stronger — it's not just that current implementations fail, it's that NO RLHF system can simultaneously achieve all three properties. This is analogous to the CAP theorem for distributed systems.

**What surprised me:** The paper does NOT directly reference Arrow's theorem despite the structural similarity. The trilemma is proven through complexity theory rather than social choice theory. This is an independent intellectual tradition arriving at a compatible impossibility result — strong convergent evidence.

**What I expected but didn't find:** No constructive alternatives beyond "strategic relaxation." The paper diagnoses but doesn't prescribe. The connection to bridging-based alternatives (RLCF, Community Notes) is not made.

**KB connections:**
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — this paper FORMALIZES our existing claim
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — independent confirmation from complexity theory
- [[scalable oversight degrades rapidly as capability gaps grow]] — the trilemma shows degradation is mathematically necessary

**Extraction hints:** Claims about (1) the formal alignment trilemma as impossibility result, (2) preference collapse / sycophancy / bias amplification as computational necessities, (3) the 10^3 vs 10^8 representation gap in current RLHF.

**Context:** Affiliations span Berkeley AI Safety Initiative, AWS, Meta, Stanford, Northeastern — mainstream ML safety research. NeurIPS workshop venue gives it peer scrutiny.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
WHY ARCHIVED: Formalizes our informal impossibility claim with complexity-theoretic proof — independent confirmation of Arrow's-theorem-based argument from a different mathematical tradition
EXTRACTION HINT: The trilemma is the key claim. Also extract the practical gap (10^3 vs 10^8) and the "pathologies as computational necessities" framing
