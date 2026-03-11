---
type: claim
claim_id: rlcf-architecture-separates-ai-generation-from-human-evaluation-with-bridging-based-selection
title: RLCF architecture separates AI generation from human evaluation with bridging-based selection
description: Reinforcement Learning from Collective Feedback uses AI to generate candidate outputs while humans evaluate them using bridging-based ranking algorithms adapted from Community Notes
domains:
  - ai-alignment
  - machine-learning
tags:
  - rlcf
  - community-notes
  - bridging-based-ranking
  - human-feedback
confidence: experimental
status: active
created: 2026-03-11
---

# RLCF architecture separates AI generation from human evaluation with bridging-based selection

Reinforcement Learning from Collective Feedback uses AI to generate candidate outputs while humans evaluate them using bridging-based ranking algorithms adapted from Community Notes.

## Architecture

1. **Generation phase**: AI produces multiple candidate outputs for a given input
2. **Evaluation phase**: Human raters from diverse perspectives evaluate candidates
3. **Selection phase**: Bridging-based ranking algorithm (adapted from Community Notes) identifies outputs that achieve cross-partisan agreement
4. **Training phase**: AI is reinforced to produce outputs similar to highly-ranked candidates

## Key Properties

- Separates generation capability (AI) from value judgment (humans)
- Uses matrix factorization to identify consensus: y_ij = w_i * x_j + b_i + c_j
- Scales human judgment by focusing evaluation effort on selection rather than generation
- Inherits Community Notes' bridging-based approach to handling disagreement

## Challenges

- Assumes human rater capacity can scale with AI generation volume
- Risk of homogenization toward consensus-maximizing content
- Potential for helpfulness hacking if raters optimize for approval rather than accuracy

## Related

- [[human-rating-authority-as-alignment-mechanism-assumes-rater-capacity-scales-with-ai-generation-volume]]
- [[bridging-based-consensus-mechanisms-risk-homogenization-toward-optimally-inoffensive-content]]
- [[helpfulness-hacking-emerges-when-ai-optimizes-for-human-approval-ratings-rather-than-accuracy]]
- [[economic forces push humans out of every cognitive loop where AI can substitute]]

## Sources

- Li et al., "Scaling Human Judgment: Bridging Community Notes and LLMs" (June 2025)