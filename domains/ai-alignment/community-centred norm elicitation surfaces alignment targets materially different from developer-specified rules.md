---
description: STELA experiments with underrepresented communities empirically show that deliberative norm elicitation produces substantively different AI rules than developer teams create revealing whose values is an empirical question
type: claim
domain: ai-alignment
created: 2026-02-17
source: "Bergman et al, STELA (Scientific Reports, March 2024); includes DeepMind researchers"
confidence: likely
---

# community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules

The STELA study (Bergman et al, Scientific Reports 2024, including Google DeepMind researchers) used a four-stage deliberative process -- theme generation, norm elicitation, rule development, ruleset review -- with underrepresented communities: female-identifying, Latina/o/x, African American, and Southeast Asian groups in the US. Participants engaged in deliberative focus groups examining LLM outputs and articulating what norms they believed should govern AI behavior.

The key finding: community-centred deliberation on LLM outputs elicits latent normative perspectives that differ substantively from rules set by AI developers. This is not a matter of different emphasis or framing -- different communities produce materially different alignment specifications. The question of "whose values" is not philosophical or abstract. It is an empirical question with measurably different answers depending on who participates.

This matters because the default in AI alignment is developer-specified values. Whether through RLHF annotator pools (skewing young, English-speaking, online), Anthropic's internally written constitutions, or OpenAI's safety team decisions, the values embedded in AI systems reflect the perspectives of their creators. STELA demonstrates empirically that this is not a neutral default -- it systematically excludes perspectives that would surface through inclusive deliberation.

Since [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]], the CIP/Anthropic experiment shows democratic input works mechanically. STELA adds that it produces different outputs -- different not just in process but in substance. Since [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]], the STELA finding provides empirical grounding for why pluralism is necessary, not just philosophically desirable.

Since [[collective intelligence requires diversity as a structural precondition not a moral preference]], community-centred norm elicitation is a concrete mechanism for ensuring the structural diversity that collective alignment requires. Without it, alignment defaults to the values of whichever demographic builds the systems.


### Additional Evidence (extend)
*Source: [[2025-06-00-li-scaling-human-judgment-community-notes-llms]] | Added: 2026-03-11 | Extractor: anthropic/claude-sonnet-4.5*

The RLCF architecture makes community-centered norm elicitation operational by separating generation (AI) from evaluation (community). The bridging algorithm specifically selects for norms that cross partisan divides, not developer preferences. Li et al. show this produces different content than either expert-written notes or single-constituency optimization would generate. The intercept score (c_j in the matrix factorization) is a quantitative measure of cross-community agreement, making 'materially different' measurable rather than qualitative. This demonstrates that community-centered evaluation produces alignment targets that diverge from what centralized developers would specify.

---

Relevant Notes:
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]] -- assemblies work mechanically; STELA shows they also produce substantively different outputs
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously rather than converging on a single aligned state]] -- STELA provides the empirical evidence that pluralism is necessary
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] -- community norm elicitation is a concrete mechanism for structural diversity
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- developer-specified values are a special case of the single-function problem
- [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]] -- STELA demonstrates what inclusive infrastructure reveals but does not build the infrastructure itself

Topics:
- [[_map]]
