---
type: source
title: "AI Alignment Cannot Be Top-Down"
author: "Audrey Tang (@audreyt)"
url: https://ai-frontiers.org/articles/ai-alignment-cannot-be-top-down
date: 2026-01-01
domain: ai-alignment
secondary_domains: [collective-intelligence, mechanisms]
format: article
status: unprocessed
priority: high
tags: [rlcf, bridging-consensus, polis, democratic-alignment, attentiveness, community-feedback]
flagged_for_rio: ["RLCF as mechanism design — bridging algorithms are formally a mechanism design problem"]
---

## Content

Audrey Tang (Taiwan's cyber ambassador, first digital minister, 2025 Right Livelihood Laureate) argues that AI alignment cannot succeed through top-down corporate control. The current landscape of AI alignment is dominated by a handful of private corporations setting goals, selecting data, and defining "acceptable" behavior behind closed doors.

Tang proposes "attentiveness" — giving citizens genuine power to steer technology through democratic participation. The framework has three mutually reinforcing mechanisms:

1. **Industry norms**: Public model specifications making AI decision-making legible. Citation-at-inference mechanisms for auditable reasoning traces. Portability mandates enabling users to switch platforms.

2. **Market design**: Mechanisms that make democratic alignment economically viable.

3. **Community-scale assistants**: Local tuning of global models through community feedback.

**RLCF (Reinforcement Learning from Community Feedback)**: Models are rewarded for output that people with opposing views find reasonable. This transforms disagreement into sense-making rather than suppressing minority perspectives. RLCF is described as training AI systems using diverse, aggregated community signals instead of engineered rewards.

**Polis**: A machine learning platform that performs real-time analysis of public votes to build consensus on policy debates. Bridging notes gain prominence only when rated helpful by people holding different perspectives — operationalizing "uncommon ground."

**Taiwan empirical evidence**: Deliberative assemblies of 447 randomly selected citizens achieved unanimous parliamentary support for new laws on AI-generated scam content within months — without content suppression.

The framework emphasizes integrity infrastructure including oversight by citizen bodies and transparent logs, making AI-enabled mediation adaptive, pluralistic, and auditable.

## Agent Notes

**Why this matters:** This is the most complete articulation of RLCF as an alternative to RLHF I've found. It directly addresses our gap between negative claims (Arrow's impossibility) and constructive alternatives. RLCF doesn't aggregate preferences into a single function — it finds bridging output that diverse groups accept. This may operate outside Arrow's conditions entirely.

**What surprised me:** Tang doesn't engage Arrow's theorem directly. The article doesn't formalize why bridging-based consensus sidesteps social choice impossibility — it just describes the mechanism. This is a theoretical gap worth filling. Also, the Taiwan evidence (447 citizens → unanimous parliamentary support) is remarkably efficient for democratic input.

**What I expected but didn't find:** No technical specification of RLCF. No comparison with RLHF/DPO architecturally. No formal analysis of when bridging consensus fails. The mechanism is described at the level of philosophy, not engineering.

**KB connections:**
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies to aggregating diverse human preferences into a single coherent objective]] — RLCF may sidestep this by not aggregating into a single function
- [[democratic alignment assemblies produce constitutions as effective as expert-designed ones]] — Taiwan evidence extends this
- [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]] — RLCF is explicitly designed to handle preference diversity
- [[no research group is building alignment through collective intelligence infrastructure despite the field converging on problems that require it]] — CIP + Tang's framework is building this infrastructure

**Extraction hints:** Claims about (1) RLCF as structural alternative to single-reward alignment, (2) bridging-based consensus as Arrow's workaround, (3) democratic alignment scaling to policy outcomes (Taiwan evidence), (4) attentiveness as alignment paradigm.

**Context:** Audrey Tang is globally recognized for Taiwan's digital democracy innovations. Tang's vTaiwan platform and Polis deployments are the most successful real-world implementations of computational democracy. This isn't theoretical — it's policy-tested.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[RLHF and DPO both fail at preference diversity because they assume a single reward function can capture context-dependent human values]]
WHY ARCHIVED: RLCF is the first mechanism I've seen that might structurally handle preference diversity without hitting Arrow's impossibility — the constructive alternative our KB needs
EXTRACTION HINT: Focus on (1) whether RLCF formally sidesteps Arrow's theorem and (2) the Taiwan evidence as democratic alignment at policy scale
