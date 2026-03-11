---
type: claim
claim_type: empirical
confidence: experimental
tags:
  - ai-alignment
  - rlhf
  - fairness
  - pareto-improvement
source:
  - "[[2024-02-00-chakraborty-maxmin-rlhf]]"
---

MaxMin alignment improves minority group performance without compromising majority outcomes.

Chakraborty et al. (2024) demonstrate that MaxMin RLHF achieves approximately Pareto improvements over single-reward RLHF in their experiments:

**Tulu2-7B results (two-group preference dataset)**:
- Single-reward RLHF: 70.4% majority win rate, 42% minority win rate
- MaxMin RLHF: ~56.67% win rate for BOTH groups

This represents a ~33% improvement for the minority group (42% → 56.67%) while the majority group experiences only a ~13.7 percentage point reduction (70.4% → 56.67%). The minority group gains substantially more utility than the majority loses, suggesting an overall welfare improvement under most social welfare functions.

The result is "approximately Pareto" rather than strictly Pareto because the majority group does experience some reduction in win rate. However, the egalitarian redistribution substantially reduces alignment disparity while maintaining reasonable performance for both groups.

**Important scale caveat**: These experiments used GPT-2 and Tulu2-7B, which are 1-2 orders of magnitude smaller than frontier models (GPT-4, Claude-3). Alignment tax often increases with model scale, so the Pareto improvement finding may not hold at frontier model scales. This limitation should be considered when evaluating the practical applicability of these results.

Related: [[maxmin-rlhf-applies-egalitarian-social-choice-to-alignment-by-maximizing-minimum-group-utility]], [[single-reward-rlhf-cannot-align-models-with-diverse-human-preferences]]