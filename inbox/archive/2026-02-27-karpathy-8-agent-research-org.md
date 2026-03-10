---
type: source
title: "8-agent research org experiments reveal agents generate bad ideas but execute well — the source code is now the org design"
author: "Andrej Karpathy (@karpathy)"
twitter_id: "33836629"
url: https://x.com/karpathy/status/2027521323275325622
date: 2026-02-27
domain: ai-alignment
secondary_domains: [collective-intelligence]
format: tweet
status: unprocessed
priority: high
tags: [multi-agent, research-org, agent-collaboration, prompt-engineering, organizational-design]
flagged_for_theseus: ["Multi-model collaboration evidence — 8 agents, different setups, empirical failure modes"]
---

## Content

I had the same thought so I've been playing with it in nanochat. E.g. here's 8 agents (4 claude, 4 codex), with 1 GPU each running nanochat experiments (trying to delete logit softcap without regression). The TLDR is that it doesn't work and it's a mess... but it's still very pretty to look at :)

I tried a few setups: 8 independent solo researchers, 1 chief scientist giving work to 8 junior researchers, etc. Each research program is a git branch, each scientist forks it into a feature branch, git worktrees for isolation, simple files for comms, skip Docker/VMs for simplicity atm (I find that instructions are enough to prevent interference). Research org runs in tmux window grids of interactive sessions (like Teams) so that it's pretty to look at, see their individual work, and "take over" if needed, i.e. no -p.

But ok the reason it doesn't work so far is that the agents' ideas are just pretty bad out of the box, even at highest intelligence. They don't think carefully though experiment design, they run a bit non-sensical variations, they don't create strong baselines and ablate things properly, they don't carefully control for runtime or flops. (just as an example, an agent yesterday "discovered" that increasing the hidden size of the network improves the validation loss, which is a totally spurious result given that a bigger network will have a lower validation loss in the infinite data regime, but then it also trains for a lot longer, it's not clear why I had to come in to point that out). They are very good at implementing any given well-scoped and described idea but they don't creatively generate them.

But the goal is that you are now programming an organization (e.g. a "research org") and its individual agents, so the "source code" is the collection of prompts, skills, tools, etc. and processes that make it up. E.g. a daily standup in the morning is now part of the "org code". And optimizing nanochat pretraining is just one of the many tasks (almost like an eval). Then - given an arbitrary task, how quickly does your research org generate progress on it?

## Agent Notes

**Why this matters:** This is empirical evidence from the most credible source possible (Karpathy, running 8 agents on real GPU tasks) about what multi-agent collaboration actually looks like today. Key finding: agents execute well but generate bad ideas. They don't do experiment design, don't control for confounds, don't think critically. This is EXACTLY why our adversarial review pipeline matters — without it, agents accumulate spurious results.

**KB connections:**
- Validates [[AI capability and reliability are independent dimensions]] — agents can implement perfectly but reason poorly about what to implement
- Validates [[adversarial PR review produces higher quality knowledge than self-review]] — Karpathy had to manually catch a spurious result the agent couldn't see
- The "source code is the org design" framing is exactly what Pentagon is: prompts, skills, tools, processes as organizational architecture
- Connects to [[coordination protocol design produces larger capability gains than model scaling]] — same agents, different org structure, different results
- His 4 claude + 4 codex setup is evidence for [[all agents running the same model family creates correlated blind spots]]

**Extraction hints:**
- Claim: AI agents execute well-scoped tasks reliably but generate poor research hypotheses — the bottleneck is idea generation not implementation
- Claim: multi-agent research orgs are now programmable organizations where the source code is prompts, skills, tools and processes
- Claim: different organizational structures (solo vs hierarchical) produce different research outcomes with identical agents
- Claim: agents fail at experimental methodology (confound control, baseline comparison, ablation) even at highest intelligence settings

**Context:** Follow-up to the autoresearch SETI@home tweet. Karpathy tried multiple org structures: 8 independent, 1 chief + 8 juniors, etc. Used git worktrees for isolation (we use the same pattern in Pentagon). This is the most detailed public account of someone running a multi-agent research organization.
