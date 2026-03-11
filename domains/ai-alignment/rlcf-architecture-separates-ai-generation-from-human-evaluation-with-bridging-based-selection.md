---
type: claim
title: RLCF architecture separates AI generation from human evaluation with bridging-based selection
domains:
  - ai-alignment
  - machine-learning
confidence: established
created: 2025-03-11
---

# RLCF architecture separates AI generation from human evaluation with bridging-based selection

Reinforcement Learning from Community Feedback (RLCF) is a proposed alignment architecture that decouples AI content generation from human evaluation by having AI systems generate multiple candidate responses, then using bridging-based consensus mechanisms (adapted from Community Notes) to select outputs that minimize disagreement across diverse human raters.

## Architecture Components

1. **Generation phase**: AI produces multiple candidate responses to each prompt
2. **Evaluation phase**: Diverse human raters score candidates independently
3. **Selection mechanism**: Bridging algorithm identifies responses that achieve broad agreement across rater demographics/viewpoints
4. **Training signal**: Selected responses provide reward signal for RL fine-tuning

## Key Properties

- Aims to achieve pluralistic alignment by incorporating diverse human values
- Reduces individual rater influence through aggregation
- Separates "what AI can say" from "what AI should say"
- Scales human oversight by amortizing evaluation across multiple candidates

## Evidence

- Li et al. (2025) propose RLCF as extension of RLHF using Community Notes methodology
- Architecture builds on established RLHF techniques but replaces simple preference aggregation with bridging-based selection
- Community Notes has demonstrated ability to achieve cross-partisan agreement on factual claims

## Additional Evidence (challenge)

Note: The empirical success of Community Notes in achieving cross-partisan consensus does not automatically validate RLCF's ability to achieve pluralistic alignment. The challenge identified by Siu (2025) regarding homogenization toward inoffensive content suggests that **bridging-based selection may not be the optimal mechanism for pluralistic alignment**, even if pluralistic alignment remains a valid goal. This challenges the implementation approach rather than the underlying objective.

## Extraction Notes

- Source: Li et al., "Scaling Human Oversight" (June 2025)
- Added: 2025-03-11
- RLCF is proposed but not yet deployed at scale