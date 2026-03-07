---
type: claim
domain: ai-alignment
description: "Aquino-Michaels's Residue prompt — which structures record-keeping and synthesis cadence without constraining reasoning — enabled Claude to re-solve Knuth's odd-case problem in 5 explorations without human intervention vs Stappers's 31 coached explorations"
confidence: experimental
source: "Aquino-Michaels 2026, 'Completing Claude's Cycles' (github.com/no-way-labs/residue); Knuth 2026, 'Claude's Cycles'"
created: 2026-03-07
---

# structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations

Keston Aquino-Michaels's "Residue" structured exploration prompt dramatically reduced human involvement in solving Knuth's Hamiltonian decomposition problem. Under Stappers's coaching, Claude Opus 4.6 solved the odd-m case in 31 explorations with continuous human steering — Stappers provided the problem formulation, restarted dead-end approaches, and reminded Claude to document progress. Under the Residue prompt with a two-agent architecture, the odd case was re-solved in 5 explorations with no human intervention, using a different and arguably simpler construction (diagonal layer schedule with 4 layer types).

The improvement factor is roughly 6x in exploration count, but the qualitative difference is larger: 31 explorations *with* human coaching vs 5 explorations *without* it. The human role shifted from continuous steering to one-time protocol design and orchestration.

## The Residue Prompt's Design Principles

The prompt constrains process, not reasoning — five specific rules:

1. **Structure the record-keeping, not the reasoning.** Prescribes *what to record* (strategy, outcome, failure constraints, surviving structure, reformulations, concrete artifacts) but never *what to try*.
2. **Make failures retrievable.** Each failed exploration produces a structured record that prevents re-exploration of dead approaches.
3. **Force periodic synthesis.** Every 5 explorations, scan artifacts for patterns.
4. **Bound unproductive grinding.** If the Strategy Register hasn't changed in 5 explorations, stop and assess.
5. **Preserve session continuity.** Re-read the full log before starting each session.

This is a concrete instance of [[enabling constraints create possibility spaces for emergence while governing constraints dictate specific outcomes]] — the Residue prompt creates possibility space for productive exploration by constraining only the record-keeping layer, not the search strategy.

## Alignment Implications

The 6x efficiency gain came from better coordination protocol, not better models. The same model (Claude Opus 4.6) performed dramatically better with structured process than with ad hoc coaching. This is direct evidence that [[AI alignment is a coordination problem not a technical problem]] — if coordination protocol design can substitute for continuous human oversight on a hard mathematical problem, the same principle should apply to alignment more broadly.

The Residue prompt also addresses the reliability problem documented in [[AI capability and reliability are independent dimensions because Claude solved a 30-year open mathematical problem while simultaneously degrading at basic program execution during the same session]]. Rules 2 (failure retrieval) and 4 (bounding unproductive grinding) are explicit countermeasures against the degradation pattern Knuth observed. Whether they fully solve it is an open question — the even case still required a different architecture — but they demonstrably improved performance on the odd case.

---

Relevant Notes:
- [[enabling constraints create possibility spaces for emergence while governing constraints dictate specific outcomes]] — the Residue prompt is a concrete instance of enabling constraints applied to AI exploration
- [[AI alignment is a coordination problem not a technical problem]] — protocol design outperformed raw capability on a hard problem
- [[AI capability and reliability are independent dimensions because Claude solved a 30-year open mathematical problem while simultaneously degrading at basic program execution during the same session]] — Residue prompt's design principles are explicit countermeasures against reliability degradation
- [[human-AI mathematical collaboration succeeds through role specialization where AI explores solution spaces humans provide strategic direction and mathematicians verify correctness]] — the Residue approach shifts the human role from continuous steering to one-time protocol design
- [[adaptive governance outperforms rigid alignment blueprints because superintelligence development has too many unknowns for fixed plans]] — Residue constrains process not substance, which is the adaptive governance principle applied to AI exploration

Topics:
- [[_map]]
