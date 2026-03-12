---
type: source
title: "Optimal Control Policies for Resource Allocation in the Cloud: Comparison Between Markov Decision Process and Heuristic Approaches"
author: "Thomas Tournaire, Hind Castel-Taleb, Emmanuel Hyon"
url: https://arxiv.org/abs/2104.14879
date: 2021-04-30
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, markov-decision-process, cloud-autoscaling, optimal-control]
---

# Optimal Control Policies for Resource Allocation in the Cloud

Compares MDP-based optimal scaling policies against heuristic approaches for cloud auto-scaling. The MDP formulation treats VM provisioning as a sequential decision problem.

## Key Content

- Auto-scaling problem: VMs turned on/off based on queue occupation to minimize combined energy + performance cost
- MDP formulation: states = queue lengths + active VMs, actions = add/remove VMs, rewards = negative cost (energy + SLA violations)
- Value iteration and policy iteration algorithms find optimal threshold policies
- Structured MDP algorithms incorporating hysteresis properties outperform heuristics in both execution time and accuracy
- Hysteresis: different thresholds for scaling up vs. scaling down — prevents oscillation (e.g., scale up at queue=10, scale down at queue=3)
- MDP algorithms find optimal hysteresis thresholds automatically

## Relevance to Teleo Pipeline

The MDP formulation maps directly: states = (unprocessed queue, in-flight extractions, open PRs, active workers), actions = (spawn worker, kill worker, wait), cost = (Claude compute cost per worker-minute + delay cost per queued source). The hysteresis insight is particularly valuable — we should have different thresholds for spinning up vs. spinning down workers to prevent oscillation.

Key finding: structured MDP with hysteresis outperforms simple threshold heuristics. But even simple threshold policies (scale up at queue=N, scale down at queue=M where M < N) perform reasonably well.
