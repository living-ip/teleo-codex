---
type: source
title: "On Queueing Theory for Large-Scale CI/CD Pipelines Optimization"
author: "Grégory Bournassenko"
url: https://arxiv.org/abs/2504.18705
date: 2025-04-25
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, queueing-theory, ci-cd, M/M/c-queue]
---

# On Queueing Theory for Large-Scale CI/CD Pipelines Optimization

Academic paper applying classical M/M/c queueing theory to model CI/CD pipeline systems. Proposes a queueing theory modeling framework to optimize large-scale build/test workflows using multi-server queue models.

## Key Content

- Addresses bottleneck formation in high-volume shared infrastructure pipelines
- Models pipeline stages as M/M/c queues (Poisson arrivals, exponential service, c servers)
- Integrates theoretical queueing analysis with practical optimization — dynamic scaling and prioritization of CI/CD tasks
- Framework connects arrival rate modeling to worker count optimization
- Demonstrates that classical queueing models provide actionable guidance for real software pipelines

## Relevance to Teleo Pipeline

Direct parallel: our extract/eval pipeline IS a multi-stage CI/CD-like system. Sources arrive (Poisson-ish), workers process them (variable service times), and queue depth determines throughput. The M/M/c framework gives us closed-form solutions for expected wait times given worker counts.

Key insight: M/M/c queues show that adding workers has diminishing returns — the marginal improvement of worker N+1 decreases as N grows. This means there's an optimal worker count beyond which additional workers waste compute without meaningfully reducing queue wait times.
