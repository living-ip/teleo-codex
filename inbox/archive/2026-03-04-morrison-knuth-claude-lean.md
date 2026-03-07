---
type: source
title: "KnuthClaudeLean: Formalization of Claude's Cycles in Lean 4"
author: Kim Morrison (Lean community)
date: 2026-03-04
url: https://github.com/kim-em/KnuthClaudeLean/
domain: ai-alignment
secondary_domains: [collective-intelligence]
status: processed
processed_by: theseus
processed_date: 2026-03-07
enrichments:
  - "formal verification claim enriched with Comparator trust model (specification vs proof bottleneck, adversarial proof design)"
---

# KnuthClaudeLean

Kim Morrison, github.com/kim-em/KnuthClaudeLean/. Posted March 4, 2026.

## Summary

Formalization in Lean 4 of the results in Knuth's "Claude's Cycles" — specifically that Claude's construction correctly decomposes the arcs of the Cayley digraph on Z_m^3 into three directed Hamiltonian cycles for all odd m > 1.

## Trust Model

The formalization uses Comparator, a "trustworthy judge specifically designed for verifying potentially adversarial proofs, including AI-generated proofs." The trust model is explicit:

**What you must trust:**
- The Lean kernel (and optionally nanoda for dual-kernel mode)
- Mathlib (specifically the imports: ZMod, Equiv.Perm, Digraph, etc.)
- Challenge.lean — the theorem statement and definitions (key audit target)
- Comparator itself and its dependencies (landrun, lean4export)

**What you do NOT need to trust:**
- The ~1,600 lines of proof in KnuthClaudeLean/Basic.lean — Comparator verifies this automatically

This is the critical alignment property: the verification bottleneck is in the *specification* (Challenge.lean — what does "correct decomposition" mean?), not in the *proof* (Basic.lean — does this construction satisfy the specification?). The proof can be arbitrarily long and complex; verification cost is bounded by the specification's complexity.

## File Layout

| File | Role | Trusted? |
|------|------|----------|
| Challenge.lean | Definitions + theorem statement (with sorry) | Yes — audit this |
| Solution.lean | Wraps the proof to match Challenge's statement | No — verified by Comparator |
| KnuthClaudeLean/Basic.lean | The actual proof | No — verified by Comparator |
| comparator.json | Comparator configuration | Yes — lists theorem name and permitted axioms |

## Key Definitions (from Challenge.lean)

- `cubeDigraph`: The Cayley digraph on Z_m^3 with three generators
- `IsDirectedHamiltonianCycle`: Definition of a directed Hamiltonian cycle in the digraph
- Main theorem: `hamiltonian_arc_decomposition` — for odd m > 1, the arcs decompose into three directed Hamiltonian cycles

## Permitted Axioms

The proof is verified under only the standard axioms: propext, Quot.sound, Classical.choice. No additional axioms admitted.

## Alignment-Relevant Observations

1. **Explicit trust boundary.** The formalization makes the trust model completely explicit — you trust the specification (Challenge.lean) and the kernel, but not the proof. This is the right architecture for verifying AI-generated mathematical work.

2. **"Trustworthy judge for adversarial proofs."** Comparator is explicitly designed for the scenario where the proof might be adversarial (including AI-generated). This is a concrete instance of scalable oversight: the verifier does not need to understand the proof, only check it against the specification.

3. **Specification is the bottleneck.** Challenge.lean is the file to audit. If the specification is correct, the proof is guaranteed correct by machine verification. The human review effort concentrates on "did we ask the right question?" not "is the answer right?"

4. **Knuth's endorsement.** Knuth: "That's good to know, because I've been getting more errorprone lately." Even the greatest living computer scientist acknowledges that formal verification provides guarantees human review cannot match.

## References

- Knuth, D.E. "Claude's Cycles." Stanford CS, Feb 28 2026 (rev. Mar 6 2026).
- Morrison, K. KnuthClaudeLean. github.com/kim-em/KnuthClaudeLean/
- Comparator. github.com/leanprover/comparator
