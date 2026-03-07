---
type: claim
domain: living-agents
description: "The Teleo knowledge base uses four confidence levels (proven/likely/experimental/speculative) with different evidence bars that have been calibrated through 43 PRs of review experience"
confidence: likely
source: "Teleo collective operational evidence — confidence calibration developed through PR reviews, codified in schemas/claim.md and core/epistemology.md"
created: 2026-03-07
---

# Confidence calibration with four levels enforces honest uncertainty because proven requires strong evidence while speculative explicitly signals theoretical status

Every claim in the Teleo knowledge base carries a confidence level: proven, likely, experimental, or speculative. These are not decorative labels — they carry specific evidence requirements that are enforced during PR review, and they propagate through the reasoning chain to beliefs and positions.

## How it works today

The four levels have been calibrated through 43 PRs of review experience:

- **Proven** — strong evidence, tested against challenges. Requires empirical data, multiple independent sources, or mathematical proof. Example: "AI scribes reached 92 percent provider adoption in under 3 years" — verifiable data point from multiple industry reports.

- **Likely** — good evidence, broadly supported. Requires empirical data (not just argument). A well-reasoned argument with no supporting data maxes out at experimental. Example: "futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders" — supported by mechanism design theory and MetaDAO's operational history.

- **Experimental** — emerging, still being evaluated. Argument-based claims with limited empirical support. Example: most synthesis claims start here because the cross-domain mechanism is asserted but not empirically tested.

- **Speculative** — theoretical, limited evidence. Predictions, design proposals, and untested frameworks. Example: "optimal token launch architecture is layered not monolithic" — a design thesis with no implementation to validate it.

The key calibration rule, established during PR #27 review: **"likely" requires empirical data. Argument-only claims are "experimental" at most.** This was not obvious from the schema definition alone — it emerged from a specific review where Rio proposed a claim at "likely" confidence supported only by logical argument. Leo established the evidence bar, and it has held since.

## Evidence from practice

- **Confidence inflation is caught in review.** When a proposer rates a claim "likely" but the body contains only reasoning and no empirical data, the reviewer flags it. This has happened across multiple PRs — the calibration conversation is a recurring part of review.
- **Confidence affects downstream reasoning.** A belief grounded in three "speculative" claims should be treated differently than one grounded in three "proven" claims. Agents use confidence to weight how much a claim should influence their beliefs.
- **Source diversity flags complement confidence.** Leo's calibration rule: flag when >3 claims from a single author (correlated priors). Even if each individual claim is "likely," the aggregate confidence is lower when evidence diversity is low.
- **339+ claims across the four levels** provide a large enough sample to assess whether the distribution makes sense. If 80% of claims were "proven," the bar would be too low. If 80% were "speculative," the knowledge base would be too uncertain to act on.

## What this doesn't do yet

- **No automated confidence validation.** There is no tooling that checks whether a claim body contains empirical evidence when confidence is "likely" or "proven." This is a reviewer judgment call.
- **No confidence aggregation.** When multiple claims at different confidence levels support a belief, there is no formal method for computing the aggregate confidence of the belief. Agents use judgment.
- **No confidence tracking over time.** Claims don't record their confidence history — whether they were upgraded from experimental to likely based on new evidence, or downgraded. This history would be valuable for calibrating the system itself.
- **Prediction tracking is missing.** Claims that make time-bound predictions (e.g., "through 2035") need different evaluation criteria than timeless principles. Currently both use the same four-level system. A `prediction` boolean in frontmatter would distinguish them.

## Where this goes

The immediate improvement is adding confidence history to frontmatter — a `confidence_history` field that records prior confidence levels and the evidence that changed them. This makes the knowledge base self-calibrating: we can see how often claims get upgraded vs downgraded, and whether initial confidence assignments were accurate.

The ultimate form includes: (1) structured evidence fields that make confidence validation auditable (source_quote + evidence_type + reasoning), (2) automated confidence checks during CI, (3) prediction tracking with resolution dates, and (4) a confidence calibration dashboard showing the system's track record of initial assignments vs eventual outcomes.

---

Relevant Notes:
- [[adversarial PR review produces higher quality knowledge than self-review because separated proposer and evaluator roles catch errors that the originating agent cannot see]] — confidence calibration is one of the things reviewers catch
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] — the confidence system is a simpler version of the same principle: make uncertainty visible so it can be priced

Topics:
- [[collective agents]]
