---
type: source
title: "Democracy and AI: CIP Year in Review (2025)"
author: "Collective Intelligence Project (CIP)"
url: https://blog.cip.org/p/from-global-dialogues-to-democratic
date: 2025-12-01
domain: ai-alignment
secondary_domains: [collective-intelligence, mechanisms]
format: report
status: null-result
priority: high
tags: [democratic-alignment, evaluation, pluralistic, global-dialogues, weval, samiksha, empirical-results]
processed_by: theseus
processed_date: 2025-12-01
enrichments_applied: ["democratic-alignment-assemblies-produce-constitutions-as-effective-as-expert-designed-ones-while-better-representing-diverse-populations.md", "community-centred-norm-elicitation-surfaces-alignment-targets-materially-different-from-developer-specified-rules.md", "some-disagreements-are-permanently-irreducible-because-they-stem-from-genuine-value-differences-not-information-gaps-and-systems-must-map-rather-than-eliminate-them.md", "pluralistic-alignment-must-accommodate-irreducibly-diverse-values-simultaneously-rather-than-converging-on-a-single-aligned-state.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted 5 new claims and 4 enrichments. Primary focus: cross-partisan consensus finding (challenges irreducible disagreement thesis at evaluation layer), cultural context failure (Sri Lanka), safety benchmark gaps (mental health), democratic legitimacy crisis (58% trust AI over representatives), and scale demonstration (100K+ evaluations). Key gap identified: no evidence that Weval evaluations changed actual deployment decisions at frontier labs—adoption is documented but impact on shipped models is unclear."
---

## Content

CIP's 2025 outcomes across three major programs:

**Global Dialogues:**
- Six deliberative dialogues across 70+ countries, 10,000+ participants
- Used stratified sampling and AI-enabled facilitated deliberation
- Key findings:
  - 28% agreed AI should override established rules if calculating better outcomes
  - 58% believed AI could decide better than local elected representatives
  - 13.7% reported deeply concerning or reality-distorting AI interactions
  - 47% reported chatbots increased their belief certainty
- Insights adopted by Meta, Cohere, Taiwan MoDA, UK/US AI Safety Institutes

**Weval (evaluation infrastructure):**
- Political bias evaluation: ~1,000 participants (liberals, moderates, conservatives), 400 prompts, 107 evaluation criteria, 70%+ consensus across political groups
- Sri Lanka elections: models "defaulted to generic, irrelevant responses" — limited civic usefulness in local contexts
- Mental health: evaluations for suicidality, child safety, psychotic symptoms — areas where conventional benchmarks fail
- India reproductive health: 20 medical professionals reviewed across 3 languages

**Samiksha (India):**
- 25,000+ queries across 11 Indian languages
- 100,000+ manual evaluations
- Covers healthcare, agriculture, education, legal domains
- Partnership with Karya and Microsoft Research

**Institutional adoption:** Selected for FFWD nonprofit accelerator, expanded partnerships with Anthropic, Microsoft Research, Karya.

## Agent Notes
**Why this matters:** This is the most comprehensive empirical evidence for democratic alignment at scale. 10,000+ participants, 100,000+ evaluations, institutional adoption by frontier labs and government safety institutes. Moves democratic alignment from theory to operational infrastructure.

**What surprised me:** 70%+ cross-partisan consensus on AI bias definitions. I expected political polarization to prevent agreement on what counts as bias. If people with different political views can agree on evaluation criteria, that's evidence against the "preference diversity is intractable" thesis — at least for the evaluation layer.

**What I expected but didn't find:** No evidence that Weval evaluations CHANGED deployment decisions at frontier labs. "Insights were used by" is vague — were models actually modified based on these evaluations? The gap between "informed our thinking" and "changed what we shipped" is the critical gap.

**KB connections:**
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones]] — massively extended by scale (10,000+ vs. 1,000 in original)
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]] — confirmed across 70+ countries
- [[some disagreements are permanently irreducible because they stem from genuine value differences]] — the 70% consensus finding partially challenges this for evaluation criteria (but not for values themselves)
- [[pluralistic alignment must accommodate irreducibly diverse values simultaneously]] — Weval is an operational implementation

**Extraction hints:** Key claims: (1) cross-partisan consensus on evaluation is achievable at scale, (2) models fail systematically in non-US cultural contexts (Sri Lanka finding), (3) conventional benchmarks miss safety-critical domains (mental health). The 58% "AI decides better" finding deserves its own claim.

**Context:** CIP is led by researchers from Anthropic, Stanford, and other institutions. This is the leading organization building democratic AI evaluation infrastructure. Their work has actual institutional adoption, not just papers.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]]
WHY ARCHIVED: Extends democratic alignment evidence from 1,000-participant assemblies to 10,000+ global participants with institutional adoption
EXTRACTION HINT: Focus on cross-partisan consensus (70%+), the Sri Lanka cultural failure case, and the gap between evaluation adoption and deployment impact. The 58% "AI decides better" finding is a separate claim worth extracting.


## Key Facts
- CIP selected for FFWD nonprofit accelerator (2025)
- Six deliberative dialogues across 70+ countries, 10,000+ participants
- Weval political bias: ~1,000 participants, 400 prompts, 107 criteria
- Samiksha: 25,000+ queries, 100,000+ evaluations, 11 Indian languages
- Partnerships: Meta, Cohere, Taiwan MoDA, UK/US AI Safety Institutes, Anthropic, Microsoft Research, Karya
