---
type: source
title: "AIMD Dynamics and Distributed Resource Allocation"
author: "Martin J. Corless, C. King, R. Shorten, F. Wirth (SIAM)"
url: https://epubs.siam.org/doi/book/10.1137/1.9781611974225
date: 2016-01-01
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, AIMD, distributed-resource-allocation, congestion-control, fairness]
---

# AIMD Dynamics and Distributed Resource Allocation

SIAM monograph on AIMD (Additive Increase Multiplicative Decrease) as a general-purpose distributed resource allocation mechanism. Extends the TCP congestion control principle to resource allocation in computing, energy, and other domains.

## Key Content

- AIMD is the most widely used method for allocating limited resources among competing agents without centralized control
- Core algorithm: additive increase when no congestion (rate += α), multiplicative decrease when congestion detected (rate *= β, where 0 < β < 1)
- Provably fair: converges to equal sharing of available bandwidth/capacity
- Provably stable: system converges regardless of number of agents or parameter values
- Three sample applications: internet congestion control, smart grid energy allocation, distributed computing
- Key property: no global information needed — each agent only needs to observe local congestion signals

## Relevance to Teleo Pipeline

AIMD provides a principled, proven scaling algorithm: when eval queue is shrinking (no congestion), increase extraction workers by 1 per cycle. When eval queue is growing (congestion), halve extraction workers. This doesn't require predicting load, modeling arrivals, or solving optimization problems — it reacts to observed system state and is mathematically guaranteed to converge. Perfect for our "expensive compute, variable load" setting.
