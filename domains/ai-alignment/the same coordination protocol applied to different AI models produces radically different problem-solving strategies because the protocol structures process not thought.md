---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "The Residue prompt applied identically to GPT-5.4 Thinking and Claude Opus 4.6 Thinking produced top-down symbolic reasoning vs bottom-up computational search — the prompt structured record-keeping identically while the models diverged in approach, proving that coordination protocols and reasoning strategies are independent"
confidence: experimental
source: "Aquino-Michaels 2026, 'Completing Claude's Cycles' (github.com/no-way-labs/residue), meta_log.md and agent logs"
created: 2026-03-07
---

# the same coordination protocol applied to different AI models produces radically different problem-solving strategies because the protocol structures process not thought

Aquino-Michaels applied the identical Residue structured exploration prompt to two different models on the same mathematical problem (Knuth's Hamiltonian decomposition):

**Agent O (GPT-5.4 Thinking, Extra High):** Top-down symbolic reasoner. Immediately recast the problem in fiber coordinates, discovered the diagonal gadget criterion, and solved the odd case in 5 explorations via layer-level symbolic analysis. Never wrote a brute-force solver. Discovered the layer-sign parity invariant (a novel structural result not in Knuth's paper). Stalled at m=10 on the even case — the right framework but insufficient data.

**Agent C (Claude Opus 4.6 Thinking):** Bottom-up computational solver. Explored translated coordinates, attempted d0-tables, hit the serpentine dead end (5 explorations vs ~10 for Knuth's Claude — the Residue prompt compressed the dead end). Never found the layer-factorization framework. Broke through with a 67,000x speedup via MRV + forward checking. Produced concrete solutions for m=3 through m=12 that Agent O could not compute.

The meta-log's assessment: "Same prompt, radically different strategies. The prompt structured the record-keeping identically; the models diverged in reasoning style. Agent O skipped the serpentine attractor entirely. Agent C followed almost the same trajectory as Knuth's Claude but compressed by the structured logging."

This finding has three implications for alignment:

**1. Diversity is structural, not accidental.** Different model architectures don't just produce slightly different outputs — they produce categorically different approaches to the same problem. This validates [[all agents running the same model family creates correlated blind spots that adversarial review cannot catch because the evaluator shares the proposers training biases]] with controlled evidence: same prompt, same problem, different models, different strategies.

**2. Coordination protocols are orthogonal to reasoning.** The Residue prompt did not constrain *what* the models tried — it constrained *how they documented what they tried*. This separation is the key design principle. An alignment protocol that structures oversight without constraining AI reasoning preserves the diversity that makes multi-agent approaches valuable.

**3. Complementarity is discoverable, not designed.** Nobody planned for Agent O to be the symbolic reasoner and Agent C to be the computational solver. The complementarity emerged from applying the same protocol to different models. This suggests that collective intelligence architectures should maximize model diversity and let complementarity emerge, rather than pre-assigning roles.

---

Relevant Notes:
- [[all agents running the same model family creates correlated blind spots that adversarial review cannot catch because the evaluator shares the proposers training biases]] — controlled evidence: same prompt produces categorically different strategies on different model families
- [[structured exploration protocols reduce human intervention by 6x because the Residue prompt enabled 5 unguided AI explorations to solve what required 31 human-coached explorations]] — the Residue prompt that produced this divergence
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] — model diversity produces strategic diversity, which is the precondition for productive collaboration
- [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]] — Agent O and Agent C worked independently (partial connectivity), preserving their divergent strategies until the orchestrator bridged them

Topics:
- [[_map]]
