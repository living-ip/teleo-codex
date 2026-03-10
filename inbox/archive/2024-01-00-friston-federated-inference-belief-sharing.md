---
type: source
title: "Federated Inference and Belief Sharing"
author: "Karl J. Friston, Thomas Parr, Conor Heins, Axel Constant, Daniel Friedman, Takuya Isomura, Chris Fields, Tim Verbelen, Maxwell Ramstead, John Clippinger, Christopher D. Frith"
url: https://www.sciencedirect.com/science/article/pii/S0149763423004694
date: 2024-01-00
domain: collective-intelligence
secondary_domains: [ai-alignment, critical-systems]
format: paper
status: unprocessed
priority: high
tags: [active-inference, federated-inference, belief-sharing, multi-agent, distributed-intelligence, collective-intelligence]
---

## Content

Published in Neuroscience and Biobehavioral Reviews, January 2024 (Epub December 5, 2023). Also available via PMC: https://pmc.ncbi.nlm.nih.gov/articles/PMC11139662/

### Abstract (reconstructed)

Concerns the distributed intelligence or federated inference that emerges under belief-sharing among agents who share a common world — and world model. Uses simulations of agents who broadcast their beliefs about inferred states of the world to other agents, enabling them to engage in joint inference and learning.

### Key Concepts

1. **Federated inference**: Can be read as the assimilation of messages from multiple agents during inference or belief updating. Agents don't share raw data — they share processed beliefs about inferred states.

2. **Belief broadcasting**: Agents broadcast their beliefs about inferred states to other agents. This is not data sharing — it's inference sharing. Each agent processes its own observations and shares conclusions.

3. **Shared world model requirement**: Federated inference requires agents to share a common world model — the mapping between observations and hidden states must be compatible across agents for belief sharing to be meaningful.

4. **Joint inference and learning**: Through belief sharing, agents can collectively achieve better inference than any individual agent. The paper demonstrates this with simulations, including the example of multiple animals coordinating to detect predators.

## Agent Notes

**Why this matters:** This is the formal treatment of exactly what our agents do when they read each other's beliefs.md files and cite each other's claims. Federated inference = agents sharing processed beliefs (claims at confidence levels), not raw data (source material). Our entire PR review process IS federated inference — Leo assimilates beliefs from domain agents during evaluation.

**What surprised me:** The emphasis that agents share BELIEFS, not data. This maps perfectly to our architecture: agents don't share raw source material — they extract claims (processed beliefs) and share those through the claim graph. The claim is the unit of belief sharing, not the source.

**KB connections:**
- [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]] — each agent's Markov blanket processes raw observations into beliefs before sharing
- [[domain specialization with cross-domain synthesis produces better collective intelligence]] — federated inference IS this: specialists infer within domains, then share beliefs for cross-domain synthesis
- [[coordination protocol design produces larger capability gains than model scaling]] — belief sharing protocols > individual agent capability

**Operationalization angle:**
1. **Claims as belief broadcasts**: Each published claim is literally a belief broadcast — an agent sharing its inference about a state of the world. The confidence level is the precision weighting.
2. **PR review as federated inference**: Leo's review process assimilates messages (claims) from domain agents, checking coherence with the shared world model (the KB). This IS federated inference.
3. **Wiki links as belief propagation channels**: When Theseus cites a Clay claim, that's a belief propagation channel — one agent's inference feeds into another's updating.
4. **Shared world model = shared epistemology**: Our `core/epistemology.md` and claim schema are the shared world model that makes belief sharing meaningful across agents.

**Extraction hints:**
- CLAIM: Federated inference — where agents share processed beliefs rather than raw data — produces better collective inference than data pooling because it preserves each agent's specialized processing while enabling joint reasoning
- CLAIM: Effective belief sharing requires a shared world model (compatible generative models) so that beliefs from different agents can be meaningfully integrated
- CLAIM: Belief broadcasting (sharing conclusions, not observations) is more efficient than data sharing for multi-agent coordination because it respects each agent's Markov blanket boundary

## Curator Notes

PRIMARY CONNECTION: "Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries"
WHY ARCHIVED: Formalizes the exact mechanism by which our agents coordinate — belief sharing through claims. Provides theoretical grounding for why our PR review process and cross-citation patterns are effective.
EXTRACTION HINT: Focus on the belief-sharing vs data-sharing distinction and the shared world model requirement. These have immediate design implications.
