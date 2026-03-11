---
type: claim
claim_type: empirical
confidence: experimental
tags:
  - ai-alignment
  - rlhf
  - preference-diversity
  - social-choice
source:
  - "[[2024-02-00-chakraborty-maxmin-rlhf]]"
---

Single-reward RLHF cannot align models with diverse human preferences.

Chakraborty et al. (2024) provide strong empirical evidence that standard RLHF with a single reward model trained on aggregated preferences systematically fails when human preferences are diverse. Their experiments on GPT-2 and Tulu2-7B demonstrate that:

1. **Empirical demonstration of alignment failure**: When preferences diverge across groups, single-reward RLHF optimizes for the majority preference at the expense of minority groups, creating what they term "alignment disparity."

2. **Tulu2-7B experiments**: On a two-group preference dataset, single-reward RLHF achieved 70.4% win rate for the majority group but only 42% for the minority group—worse than random.

3. **GPT-2 qualitative analysis**: In creative writing tasks with different stylistic preferences, the single reward model collapsed diverse preferences into a single mode.

This empirical finding challenges the assumption that aggregating preferences into a single reward signal preserves alignment across diverse populations. The evidence suggests this is a fundamental limitation of the single-reward approach rather than a tuning issue.

**Scale limitations**: These results are from models 1-2 orders of magnitude smaller than frontier models (GPT-4, Claude-3). Alignment tax and preference aggregation challenges may behave differently at larger scales.

Related: [[maxmin-rlhf-applies-egalitarian-social-choice-to-alignment-by-maximizing-minimum-group-utility]], [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]]