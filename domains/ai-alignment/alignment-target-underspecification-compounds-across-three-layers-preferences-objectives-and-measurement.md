---
type: claim
domain: ai-alignment
description: "Three independent impossibility results create compounding underspecification at preference aggregation, objective specification, and intelligence measurement layers"
confidence: experimental
source: "Synthesis from Oswald et al. (2025) extending existing alignment impossibility results; see Bostrom (2014), Hadfield-Menell et al. (2016), and others for component impossibilities"
created: 2026-03-11
status: processed
enrichments: ["safe AI development requires building alignment mechanisms before scaling capability.md", "specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception.md"]
---

# Alignment target underspecification compounds across three layers: preferences, objectives, and measurement

The alignment problem faces irreducible underspecification at three distinct layers, each with its own mathematical or computational impossibility:

**Layer 1: Preference Aggregation**
Arrow's Impossibility Theorem shows we cannot aggregate diverse human preferences into a single coherent objective without violating at least one fairness condition (Pareto Efficiency, Independence of Irrelevant Alternatives, or Non-Dictatorship). This is not a limitation of current voting systems—it's a mathematical constraint on what preference aggregation functions can exist.

**Layer 2: Objective Specification**
Hidden complexity in human values makes encoding goals in code intractable. Our goals contain implicit structure comparable to visual perception—we cannot fully specify what we want because much of our value system is tacit, context-dependent, and discovered through interaction rather than introspection. This creates a specification gap that no amount of better language design can close.

**Layer 3: Intelligence Measurement**
Oswald, Ferguson, and Bringsjord (2025) prove that Arrow's Impossibility Theorem applies to machine intelligence measures themselves. No agent-environment-based MIM can simultaneously satisfy Pareto Efficiency, Independence of Irrelevant Alternatives, and Non-Oligarchy. This means we cannot even define what "intelligence" means in a way that satisfies basic fairness criteria.

## Why These Are Three Distinct Problems

These are not three descriptions of the same underlying issue—they are three independent impossibilities that compound:

- **Even if we could measure intelligence fairly** (we cannot), we still could not specify objectives precisely (we cannot)
- **Even if we could specify objectives precisely** (we cannot), we still could not aggregate preferences fairly (we cannot)
- **Even if we could aggregate preferences fairly** (we cannot), we still would not have solved the measurement problem

Each layer adds its own irreducible underspecification. The measurement impossibility means we cannot even define the capability we're trying to align, independent of the preference aggregation and specification problems.

## Implications for Alignment Strategy

This three-layer structure suggests that alignment cannot be solved by:
- **Better benchmarks** — The measurement layer is fundamentally constrained by Arrow's theorem
- **Better value learning** — The preference aggregation layer is fundamentally constrained by Arrow's theorem
- **Better specification languages** — The objective encoding layer is fundamentally constrained by hidden complexity

The convergence of impossibility results across four independent intellectual traditions (social choice theory, complexity theory, multi-objective optimization, intelligence measurement) points toward a structural reality: alignment as traditionally conceived—converging on a single coherent objective that satisfies fairness criteria—may be asking for something mathematics cannot provide.

## Alternative Framing: Alignment as Coordination

If alignment-as-convergence is impossible, the viable path may be alignment-as-coordination: building systems that navigate irreducible disagreement rather than eliminating it. This requires different infrastructure:
- Collective intelligence mechanisms that aggregate without requiring consensus
- Pluralistic governance structures that accommodate irreducibly diverse values
- Continuous value negotiation rather than fixed objective functions
- Mechanisms for handling persistent, principled disagreement

This shifts the problem from "how do we specify the right objective" to "how do we build systems that remain safe and beneficial while operating under irreducible value pluralism."

---

**Related claims:**
- safe AI development requires building alignment mechanisms before scaling capability.md
- specifying human values in code is intractable because our goals contain hidden complexity comparable to visual perception.md
- AI alignment is a coordination problem not a technical problem.md
- pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state.md
- designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm.md

**Topics:**
- domains/ai-alignment/_map
