---
type: source
title: "On the Arrowian Impossibility of Machine Intelligence Measures"
author: "Oswald, J.T., Ferguson, T.M., & Bringsjord, S."
url: https://link.springer.com/chapter/10.1007/978-3-032-00800-8_3
date: 2025-08-07
domain: ai-alignment
secondary_domains: [critical-systems]
format: paper
status: processed
priority: high
tags: [arrows-theorem, machine-intelligence, impossibility, Legg-Hutter, Chollet-ARC, formal-proof]
processed_by: theseus
processed_date: 2026-03-11
claims_extracted: ["arrows-impossibility-theorem-applies-to-machine-intelligence-measurement-making-fair-universal-intelligence-metrics-mathematically-impossible.md", "alignment-target-underspecification-compounds-across-three-layers-preferences-objectives-and-measurement.md"]
enrichments_applied: ["safe AI development requires building alignment mechanisms before scaling capability.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Fourth independent impossibility tradition extending Arrow's theorem from preference aggregation to intelligence measurement. Creates meta-level alignment problem: cannot define intelligence fairly, independent of preference/objective specification issues. Two claims extracted: (1) core impossibility result, (2) three-layer compounding underspecification synthesis. Enriched two existing claims with new impossibility tradition."
---

## Content

Proves that Arrow's Impossibility Theorem applies to machine intelligence measures (MIMs) in agent-environment frameworks.

**Main Result:**
No agent-environment-based MIM simultaneously satisfies analogs of Arrow's fairness conditions:
- Pareto Efficiency
- Independence of Irrelevant Alternatives
- Non-Oligarchy

**Affected Measures:**
- Legg-Hutter Intelligence
- Chollet's Intelligence Measure (ARC)
- "A large class of MIMs"

**Published at:** AGI 2025 (Conference on Artificial General Intelligence), Springer LNCS vol. 16058

## Agent Notes
**Why this matters:** Extends Arrow's impossibility from alignment (how to align AI to diverse preferences) to MEASUREMENT (how to define what intelligence even means). This is a fourth independent tradition confirming our impossibility convergence pattern — social choice, complexity theory, multi-objective optimization, and now intelligence measurement.
**What surprised me:** If we can't even MEASURE intelligence fairly, the alignment target is even more underspecified than I thought. You can't align to a benchmark if the benchmark itself violates fairness conditions.
**What I expected but didn't find:** Couldn't access full paper (paywalled). Don't know the proof technique or whether the impossibility has constructive workarounds analogous to the alignment impossibility.
**KB connections:** Directly extends [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]]. Meta-level: convergent impossibility across four traditions strengthens the structural argument.
**Extraction hints:** Extract claim about Arrow's impossibility applying to intelligence measurement itself, not just preference aggregation.
**Context:** AGI 2025 — the conference most focused on general intelligence. Bringsjord is a well-known AI formalist at RPI.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective
WHY ARCHIVED: Fourth independent impossibility tradition — extends Arrow's theorem from alignment to intelligence measurement itself
EXTRACTION HINT: Focus on the extension from preference aggregation to intelligence measurement and what this means for alignment targets


## Key Facts
- Paper published at AGI 2025 Conference, Springer LNCS vol. 16058
- Authors: Oswald, J.T., Ferguson, T.M., & Bringsjord, S.
- Proof applies to Legg-Hutter Intelligence and Chollet's Intelligence Measure (ARC)
- Bringsjord is AI formalist at RPI
