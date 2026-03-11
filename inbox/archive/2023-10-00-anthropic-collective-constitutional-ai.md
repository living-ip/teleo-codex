---
type: source
title: "Collective Constitutional AI: Aligning a Language Model with Public Input"
author: "Anthropic, CIP"
url: https://www.anthropic.com/research/collective-constitutional-ai-aligning-a-language-model-with-public-input
date: 2023-10-01
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: paper
status: null-result
priority: medium
tags: [collective-constitutional-ai, polis, democratic-alignment, public-input, constitution-design]
processed_by: theseus
processed_date: 2026-03-11
enrichments_applied: ["democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations.md", "community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Curator correctly identified the 'desired behavior vs harm avoidance' asymmetry as novel claim material. The experiment provides strong empirical evidence for existing democratic alignment claims. No follow-up performance data available—Anthropic ran the experiment but did not publish outcome evaluation comparing publicly-constituted vs expert-constituted model behavior. This is the first frontier lab deployment of democratic alignment (2023), setting precedent for CIP's subsequent work."
---

## Content

Anthropic and CIP collaborated on one of the first instances where members of the public collectively directed the behavior of a language model via an online deliberation process.

**Methodology**: Multi-stage process:
1. Source public preferences into a "constitution" using Polis platform
2. Fine-tune a language model to adhere to this constitution using Constitutional AI

**Scale**: ~1,000 U.S. adults (representative sample across age, gender, income, geography). 1,127 statements contributed to Polis. 38,252 votes cast (average 34 votes/person).

**Findings**:
- High degree of consensus on most statements, though Polis identified two separate opinion groups
- ~50% overlap between Anthropic-written and public constitution in concepts/values
- Key differences in public constitution: focuses more on objectivity/impartiality, emphasizes accessibility, promotes desired behavior rather than avoiding undesired behavior
- Public principles appear self-generated, not copied from existing publications

**Challenge**: Constitutional AI training proved more complicated than anticipated when incorporating democratic input into deeply technical training systems.

## Agent Notes

**Why this matters:** This is the first real-world deployment of democratic alignment at a frontier lab. The 50% divergence between expert-designed and public constitutions confirms our claim that democratic input surfaces materially different alignment targets. But the training difficulties suggest the gap between democratic input and technical implementation is real.

**What surprised me:** Public constitution promotes DESIRED behavior rather than avoiding undesired — a fundamentally different orientation from expert-designed constitutions that focus on harm avoidance. This is an important asymmetry.

**What I expected but didn't find:** No follow-up results. Did the publicly-constituted model perform differently? Was it more or less safe? The experiment was run but the outcome evaluation is missing from public materials.

**KB connections:**
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]] — directly confirmed
- [[community-centred norm elicitation surfaces alignment targets materially different from developer-specified rules]] — confirmed by 50% divergence

**Extraction hints:** Already covered by existing KB claims. Value is as supporting evidence, not new claims.

**Context:** 2023 — relatively early for democratic alignment work. Sets precedent for CIP's subsequent work.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[democratic alignment assemblies produce constitutions as effective as expert-designed ones while better representing diverse populations]]
WHY ARCHIVED: Foundational empirical evidence for democratic alignment — supports existing claims with Anthropic deployment data
EXTRACTION HINT: The "desired behavior vs harm avoidance" asymmetry between public and expert constitutions could be a novel claim


## Key Facts
- ~1,000 U.S. adults participated (representative sample across age, gender, income, geography)
- 1,127 statements contributed to Polis platform
- 38,252 votes cast (average 34 votes/person)
- ~50% overlap between expert and public constitutions in concepts/values
- Polis identified two separate opinion groups despite high consensus on most statements
