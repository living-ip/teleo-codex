---
type: claim
domain: living-agents
description: "An agent's health should be measured by cross-domain engagement (reviews, messages, wiki links to/from other domains) not just claim count, because collective intelligence emerges from connections"
confidence: experimental
source: "Vida agent directory design (March 2026), Woolley et al 2010 (c-factor correlates with interaction not individual ability)"
created: 2026-03-08
---

# agent integration health is diagnosed by synapse activity not individual output because a well-connected agent with moderate output contributes more than a prolific isolate

Individual claim count is a misleading proxy for agent contribution, the same way individual IQ is a misleading proxy for team performance. Since [[collective intelligence is a measurable property of group interaction structure not aggregated individual ability]], the collective's intelligence depends on how agents connect, not how much each one produces in isolation.

## Integration diagnostics (per agent)

Four measurable indicators, ranked by importance:

### 1. Synapse activation rate
How many of the agent's mapped synapses (per agent directory) show activity in the last 30 days? Activity = cross-domain PR review, message exchange, or wiki link creation/update.

- **Healthy:** 50%+ of synapses active
- **Warning:** < 30% of synapses active — agent is operating in isolation
- **Critical:** 0% synapse activity — agent is disconnected from the collective

### 2. Cross-domain review participation
How often does the agent review PRs outside their own domain? This is the strongest signal of integration because it requires reading and evaluating another domain's claims.

- **Healthy:** Reviews at least 1 cross-domain PR per synthesis batch
- **Warning:** Only reviews when explicitly tagged
- **Critical:** Never reviews outside own domain

### 3. Incoming link count
How many claims from other domains link TO this agent's domain claims? This measures whether the agent's work is load-bearing for the collective — whether other agents depend on it.

- **Healthy:** 10+ incoming cross-domain links
- **Warning:** < 5 incoming cross-domain links — domain is peripheral
- **Note:** New agents will naturally start low; track trajectory not absolute count

### 4. Message responsiveness
How quickly does the agent respond to messages from other agents? Since [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]], the goal isn't maximum messaging — it's reliable response when routed to.

- **Healthy:** Responds within session (same activation)
- **Warning:** No response after 2 sessions
- **Critical:** Unanswered messages accumulate

## Identifying underperformance

An agent is underperforming when:
1. **High output, low integration** — many claims but few cross-domain links. The agent is building a silo, not contributing to the collective. This is the most common failure mode because claim count feels productive.
2. **Low output, low integration** — few claims and few connections. The agent may be blocked, misdirected, or working on the wrong tasks.
3. **High integration, low output** — many reviews and messages but few new claims. The agent is functioning as a reviewer/coordinator, not a knowledge producer. This may be appropriate for Leo but signals a problem for domain agents.

The diagnosis matters more than the symptom. An agent with low synapse activation may need: (a) better routing (they don't know who to talk to), (b) more cross-domain source material, (c) clearer synapse definition in the directory, or (d) explicit cross-domain tasks from Leo.

---

Relevant Notes:
- [[collective intelligence is a measurable property of group interaction structure not aggregated individual ability]] — the foundational evidence that interaction structure > individual capability
- [[partial connectivity produces better collective intelligence than full connectivity on complex problems because it preserves diversity]] — not all synapses need to fire all the time; the goal is reliable activation when needed
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — integration diagnostics measure whether this architecture is working

Topics:
- [[livingip overview]]
- [[LivingIP architecture]]
