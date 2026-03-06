---
type: claim
domain: grand-strategy
secondary_domains: [ai-alignment, collective-intelligence]
description: "RLHF, DPO, constitutional AI, and scalable oversight all optimize alignment within individual models — making alignment more efficient creates demand for more alignment-as-training rather than shifting to coordination-based alignment where safety is a property of the architecture, not a tax on each model"
confidence: experimental
source: "Synthesis by Leo from: Theseus's alignment tax and RSP collapse claims; Vida's healthcare Jevons paradox; the universal Jevons pattern (PR #34); collective intelligence alignment gap claim"
created: 2026-03-07
depends_on:
  - "the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it"
  - "AI optimization of industry subsystems induces demand for more of the same subsystem rather than shifting resources to the structural changes that would improve outcomes"
  - "no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it"
  - "voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints"
---

# alignment research is experiencing its own Jevons paradox because improving single-model safety induces demand for more single-model safety rather than coordination-based alignment

The Jevons paradox — where improving subsystem efficiency increases total demand for that subsystem rather than enabling system-level restructuring — applies to the alignment field itself. The parallel to healthcare is precise.

**Healthcare:** AI makes sick care more efficient -> more demand for sick care -> prevents transition to prevention-first system. The subsystem (clinical care) explains 10-20% of health outcomes, yet absorbs the vast majority of AI investment.

**Alignment:** Better RLHF/DPO/constitutional AI makes single-model alignment more efficient -> more demand for single-model alignment -> prevents transition to coordination-based alignment. The subsystem (individual model safety) addresses one component of the alignment problem, yet absorbs virtually all alignment investment.

**The mechanism is identical in both cases:**

1. **Subsystem optimization has immediate, measurable ROI.** Better RLHF reduces harmful outputs by measurable percentages. Better clinical AI improves diagnostic accuracy by measurable percentages. Both are publishable, fundable, and demonstrable to stakeholders.

2. **System restructuring has uncertain, delayed returns.** Building coordination infrastructure for multi-agent alignment has no clear benchmark, no established methodology, and no guaranteed outcome. Building prevention-first healthcare has similar characteristics. The rational resource allocator in both domains chooses subsystem optimization.

3. **The optimized subsystem generates its own demand.** Each new model requires alignment training. Each more capable model requires more sophisticated alignment techniques. The alignment field scales linearly with the number and capability of models deployed — exactly the pattern that induces Jevons demand. More aligned models -> more deployment confidence -> more models deployed -> more alignment needed.

4. **Payment structures reinforce the paradox.** Alignment labs are funded to make specific models safe, not to build coordination infrastructure. Research grants reward publishable techniques with measurable improvements on specific models, not architectural work on distributed alignment. Since [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]], the economic structure of AI development actively pays for single-model alignment (as a cost of doing business) while offering no revenue model for coordination-based alignment.

**The RSP collapse as empirical confirmation.** Anthropic's abandonment of its Responsible Scaling Policy demonstrates that even the strongest single-organization alignment commitment cannot survive competitive pressure. Since [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]], the RSP failure shows that alignment-as-training-tax is structurally unstable. But the field's response has been to seek better training-time alignment techniques — making the tax smaller rather than eliminating it through coordination. This is the Jevons paradox in action: the failure of single-model alignment produced demand for *better* single-model alignment, not for *different* alignment.

**What coordination-based alignment would look like.** Since [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]], the alternative paradigm barely exists. In the healthcare analogy, Devoted Health represents the system restructurer — purpose-built technology that addresses the 80-90%, not a better optimizer of the 10-20%. The alignment equivalent would be infrastructure where safety emerges from the coordination protocol between agents, not from training imposed on each agent individually. Where alignment is a property of the architecture — like how TCP/IP ensures reliable communication without each application implementing its own reliability layer.

Since [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]], single-model alignment faces a theoretical ceiling: it literally cannot represent the diversity of human values. This is the alignment equivalent of healthcare's 10-20% problem — no matter how good single-model alignment gets, it structurally cannot solve the full problem. The remaining 80-90% requires coordination infrastructure.

**Why the pattern is harder to break in alignment than healthcare.** In healthcare, the system restructurer (Devoted) competes in the same market as the subsystem optimizers. Market competition can eventually force the transition. In alignment, there is no market mechanism to force the transition from single-model to coordination-based alignment. No customer is choosing between "aligned model" and "coordinated multi-agent system." The transition requires either regulatory mandate, catastrophic failure of single-model alignment, or a research breakthrough that makes coordination-based alignment demonstrably superior. None of these forcing functions is currently active.

---

Relevant Notes:
- [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]] — alignment-as-training-tax is the subsystem being optimized
- [[AI optimization of industry subsystems induces demand for more of the same subsystem rather than shifting resources to the structural changes that would improve outcomes]] — the universal Jevons pattern this claim instantiates in alignment
- [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]] — the system-level restructuring that the Jevons paradox prevents
- [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]] — RSP collapse as empirical evidence of single-organization alignment failure
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — the theoretical ceiling of single-model alignment
- [[healthcare AI creates a Jevons paradox because adding capacity to sick care induces more demand for sick care]] — the healthcare instance with the most extreme ratio (10-20% vs 80-90%)

Topics:
- [[overview]]
- [[coordination mechanisms]]
