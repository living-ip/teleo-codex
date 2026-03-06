---
description: The dominant alignment paradigms share a core limitation -- human preferences are diverse distributional and context-dependent not reducible to one reward function
type: claim
domain: livingip
created: 2026-02-17
source: "DPO Survey 2025 (arXiv 2503.11701)"
confidence: likely
---

# RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values

RLHF (Reinforcement Learning from Human Feedback) and DPO (Direct Preference Optimization) are the two dominant alignment paradigms as of 2025. RLHF trains a reward model on human preference rankings, then optimizes the language model against it. DPO eliminates the reward model entirely, using the policy itself as an implicit reward function. Both are more computationally tractable than their predecessors.

But both share a fundamental limitation: they implicitly assume human preferences can be accurately captured by a single reward function. In reality, human preferences are diverse, context-dependent, and distributional. A 2025 comprehensive survey (arXiv 2503.11701) identifies four evolving dimensions of DPO research -- data strategy, learning framework, constraint mechanism, and model property -- yet none address the core representational inadequacy. When preferences genuinely conflict between populations, a single reward function cannot represent both without distortion. Since [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]], this is not merely a practical limitation -- Arrow's and Sen's impossibility theorems prove formally that no aggregation procedure can satisfy minimal fairness criteria while faithfully representing diverse preferences.

This is precisely the gap that collective intelligence approaches could fill. Since [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]], compressing diverse human preferences into one function is a special case of the specification problem. And since [[collective intelligence requires diversity as a structural precondition not a moral preference]], a collective alignment architecture could preserve preference diversity structurally rather than flattening it into a single reward signal.

Constitutional AI (Anthropic) partially addresses this by training on principles rather than preference rankings, but the constitution must still be written before training -- it cannot evolve with the values it encodes. The entire paradigm of "align once during training" is what the continuous value-weaving thesis challenges.

---

Relevant Notes:
- [[specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception]] -- reward function reduction is a special case of the value specification problem
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] -- formal mathematical proof that single-function aggregation cannot satisfy fairness constraints
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] -- collective approaches could preserve the preference diversity that single-model approaches flatten
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous weaving addresses the static specification limitation
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] -- the positive research program addressing what RLHF/DPO cannot
- [[democracies fail at information aggregation not coordination because voters are rationally irrational about policy beliefs]] -- preference aggregation problems parallel alignment preference compression
- [[overfitting is the idolatry of data a consequence of optimizing for what we can measure rather than what matters]] -- RLHF's single reward function is a proxy metric that the model overfits to: it optimizes for what the reward function measures rather than the diverse human values it is supposed to capture
- [[regularization combats overfitting by penalizing complexity so models must justify every added factor]] -- pluralistic alignment approaches may function as regularization: rather than fitting one complex reward function, maintaining multiple simpler preference models prevents overfitting to any single evaluator's biases

Topics:
- [[livingip overview]]
- [[coordination mechanisms]]
- [[domains/ai-alignment/_map]]