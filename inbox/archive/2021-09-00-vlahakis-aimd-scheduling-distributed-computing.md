---
type: source
title: "AIMD Scheduling and Resource Allocation in Distributed Computing Systems"
author: "Vlahakis, Athanasopoulos et al."
url: https://arxiv.org/abs/2109.02589
date: 2021-09-06
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, AIMD, distributed-computing, resource-allocation, congestion-control]
---

# AIMD Scheduling and Resource Allocation in Distributed Computing Systems

Applies TCP's AIMD (Additive Increase Multiplicative Decrease) congestion control to distributed computing resource allocation — scheduling incoming requests across computing nodes.

## Key Content

- Models distributed system as multi-queue scheme with computing nodes
- Proposes AIMD-like admission control: stable irrespective of total node count and AIMD parameters
- Key insight: congestion control in networks and worker scaling in compute pipelines are the same problem — matching producer rate to consumer capacity
- Decentralized resource allocation using nonlinear state feedback achieves global convergence to bounded set in finite time
- Connects to QoS via Little's Law: local queuing time calculable from simple formula
- AIMD is proven optimal for fair allocation of shared resources among competing agents without centralized control

## Relevance to Teleo Pipeline

AIMD provides an elegant scaling policy: when queue is shrinking (system healthy), add workers linearly (e.g., +1 per cycle). When queue is growing (system overloaded), cut workers multiplicatively (e.g., halve them). This is self-correcting, proven stable, and doesn't require predicting load — it reacts to observed queue state.

The TCP analogy is precise: our pipeline "bandwidth" is eval throughput. When extract produces faster than eval can consume, we need backpressure (slow extraction) or scale-up (more eval workers). AIMD handles this naturally.
