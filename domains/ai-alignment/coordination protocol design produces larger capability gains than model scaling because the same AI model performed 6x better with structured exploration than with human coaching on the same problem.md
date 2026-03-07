---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "Across the Knuth Hamiltonian decomposition problem, gains from better coordination protocols (6x fewer explorations, autonomous even-case solution) exceeded any single model capability improvement, suggesting investment in coordination architecture has higher returns than investment in model scaling"
confidence: experimental
source: "Aquino-Michaels 2026, 'Completing Claude's Cycles' (github.com/no-way-labs/residue); Knuth 2026, 'Claude's Cycles'"
created: 2026-03-07
---

# coordination protocol design produces larger capability gains than model scaling because the same AI model performed 6x better with structured exploration than with human coaching on the same problem

The Knuth Hamiltonian decomposition problem provides a controlled natural experiment comparing coordination approaches while holding AI capability roughly constant:

**Condition 1 — Ad hoc coaching (Knuth/Stappers):** Claude Opus 4.6 with continuous human steering. 31 explorations. Solved odd case only. Even case failed with degradation.

**Condition 2 — Structured single-agent (Residue prompt):** Claude Opus 4.6 with the Residue structured exploration prompt. 5 explorations. Solved odd case with a different, arguably simpler construction. No human intervention required during exploration.

**Condition 3 — Structured multi-agent (Residue + orchestration):** GPT-5.4 + Claude Opus 4.6 + Claude orchestrator. Both cases solved. Even case yielded a closed-form construction verified to m=2,000 and spot-checked to 30,000.

The progression from Condition 1 to Condition 3 represents increasing coordination sophistication, not increasing model capability. Claude Opus 4.6 appears in all three conditions. The gains — 6x reduction in explorations for the odd case, successful solution of the previously-impossible even case — came from:

1. **Better record-keeping protocols** (Residue's structured failure documentation)
2. **Explicit synthesis cadence** (every 5 explorations)
3. **Agent specialization** (symbolic vs computational)
4. **Format-aware data routing** (orchestrator translating between agent representations)

None of these are model improvements. All are coordination improvements.

## Implications for Alignment Investment

The alignment field invests overwhelmingly in model-level interventions: RLHF, constitutional AI, reward modeling, interpretability. If the Knuth case generalizes, equal or greater gains are available from coordination-level interventions: structured protocols for multi-agent oversight, format standards for inter-agent communication, orchestration architectures that route the right information to the right evaluator.

This is the empirical foundation for [[AI alignment is a coordination problem not a technical problem]]. It's not just that alignment *can* be framed as coordination — it's that coordination improvements demonstrably outperform capability improvements on a controlled problem.

The finding also strengthens [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]]. If coordination architecture produces 6x capability gains on hard problems, the absence of alignment research focused on multi-agent coordination protocols represents a significant missed opportunity.

Since [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]], coordination-based alignment that *increases* capability rather than taxing it would face no race-to-the-bottom pressure. The Residue prompt is alignment infrastructure that happens to make the system more capable, not less.

---

Relevant Notes:
- [[AI alignment is a coordination problem not a technical problem]] — the strongest empirical evidence yet: coordination improvements > model improvements on a controlled problem
- [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]] — coordination protocol research is underinvested relative to its demonstrated returns
- [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]] — coordination-based alignment that increases capability has no alignment tax
- [[structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations]] — the specific mechanism: structured record-keeping + synthesis cadence
- [[protocol design enables emergent coordination of arbitrary complexity as Linux Bitcoin and Wikipedia demonstrate]] — the Residue prompt is a protocol that enables emergent mathematical discovery

Topics:
- [[_map]]
