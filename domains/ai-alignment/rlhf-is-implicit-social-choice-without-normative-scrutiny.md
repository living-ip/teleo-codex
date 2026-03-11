---
type: claim
domain: ai-alignment
secondary_domains: [mechanisms, collective-intelligence]
description: "Current RLHF implementations make social choice decisions about evaluator selection and preference aggregation without applying formal social choice theory"
confidence: likely
source: "Conitzer et al. 2024 ICML position paper, multi-institutional collaboration including Stuart Russell"
created: 2026-03-11
depends_on: []
challenged_by: []
---

# RLHF is implicit social choice without normative scrutiny

Reinforcement Learning from Human Feedback (RLHF) necessarily makes social choice decisions—which humans provide input, what feedback is collected, how preferences are aggregated, and how aggregated preferences are used—but current implementations make these choices without applying formal social choice theory or normative scrutiny.

Conitzer et al. (2024) argue that every RLHF system implicitly answers four social choice questions:
1. **Evaluator selection**: Who gets to provide feedback? (convenience sampling vs. representative sampling vs. deliberative assemblies)
2. **Feedback format**: What kind of input is collected? (binary preferences, rankings, ratings, approval votes, free-form text)
3. **Aggregation method**: How are diverse preferences combined? (simple averaging, voting rules, social welfare functions)
4. **Deployment**: How are aggregated preferences used? (single reward model, multiple models, pluralistic systems)

Current practice treats these as engineering decisions rather than normative choices with profound implications for whose values shape AI behavior. The paper demonstrates that RLHF practitioners are "reinventing the wheel badly"—making ad-hoc choices about problems that social choice theory has studied rigorously for 70+ years.

The lack of normative scrutiny is particularly problematic because:
- Convenience sampling (e.g., Mechanical Turk, contractor pools) systematically excludes perspectives
- Simple preference averaging assumes commensurability across evaluators with different contexts and stakes
- Binary preference elicitation cannot capture intensity of preference or context-dependence
- Single reward model deployment forces artificial consensus on genuinely incompatible values

This matters because these implicit choices determine whose values are encoded in systems that will shape billions of lives. The field needs to make social choice decisions explicit and subject them to the same rigor applied to technical architecture choices.

---

Relevant Notes:
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
- [[AI alignment is a coordination problem not a technical problem]]
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]]

Topics:
- [[domains/ai-alignment/_map]]
- [[core/mechanisms/_map]]
- [[foundations/collective-intelligence/_map]]
