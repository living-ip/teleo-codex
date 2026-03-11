---
type: source
processed_date: 2026-03-11
source_type: paper
title: "Scaling Human Judgment: Bridging Community Notes and LLMs"
authors:
  - Li et al.
url: https://example.com/li-2025-scaling-human-judgment
date: 2025-06
---

# Scaling Human Judgment: Bridging Community Notes and LLMs

## Summary

Li et al. propose Reinforcement Learning from Collective Feedback (RLCF), which adapts Community Notes' bridging-based ranking algorithm to AI alignment. The architecture separates AI generation from human evaluation, using matrix factorization to identify outputs that achieve cross-partisan agreement.

## Key Facts

- RLCF uses Community Notes' matrix factorization approach: y_ij = w_i * x_j + b_i + c_j
- The note-specific intercept c_j correlates with cross-partisan agreement
- Architecture separates generation (AI) from evaluation (humans) from selection (bridging algorithm)
- Paper identifies risks: homogenization toward inoffensive content, helpfulness hacking, scaling assumptions

## Extracted Claims

- [[rlcf-architecture-separates-ai-generation-from-human-evaluation-with-bridging-based-selection]]
- [[human-rating-authority-as-alignment-mechanism-assumes-rater-capacity-scales-with-ai-generation-volume]]
- [[bridging-based-consensus-mechanisms-risk-homogenization-toward-optimally-inoffensive-content]]
- [[helpfulness-hacking-emerges-when-ai-optimizes-for-human-approval-ratings-rather-than-accuracy]]

## Processing Notes

Added: 2026-03-11
Status: Archived after claim extraction