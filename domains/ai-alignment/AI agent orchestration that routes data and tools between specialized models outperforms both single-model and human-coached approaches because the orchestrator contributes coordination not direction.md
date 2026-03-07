---
type: claim
domain: ai-alignment
description: "Aquino-Michaels's three-component architecture — symbolic reasoner (GPT-5.4), computational solver (Claude Opus 4.6), and orchestrator (Claude Opus 4.6) — solved both odd and even cases of Knuth's problem by transferring artifacts between specialized agents"
confidence: experimental
source: "Aquino-Michaels 2026, 'Completing Claude's Cycles' (github.com/no-way-labs/residue)"
created: 2026-03-07
---

# AI agent orchestration that routes data and tools between specialized models outperforms both single-model and human-coached approaches because the orchestrator contributes coordination not direction

Aquino-Michaels's architecture for solving Knuth's Hamiltonian decomposition problem used three components with distinct roles:

- **Agent O** (GPT-5.4 Thinking, Extra High): Top-down symbolic reasoner. Solved the odd case in 5 explorations. Discovered the layer-sign parity invariant for even m — a structural insight explaining why odd constructions cannot extend to even m. Stalled at m=10 on the even case.
- **Agent C** (Claude Opus 4.6 Thinking): Bottom-up computational solver. Hit the serpentine dead end in ~5 explorations (vs ~10 for Knuth's Claude), then achieved a 67,000x speedup via MRV + forward checking. Produced concrete solutions for m=3 through 12.
- **Orchestrator** (Claude Opus 4.6 Thinking, directed by the author): Transferred Agent C's solutions in fiber-coordinate format to Agent O. Transferred the MRV solver, which Agent O adapted into a seeded solver.

The critical coordination step: the orchestrator transferred Agent C's computational results to Agent O in the right representational format. "The combination produced insight neither agent could reach alone." Agent O had the symbolic framework but lacked concrete examples; Agent C had the examples but couldn't generalize symbolically. The orchestrator's contribution was *data routing and format translation*, not mathematical insight.

## Three Collaboration Patterns Compared

| Pattern | Human Role | AI Role | Odd-Case Result | Even-Case Result |
|---------|-----------|---------|-----------------|------------------|
| Knuth/Stappers | Coach (continuous steering) | Single explorer | 31 explorations | Failed |
| Residue (single agent) | Protocol designer | Structured explorer | 5 explorations | — |
| Residue (multi-agent) | Orchestrator director | Specialized agents | 5 explorations | Solved |

The progression from coaching to protocol design to orchestration represents increasing leverage: the human contributes at a higher level of abstraction in each step. This parallels the shift from [[human-in-the-loop clinical AI degrades to worse-than-AI-alone because physicians both de-skill from reliance and introduce errors when overriding correct outputs]] — when humans try to direct at the wrong level of abstraction (overriding AI on tasks AI does better), performance degrades. When humans contribute at the right level (coordination, not execution), performance improves.

## The Orchestrator as Alignment Architecture

The orchestrator role is distinct from both human oversight and autonomous AI:
- It is not autonomous: the author directed the orchestrator's routing decisions
- It is not oversight: the orchestrator did not evaluate Agent O or Agent C's work for correctness
- It is coordination: moving the right information to the right agent in the right format

This maps directly to the [[centaur team performance depends on role complementarity not mere human-AI combination]] finding — the orchestrator succeeds because its role (coordination) is complementary to the agents' roles (symbolic reasoning, computational search), with clear boundaries.

For alignment, this suggests a fourth role beyond the three in Knuth's original collaboration (explorer/coach/verifier): the orchestrator, who contributes neither exploration nor verification but the coordination that makes both productive. Since [[AI alignment is a coordination problem not a technical problem]], the orchestrator role may be the most alignment-relevant component.

---

Relevant Notes:
- [[centaur team performance depends on role complementarity not mere human-AI combination]] — orchestration as a fourth distinct role alongside exploration, coaching, and verification
- [[human-AI mathematical collaboration succeeds through role specialization where AI explores solution spaces humans provide strategic direction and mathematicians verify correctness]] — Aquino-Michaels adds orchestration as a distinct pattern: human as router, not director
- [[multi-model collaboration solved problems that single models could not because different AI architectures contribute complementary capabilities as the even-case solution to Knuths Hamiltonian decomposition required GPT and Claude working together]] — this claim provides the detailed mechanism: symbolic + computational + orchestration
- [[AI alignment is a coordination problem not a technical problem]] — the orchestrator role is pure coordination, and it was the critical component
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — Agent O and Agent C as de facto specialists with an orchestrator-synthesizer

Topics:
- [[_map]]
