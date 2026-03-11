---
type: claim
domain: ai-alignment
description: "Formal impossibility result: single-reward RLHF alignment gap grows proportionally with minority preference distinctiveness and inversely with representation"
confidence: likely
source: "Chakraborty et al. (2024) MaxMin-RLHF paper, ICML 2024"
created: 2024-02-14
depends_on: ["RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values"]
---

# Single-reward RLHF cannot adequately align language models when human preferences are diverse across subpopulations

Chakraborty et al. (2024) establish a formal impossibility result: standard RLHF using a singular reward model cannot adequately align language models when human preferences are diverse across subpopulations. The alignment gap is not a practical limitation but a mathematical constraint that scales with preference diversity.

Specifically: alignment gap is proportional to how distinct minority preferences are and inversely proportional to their representation in the training data. High subpopulation diversity inevitably produces greater alignment failure when aggregated into a single reward function.

## Evidence

**Empirical validation at Tulu2-7B scale with 10:1 majority:minority ratio:**
- Single-reward RLHF: 70.4% accuracy on majority group, 42% on minority group
- Degradation: 28 percentage points from representation imbalance alone, independent of model capability limits

**GPT-2 scale qualitative demonstration:**
- Single RLHF optimized for positive sentiment (majority preference) while completely ignoring conciseness (minority preference)
- Demonstrates zero-sum tradeoff in practice: cannot simultaneously satisfy both groups with single aggregated reward

## Relationship to Existing Work

This formalizes the empirical observation in [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]. The impossibility result provides mathematical grounding for why [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]].

The result is independent of but convergent with Arrow's impossibility theorem applications to alignment, showing the problem emerges from multiple theoretical directions.

---

Relevant Notes:
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[some disagreements are permanently irreducible because they stem from genuine value differences not information gaps and systems must map rather than eliminate them]]

Topics:
- [[domains/ai-alignment/_map]]
