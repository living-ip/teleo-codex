---
type: claim
domain: ai-alignment
secondary_domains: [mechanisms, collective-intelligence]
description: "RLHF aggregates diverse human preferences into model behavior without examining what social choice function it implements or whether it satisfies democratic criteria"
confidence: likely
source: "An & Du 2026 'Methods and Open Problems in Differentiable Social Choice'"
created: 2026-03-11
depends_on:
  - "[[AI alignment is a coordination problem not a technical problem]]"
  - "[[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]"
---

# RLHF implements implicit social choice without normative scrutiny

Reinforcement Learning from Human Feedback (RLHF) and similar alignment methods are social choice mechanisms—they aggregate diverse human preferences into a single model behavior—but the field treats them as technical optimization problems rather than as voting systems that require normative evaluation.

An & Du (2026) argue that "contemporary ML systems already implement social choice mechanisms implicitly and without normative scrutiny." When RLHF aggregates preferences from multiple human raters, it performs the same function as a voting rule: taking diverse inputs and producing a collective decision. However, unlike formal voting theory, which explicitly examines properties like fairness, manipulation-resistance, and representation, ML alignment research focuses on loss functions and convergence without asking what social choice function is being implemented or whether it satisfies democratic criteria.

This matters because different aggregation methods have different normative properties. A simple average treats all preferences equally but may suppress minority views. A median is robust to outliers but may ignore intensity of preference. RLHF's specific aggregation mechanism (reward model training on pairwise comparisons) implements a particular social choice function, but practitioners rarely examine which one or whether it has desirable properties.

The paper positions this as foundational: "RLHF is implicit voting" means that alignment is already doing social choice, just without the theoretical tools or normative frameworks that voting theory has developed over centuries. Making this implicit mechanism explicit would allow researchers to evaluate whether RLHF satisfies criteria like Arrow's independence of irrelevant alternatives, resistance to strategic manipulation, or fair representation of diverse values.

## Evidence

- An & Du (2026) survey of differentiable social choice identifies RLHF as a core application domain where "AI Alignment as Social Choice" is already happening in practice
- The paper explicitly states: "contemporary ML systems already implement social choice mechanisms implicitly and without normative scrutiny"
- Classical social choice theory provides formal criteria (Arrow's theorem, Gibbard-Satterthwaite, etc.) that could evaluate RLHF's aggregation properties but are not currently applied in alignment research
- The survey identifies "pluralistic preference aggregation" as one of 18 open problems in differentiable social choice for AI alignment

## Challenges

Some may argue that RLHF is fundamentally different from voting because it optimizes a continuous reward function rather than selecting discrete alternatives. However, the aggregation problem remains: multiple human preferences must be combined into a single model behavior, which is the core social choice problem regardless of mathematical representation.

---

Relevant Notes:
- [[AI alignment is a coordination problem not a technical problem]]
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]]
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]]
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]

Topics:
- [[domains/ai-alignment/_map]]
- [[core/mechanisms/_map]]
- [[foundations/collective-intelligence/_map]]
