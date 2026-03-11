---
type: claim
title: Human rating authority assumes rater capacity scales with AI generation
domains:
  - ai-alignment
  - scalability
confidence: experimental
created: 2025-03-11
---

# Human rating authority assumes rater capacity scales with AI generation

RLCF and similar human-feedback-based alignment approaches implicitly assume that human rating capacity can scale proportionally with AI generation volume. However, as AI systems become more capable and prolific, the volume of outputs requiring evaluation may grow faster than available human oversight capacity, creating a fundamental bottleneck.

## Evidence

- Li et al. (2025) note: "The scalability of human oversight remains an open question as AI generation capacity increases exponentially"
- Community Notes requires multiple independent ratings per item, creating O(n) human cost for each AI output
- Current RLHF systems already face rater availability constraints at frontier labs

## Mechanism

The bottleneck emerges from:
1. AI generation scales with compute (exponential growth trajectory)
2. Human rating capacity scales with human labor hours (linear at best)
3. Quality oversight requires sustained attention, limiting throughput per rater
4. As the gap widens, systems must either reduce oversight coverage or accept delays

## Implications

- May force transition from comprehensive human oversight to sampling-based approaches
- Creates pressure to automate rating (AI-rating-AI), which reintroduces alignment concerns
- Suggests human rating authority works only in regimes where AI output volume remains bounded
- Related to broader concerns about [[economic forces push humans out of every cognitive loop]] <!-- claim pending -->

## Extraction Notes

- Source: Li et al., "Scaling Human Oversight" (June 2025)
- Added: 2025-03-11
- This identifies a structural limitation rather than a temporary engineering challenge