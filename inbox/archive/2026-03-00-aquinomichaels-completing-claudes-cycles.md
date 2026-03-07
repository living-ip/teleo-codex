---
type: source
title: "Completing Claude's Cycles: Multi-agent structured exploration on an open combinatorial problem"
author: Keston Aquino-Michaels
date: 2026-03-00
url: https://github.com/no-way-labs/residue
domain: ai-alignment
secondary_domains: [collective-intelligence]
status: processing
processed_by: theseus
processed_date: 2026-03-07
---

# Completing Claude's Cycles

Keston Aquino-Michaels, github.com/no-way-labs/residue

## Summary

Aquino-Michaels used a two-agent architecture with an orchestrator to complete the full Hamiltonian decomposition of Z_m^3 Cayley digraphs for all m > 2 — both the odd case (re-solved in 5 explorations with no human intervention, using a different construction from Knuth's) and the even case (closed-form construction, verified to m=2,000, spot-checked to 30,000).

## Architecture

Three components:
- **Agent O** (GPT-5.4 Thinking, Extra High): Top-down symbolic reasoner. Solved odd case in 5 explorations. Discovered the layer-sign parity invariant for even m. Stalled at m=10 on even case.
- **Agent C** (Claude Opus 4.6 Thinking): Bottom-up computational solver. Hit the serpentine dead end (~5 explorations vs ~10 for Knuth's Claude), then achieved a 67,000x speedup via MRV + forward checking. Produced solutions for m=3 through 12.
- **Orchestrator** (Claude Opus 4.6 Thinking, directed by the author): Transferred Agent C's solutions in fiber-coordinate format to Agent O. Transferred the MRV solver, which Agent O adapted into a seeded solver. "The combination produced insight neither agent could reach alone."

## The Residue Prompt

The key methodological contribution. A structured exploration prompt with 5 design principles:

1. **Structure the record-keeping, not the reasoning.** Prescribes what to record (strategy, outcome, failure constraints, surviving structure, reformulations, concrete artifacts) but never what to try.
2. **Make failures retrievable.** Each failed exploration produces a structured record that prevents re-exploration of dead approaches.
3. **Force periodic synthesis.** Every 5 explorations, scan artifacts for patterns.
4. **Bound unproductive grinding.** If the Strategy Register hasn't changed in 5 explorations, stop and assess.
5. **Preserve session continuity.** Re-read the full log before starting each session.

## Results

| Case | Status | Construction |
|------|--------|-------------|
| m = 2 | Impossible | Exhaustive search (Aubert & Schneider, 1982) |
| Odd m >= 3 | Solved (symbolic proof) | Diagonal layer schedule: 4 layer types, count-based |
| Even m >= 4 | Solved (verified to m=2,000; spot-checked to 30,000) | Bulk XYI + staircase + terminal layer |

## Key Mathematical Ideas

- **Fiber coordinates:** Write vertices as (s, x, y) where s = i+j+k mod m. Three generators become layer transitions X, Y, I between consecutive s-values.
- **2D diagonal gadget:** On the diagonal D = {(x,y) : x+y = 0}, define matchings A (X off D, Y on D) and B (Y off D, X on D). Both are Hamiltonian cycles on Z_m^2.
- **Skew-map criterion:** A word with a copies of A and b copies of B gives a round map that is an m^2-cycle iff gcd(a+b, m) = 1 and gcd(b-a, m) = 1.
- **Layer-sign parity invariant:** For even m, any Hamiltonian decomposition must contain an odd number of sign-negative layers. This explains why the odd construction cannot extend and why Kempe-cycle local search gets trapped.

## Comparison to Knuth's Claude

| Dimension | Knuth's Claude | Aquino-Michaels |
|-----------|---------------|-----------------|
| Models | Claude Opus 4.6 only | GPT-5.4 + Claude Opus 4.6 + Claude orchestrator |
| Human role | Stappers coached continuously (~31 explorations) | Author directed orchestrator; agents ran with structured prompt |
| Odd case | Solved in 31 explorations with heavy coaching | Re-solved in 5 explorations, no human intervention, different construction |
| Even case | Failed ("not even able to write and run explore programs correctly") | Solved with closed-form construction |
| Methodology | Ad hoc coaching | Structured exploration prompt ("Residue") with 5 design principles |
| Key innovation | Fiber decomposition insight | Orchestration: transferring artifacts between specialized agents |

## Alignment-Relevant Observations

1. **Orchestration > coaching:** The Residue prompt + orchestrator architecture dramatically reduced human intervention (31 coached explorations → 5 unguided for odd case). This suggests that *structured coordination protocols* between agents can substitute for continuous human steering.

2. **Agent specialization is empirically productive:** Agent O (symbolic) and Agent C (computational) had complementary strengths. Neither could solve the even case alone. The orchestrator's transfer of Agent C's solutions to Agent O in the right format was the critical coordination step.

3. **Structured exploration prompt as alignment mechanism:** The Residue prompt constrains *process* (record-keeping, failure documentation, synthesis cadence) without constraining *reasoning*. This is a concrete instance of "enabling constraints" — rules that create productive exploration rather than limiting it.

4. **5x efficiency gain from protocol design:** Odd case solved in 5 explorations vs 31, without human intervention. The improvement came from better coordination protocol (Residue + multi-agent), not better models. This is direct evidence that coordination architecture matters more than raw capability.

5. **The orchestrator role:** Human as orchestrator (routing data and tools between agents) rather than coach (steering reasoning) is a distinct collaboration pattern from Knuth's Stappers. The human contributes *coordination*, not *direction*.

## References

- D. E. Knuth, "Claude's Cycles," Stanford CS, Feb 28 2026; rev. Mar 4 2026.
- J. Aubert & B. Schneider, "Graphes orientes indecomposables en circuits hamiltoniens," JCTB 32 (1982).
- B. Alspach, "Research Problem 59," Discrete Mathematics 50 (1984).
- S. Curran & D. Witte, "Hamilton paths in Cartesian products of directed cycles," Ann. Disc. Math. 27 (1985).
- I. Darijani, B. Miraftab, & D. W. Morris, "Arc-disjoint Hamiltonian paths in Cartesian products of directed cycles," Ars Math. Contemp. 25(2) (2025). arXiv:2203.11017.
