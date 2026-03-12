---
type: source
title: "An Overview for Markov Decision Processes in Queues and Networks"
author: "Quan-Lin Li, Jing-Yu Ma, Rui-Na Fan, Li Xia"
url: https://arxiv.org/abs/1907.10243
date: 2019-07-24
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, markov-decision-process, queueing-theory, dynamic-programming]
---

# An Overview for Markov Decision Processes in Queues and Networks

Comprehensive 42-page survey of MDP applications in queueing systems, covering 60+ years of research from the 1960s to present.

## Key Content

- Continuous-time MDPs for queue management: decisions happen at state transitions (arrivals, departures)
- Classic results: optimal policies often have threshold structure — "serve if queue > K, idle if queue < K"
- For multi-server systems: optimal admission and routing policies are often simple (join-shortest-queue, threshold-based)
- Dynamic programming and stochastic optimization provide tools for deriving optimal policies
- Key challenge: curse of dimensionality — state space explodes with multiple queues/stages
- Practical approaches: approximate dynamic programming, reinforcement learning for large state spaces
- Emerging direction: deep RL for queue management in networks and cloud computing

## Relevance to Teleo Pipeline

Our pipeline has a manageable state space (queue depths across 3 stages, worker counts, time-of-day) — small enough for exact MDP solution via value iteration. The survey confirms that optimal policies for our type of system typically have threshold structure: "if queue > X and workers < Y, spawn a worker." This means even without solving the full MDP, a well-tuned threshold policy will be near-optimal.
