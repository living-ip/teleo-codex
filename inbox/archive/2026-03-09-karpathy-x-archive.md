---
type: source
title: "@karpathy X archive — 100 most recent tweets"
author: "Andrej Karpathy (@karpathy)"
url: https://x.com/karpathy
date: 2026-03-09
domain: ai-alignment
format: tweet
status: processed
processed_by: theseus
processed_date: 2026-03-09
claims_extracted:
  - "AI agents excel at implementing well-scoped ideas but cannot generate creative experiment designs which makes the human role shift from researcher to agent workflow architect"
  - "deep technical expertise is a greater force multiplier when combined with AI agents because skilled practitioners delegate more effectively than novices"
  - "the progression from autocomplete to autonomous agent teams follows a capability-matched escalation where premature adoption creates more chaos than value"
enrichments: []
tags: [human-ai-collaboration, agent-architectures, autoresearch, coding-agents, multi-agent]
linked_set: theseus-x-collab-taxonomy-2026-03
curator_notes: |
  Richest account in the collaboration taxonomy batch. 21 relevant tweets out of 43 unique.
  Karpathy is systematically documenting the new human-AI division of labor through his
  autoresearch project: humans provide direction/taste/creative ideation, agents handle
  implementation/iteration/parallelism. The "programming an organization" framing
  (multi-agent research org) is the strongest signal for the collaboration taxonomy thread.
  Viral tweet (37K likes) marks the paradigm shift claim. Notable absence: very little on
  alignment/safety/governance.
---

# @karpathy X Archive (Feb 21 – Mar 8, 2026)

## Key Tweets by Theme

### Autoresearch: AI-Driven Research Loops

- **Collaborative multi-agent research vision** (status/2030705271627284816, 5,760 likes): "The next step for autoresearch is that it has to be asynchronously massively collaborative for agents (think: SETI@home style). The goal is not to emulate a single PhD student, it's to emulate a research community of them. [...] Agents can in principle easily juggle and collaborate on thousands of commits across arbitrary branch structures. Existing abstractions will accumulate stress as intelligence, attention and tenacity cease to be bottlenecks."

- **Autoresearch repo launch** (status/2030371219518931079, 23,608 likes): "I packaged up the 'autoresearch' project into a new self-contained minimal repo [...] the human iterates on the prompt (.md) - the AI agent iterates on the training code (.py) [...] every dot is a complete LLM training run that lasts exactly 5 minutes."

- **8-agent research org experiment** (status/2027521323275325622, 8,645 likes): "I had the same thought so I've been playing with it in nanochat. E.g. here's 8 agents (4 claude, 4 codex), with 1 GPU each [...] I tried a few setups: 8 independent solo researchers, 1 chief scientist giving work to 8 junior researchers, etc. [...] They are very good at implementing any given well-scoped and described idea but they don't creatively generate them. But the goal is that you are now programming an organization."

- **Meta-optimization** (status/2029701092347630069, 6,212 likes): "I now have AI Agents iterating on nanochat automatically [...] over the last ~2 weeks I almost feel like I've iterated more on the 'meta-setup' where I optimize and tune the agent flows even more than the nanochat repo directly."

- **Research org as benchmark** (status/2029702379034267985, 1,031 likes): "the real benchmark of interest is: 'what is the research org agent code that produces improvements on nanochat the fastest?' this is the new meta."

- **Agents closer to hyperparameter tuning than novel research** (status/2029957088022254014, 105 likes): "AI agents are very good at implementing ideas, but a lot less good at coming up with creative ones. So honestly, it's a lot closer to hyperparameter tuning right now than coming up with new/novel research."

### Human-AI Collaboration Patterns

- **Programming has fundamentally changed** (status/2026731645169185220, 37,099 likes): "It is hard to communicate how much programming has changed due to AI in the last 2 months [...] coding agents basically didn't work before December and basically work since [...] You're spinning up AI agents, giving them tasks *in English* and managing and reviewing their work in parallel. [...] It's not perfect, it needs high-level direction, judgement, taste, oversight, iteration and hints and ideas."

- **Tab → Agent → Agent Teams** (status/2027501331125239822, 3,821 likes): "Cool chart showing the ratio of Tab complete requests to Agent requests in Cursor. [...] None -> Tab -> Agent -> Parallel agents -> Agent Teams (?) -> ??? If you're too conservative, you're leaving leverage on the table. If you're too aggressive, you're net creating more chaos than doing useful work."

- **Deep expertise as multiplier** (status/2026743030280237562, 880 likes): "'prompters' is doing it a disservice and is imo a misunderstanding. I mean sure vibe coders are now able to get somewhere, but at the top tiers, deep technical expertise may be *even more* of a multiplier than before because of the added leverage."

- **AI as delegation, not magic** (status/2026735109077135652, 243 likes): "Yes, in this intermediate state, you go faster if you can be more explicit and actually understand what the AI is doing on your behalf, and what the different tools are at its disposal, and what is hard and what is easy. It's not magic, it's delegation."

- **Removing yourself as bottleneck** (status/2026738848420737474, 694 likes): "how can you gather all the knowledge and context the agent needs that is currently only in your head [...] the goal is to arrange the thing so that you can put agents into longer loops and remove yourself as the bottleneck. 'every action is error', we used to say at tesla."

- **Human still needs IDE oversight** (status/2027503094016446499, 119 likes): "I still keep an IDE open and surgically edit files so yes. I still notice dumb issues with the code which helps me prompt better."

- **AI already writing 90% of code** (status/2030408126688850025, 521 likes): "definitely. the current one is already 90% AI written I ain't writing all that"

- **Teacher's unique contribution** (status/2030387285250994192, 430 likes): "Teacher input is the unique sliver of contribution that the AI can't make yet (but usually already easily understands when given)."

### Agent Infrastructure

- **CLIs as agent-native interfaces** (status/2026360908398862478, 11,727 likes): "CLIs are super exciting precisely because they are a 'legacy' technology, which means AI agents can natively and easily use them [...] It's 2026. Build. For. Agents."

- **Compute infrastructure for agentic loops** (status/2026452488434651264, 7,422 likes): "the workflow that may matter the most (inference decode *and* over long token contexts in tight agentic loops) is the one hardest to achieve simultaneously."

- **Agents replacing legacy interfaces** (status/2030722108322717778, 1,941 likes): "Every business you go to is still so used to giving you instructions over legacy interfaces. [...] Please give me the thing I can copy paste to my agent."

- **Cross-model transfer confirmed** (status/2030777122223173639, 3,840 likes): "I just confirmed that the improvements autoresearch found over the last 2 days of (~650) experiments on depth 12 model transfer well to depth 24."

## Filtered Out
~22 tweets: casual replies, jokes, hyperparameter discussion, off-topic commentary.
