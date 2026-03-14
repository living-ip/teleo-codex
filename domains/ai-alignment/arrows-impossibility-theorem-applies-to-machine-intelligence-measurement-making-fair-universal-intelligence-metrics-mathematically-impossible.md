---
type: claim
domain: ai-alignment
secondary_domains: [critical-systems]
description: "Arrow's Impossibility Theorem extends from preference aggregation to intelligence measurement: no agent-environment MIM can satisfy Pareto Efficiency, Independence of Irrelevant Alternatives, and Non-Oligarchy simultaneously"
confidence: likely
source: "Oswald, J.T., Ferguson, T.M., & Bringsjord, S. (2025). 'On the Arrowian Impossibility of Machine Intelligence Measures.' AGI 2025 Conference, Springer LNCS vol. 16058"
created: 2026-03-11
status: processed
---

# Arrow's Impossibility Theorem applies to machine intelligence measurement, making fair universal intelligence metrics mathematically impossible

Oswald, Ferguson, and Bringsjord (2025) prove that Arrow's Impossibility Theorem—originally about aggregating preferences into a single social choice—applies equally to measuring machine intelligence in agent-environment frameworks. The proof demonstrates that no machine intelligence measure (MIM) can simultaneously satisfy analogs of Arrow's three fairness conditions:

1. **Pareto Efficiency** — If all environments prefer agent A over agent B, the measure must rank A higher
2. **Independence of Irrelevant Alternatives** — The ranking of A vs B cannot depend on the presence of a third agent C
3. **Non-Oligarchy** — No subset of environments can dictate the overall ranking

**Affected measures include:**
- Legg-Hutter Intelligence (the dominant formal definition in the literature)
- Chollet's Intelligence Measure (the theoretical basis for the ARC benchmark)
- "A large class of MIMs" in agent-environment frameworks (per abstract)

The impossibility is structural, not empirical—it's a mathematical constraint on what kinds of measurement functions can exist, not a limitation of current implementations or a gap that better engineering can close.

## Why This Matters for Alignment

This result creates a meta-level underspecification problem: if we cannot measure intelligence fairly, the alignment target becomes even more underspecified than previously understood. You cannot align an AI system to a benchmark if the benchmark itself violates basic fairness conditions. The problem is not just that we disagree about what intelligence means (preference aggregation problem), but that no measurement function can exist that satisfies fairness criteria simultaneously.

This extends the impossibility pattern from social choice theory (Arrow's original theorem) to the measurement layer itself—independent of preference aggregation or objective specification problems.

## Evidence

**Primary source:** Oswald, J.T., Ferguson, T.M., & Bringsjord, S. (2025). "On the Arrowian Impossibility of Machine Intelligence Measures." *Proceedings of AGI 2025* (Conference on Artificial General Intelligence), Springer LNCS vol. 16058.

**Publication venue:** AGI 2025—the premier conference focused on general intelligence research. Bringsjord is a well-known AI formalist at Rensselaer Polytechnic Institute with extensive work on formal verification and AI safety.

**Scope:** The abstract confirms the result applies to "agent-environment-based MIMs" and explicitly names Legg-Hutter and Chollet measures as affected cases.

## Limitations and Open Questions

Full paper not accessed (paywalled). Cannot verify:
- Exact proof technique or whether it uses Arrow's original machinery directly or requires adaptation
- Whether constructive workarounds exist (analogous to how some alignment impossibilities have practical approximations or escape clauses)
- Precise scope conditions (what classes of MIMs, if any, escape the impossibility)
- Whether the impossibility is as severe for measurement as it is for preference aggregation, or whether measurement allows partial satisfactions

---

**Related claims:**
- safe AI development requires building alignment mechanisms before scaling capability.md
- specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception.md
- AI alignment is a coordination problem not a technical problem.md
- pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state.md

**Topics:**
- domains/ai-alignment/_map
- domains/critical-systems/_map
