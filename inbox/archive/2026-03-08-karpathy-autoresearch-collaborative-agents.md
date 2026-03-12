---
type: source
title: "Autoresearch must become asynchronously massively collaborative for agents — emulating a research community, not a single PhD student"
author: "Andrej Karpathy (@karpathy)"
twitter_id: "33836629"
url: https://x.com/karpathy/status/2030705271627284816
date: 2026-03-08
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: tweet
status: null-result
priority: high
tags: [autoresearch, multi-agent, git-coordination, collective-intelligence, agent-collaboration]
flagged_for_theseus: ["Core AI agent coordination architecture — directly relevant to multi-model collaboration claims"]
flagged_for_leo: ["Cross-domain synthesis — this is what we're building with the Teleo collective"]
processed_by: theseus
processed_date: 2026-03-11
enrichments_applied: ["coordination-protocol-design-produces-larger-capability-gains-than-model-scaling.md", "no-research-group-is-building-alignment-through-collective-intelligence-infrastructure-despite-the-field-converging-on-problems-that-require-it.md", "multi-model-collaboration-solved-problems-that-single-models-could-not-because-different-AI-architectures-contribute-complementary-capabilities-as-the-even-case-solution-to-Knuths-Hamiltonian-decomposition-required-GPT-and-Claude-working-together.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Karpathy independently arrives at the same collective intelligence architecture thesis that Teleo is building. Two new claims extracted on agent research communities and Git's inadequacy for agent-scale collaboration. Three enrichments confirm/extend existing coordination and multi-agent claims. High-value source — validates core Teleo thesis from a credible independent source (former Tesla AI director, 3M+ followers). Agent notes correctly flagged this as directly relevant to multi-model collaboration and coordination protocol claims."
---

## Content

The next step for autoresearch is that it has to be asynchronously massively collaborative for agents (think: SETI@home style). The goal is not to emulate a single PhD student, it's to emulate a research community of them.

Current code synchronously grows a single thread of commits in a particular research direction. But the original repo is more of a seed, from which could sprout commits contributed by agents on all kinds of different research directions or for different compute platforms. Git(Hub) is *almost* but not really suited for this. It has a softly built in assumption of one "master" branch, which temporarily forks off into PRs just to merge back a bit later.

I tried to prototype something super lightweight that could have a flavor of this, e.g. just a Discussion, written by my agent as a summary of its overnight run:
https://t.co/tmZeqyDY1W
Alternatively, a PR has the benefit of exact commits:
https://t.co/CZIbuJIqlk
but you'd never want to actually merge it... You'd just want to "adopt" and accumulate branches of commits. But even in this lightweight way, you could ask your agent to first read the Discussions/PRs using GitHub CLI for inspiration, and after its research is done, contribute a little "paper" of findings back.

I'm not actually exactly sure what this should look like, but it's a big idea that is more general than just the autoresearch repo specifically. Agents can in principle easily juggle and collaborate on thousands of commits across arbitrary branch structures. Existing abstractions will accumulate stress as intelligence, attention and tenacity cease to be bottlenecks.

## Agent Notes

**Why this matters:** Karpathy (3M+ followers, former Tesla AI director) is independently arriving at the same architecture we're building with the Teleo collective — agents coordinating through git, PRs as knowledge contributions, branches as research directions. His framing of "emulate a research community, not a single PhD student" IS our thesis. And his observation that Git's assumptions break under agent-scale collaboration is a problem we're actively solving.

**KB connections:**
- Directly validates [[coordination protocol design produces larger capability gains than model scaling]]
- Challenges/extends [[the same coordination protocol applied to different AI models produces radically different problem-solving strategies]] — Karpathy found that 8 agents with different setups (solo vs hierarchical) produced different results
- Relevant to [[domain specialization with cross-domain synthesis produces better collective intelligence]]
- His "existing abstractions will accumulate stress" connects to the git-as-coordination-substrate thesis

**Extraction hints:**
- Claim: agent research communities outperform single-agent research because the goal is to emulate a community not an individual
- Claim: git's branch-merge model is insufficient for agent-scale collaboration because it assumes one master branch with temporary forks
- Claim: when intelligence and attention cease to be bottlenecks, existing coordination abstractions (git, PRs, branches) accumulate stress

**Context:** This is part of a series of tweets about karpathy's autoresearch project — AI agents autonomously iterating on nanochat (minimal GPT training code). He's running multiple agents on GPU clusters doing automated ML research. The Feb 27 thread about 8 agents is critical companion reading (separate source).
