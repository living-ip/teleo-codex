---
description: CIP and Anthropic empirically demonstrated that publicly sourced AI constitutions via deliberative assemblies of 1000 participants perform as well as internally designed ones on helpfulness and harmlessness
type: claim
domain: ai-alignment
created: 2026-02-17
source: "Anthropic/CIP, Collective Constitutional AI (arXiv 2406.07814, FAccT 2024); CIP Alignment Assemblies (cip.org, 2023-2025); STELA (Bergman et al, Scientific Reports, March 2024)"
confidence: likely
---

# democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations

The Collective Intelligence Project (CIP), co-founded by Divya Siddarth and Saffron Huang, has run the most ambitious experiments in democratic AI alignment. Their Alignment Assemblies use deliberative processes where diverse participants collectively define rules for AI behavior, combining large-scale surveys (1,000+ participants) with platforms like Polis and AllOurIdeas.

In the landmark pilot with Anthropic (FAccT 2024), approximately 1,000 demographically representative Americans contributed 1,127 statements and cast 38,252 votes on what rules an AI chatbot should follow. Two Claude models were trained -- one using this publicly sourced constitution, one using Anthropic's internal constitution. The result: the public model was rated as helpful and harmless as the standard model. Democratic input did not degrade performance.

Two additional findings matter. First, participants showed remarkably high consensus, with only a few divisive statements per hundreds of consensus statements -- suggesting "whose values" may be less contested than assumed at the level of general principles. Second, CIP's Global Dialogues (bimonthly, 1000 participants from 70+ countries) demonstrated that participatory processes scale internationally.

However, this remains one-shot constitution-setting, not continuous alignment. The STELA study (Bergman et al, Scientific Reports 2024) adds a critical nuance: community-centred deliberation with underrepresented communities (female-identifying, Latina/o/x, African American, Southeast Asian groups) elicited latent normative perspectives materially different from developer-set rules. "Whose values" is not abstract -- different communities produce substantively different specifications.

Since [[collective intelligence requires diversity as a structural precondition not a moral preference]], democratic assemblies structurally ensure the diversity that expert panels cannot guarantee. Since [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]], the next step beyond assemblies is continuous participatory alignment, not periodic constitution-setting.


### Additional Evidence (extend)
*Source: [[2025-06-00-li-scaling-human-judgment-community-notes-llms]] | Added: 2026-03-11 | Extractor: anthropic/claude-sonnet-4.5*

Li et al. (2025) provide the first concrete implementation specification of RLCF, showing how democratic alignment translates to operational architecture: AI generates candidate content, human assemblies (raters) evaluate it, and bridging algorithms surface cross-partisan consensus. This moves from 'assemblies can produce constitutions' to 'here is how the assembly-constitution-deployment pipeline actually works in production.' The Community Notes implementation demonstrates that the assembly model (diverse raters) + bridging selection (intercept scores) can operate at platform scale, not just in controlled experiments. The matrix factorization approach (y_ij = w_i * x_j + b_i + c_j) makes the assembly selection mechanism quantitatively measurable.

---

Relevant Notes:
- [[collective intelligence requires diversity as a structural precondition not a moral preference]] -- assemblies structurally ensure the diversity that expert panels cannot
- [[the alignment problem dissolves when human values are continuously woven into the system rather than specified in advance]] -- continuous participation, not one-shot constitution-setting, is the full solution
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] -- democratic constitutions are an alternative to reward-function compression
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] -- assemblies work at the level of general principles despite theoretical impossibility for full preference aggregation
- [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]] -- CIP is the closest to collective alignment infrastructure but still lacks continuous architecture

Topics:
- [[_map]]
