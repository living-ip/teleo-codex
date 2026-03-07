---
type: source
title: "An Alternative Hamiltonian Decomposition of the Three-Dimensional Torus Digraph"
author: Maximilian Reitbauer
date: 2026-03-00
url: https://www-cs-faculty.stanford.edu/~knuth/alternative_hamiltonian_decomposition.pdf
domain: ai-alignment
secondary_domains: [collective-intelligence]
status: processed
processed_by: theseus
processed_date: 2026-03-07
enrichments:
  - "multi-model collaboration claim enriched with Reitbauer's cross-model methodology"
---

# An Alternative Hamiltonian Decomposition of the Three-Dimensional Torus Digraph

Maximilian Reitbauer. Published on Knuth's Stanford page, March 2026.

## Summary

Reitbauer presents an independent odd-case construction for the Hamiltonian decomposition of Z_m^3 that is simpler than both Knuth's Claude construction and Aquino-Michaels's construction. The choice of direction depends only on the residue s = i+j+k (mod m) and on whether j = 0 or j = m-1. The identity permutation is used at almost every step (for 0 < s < m-1, the rule is simply pi(i,j,k) = (i,j,k) — each cycle uses its "default" direction).

## The Construction

The local permutation rule has 5 cases based on s and j:
- s = 0, j != m-1: (i,k,j) — cycles use i+, k+, j+ respectively
- s = 0, j = m-1: (k,i,j) — cycles use k+, i+, j+
- 0 < s < m-1: (i,j,k) — identity permutation (cycles use their default direction)
- s = m-1, j = 0: (j,i,k) — cycles use j+, i+, k+
- s = m-1, j != 0: (j,k,i) — cycles use j+, k+, i+

This is "probably the simplest possible" construction (Knuth's assessment). The proof is self-contained (5 pages) and uses a return-map lemma to reduce the 3D Hamiltonicity proof to showing the return map on the slice s=0 is a single m^2-cycle.

## Method of Discovery

According to Knuth: found by "pasting text between GPT 5.4 Extended Thinking and Claude 4.6 Sonnet Thinking." This is the most minimalist cross-model approach in the Claude's Cycles ecosystem — no structured prompt, no orchestrator, just direct text relay between two models.

## Alignment-Relevant Observations

1. **Simplest result from simplest method.** Unlike Aquino-Michaels's elaborate three-agent architecture, Reitbauer's approach was just manual copy-paste between two models. Yet it produced what Knuth called "probably the simplest possible" construction. This suggests that multi-model collaboration doesn't require sophisticated orchestration — even the most basic form (manual text relay) produces value from model diversity.

2. **Complementarity at its simplest.** GPT 5.4 Extended Thinking + Claude 4.6 Sonnet Thinking is a different model pairing from Aquino-Michaels (GPT-5.4 Thinking Extra High + Claude Opus 4.6 Thinking). Different model tiers, different reasoning modes, same productive pattern: combine models and get results neither produces alone.

3. **Construction simplicity as evidence.** The simpler the construction, the harder it is to find — because simplicity means the construction uses very few structural features of the problem. An AI+AI collaboration finding the simplest known construction suggests that model diversity searches a different region of solution space than any single model.

## References

- Knuth, D.E. "Claude's Cycles." Stanford CS, Feb 28 2026 (rev. Mar 6 2026).
- Reitbauer, M. "An Alternative Hamiltonian Decomposition." cs.stanford.edu/~knuth/alternative_hamiltonian_decomposition.pdf
