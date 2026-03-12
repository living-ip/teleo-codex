---
type: source
title: "The Flexible Job Shop Scheduling Problem: A Review"
author: "ScienceDirect review article"
url: https://www.sciencedirect.com/science/article/pii/S037722172300382X
date: 2023-01-01
domain: internet-finance
format: paper
status: processed
processed_by: rio
processed_date: 2026-03-12
claims_extracted:
  - core/grand-strategy/hybrid-flow-shop-pipelines-with-few-stages-and-homogeneous-workers-perform-within-5-10-percent-of-optimal-with-simple-priority-dispatching-rules.md
enrichments: []
notes: "Source tagged internet-finance but contains no internet-finance claims. Single claim extracted to grand-strategy — scheduling theory applied to pipeline architecture. Domain mismatch in source metadata."
tags: [pipeline-architecture, operations-research, combinatorial-optimization, job-shop-scheduling, flexible-scheduling]
---

# The Flexible Job Shop Scheduling Problem: A Review

Comprehensive review of the Flexible Job Shop Scheduling Problem (FJSP) — a generalization of classical JSSP where operations can be processed on any machine from a set of eligible machines.

## Key Content

- Classical Job Shop Scheduling Problem (JSSP): n jobs, m machines, fixed operation-to-machine mapping, NP-complete for m > 2
- Flexible JSSP (FJSP): operations can run on any eligible machine — adds machine assignment as a decision variable
- Flow-shop: all jobs follow the same machine order (our pipeline: research → extract → eval)
- Job-shop: jobs can have different machine orders (not our case)
- Hybrid flow-shop: multiple machines at each stage, jobs follow same stage order but can use any machine within a stage (THIS is our model)
- Solution approaches: metaheuristics (genetic algorithms, simulated annealing, tabu search) dominate for NP-hard instances
- Recent trend: multi-agent reinforcement learning for dynamic scheduling with worker heterogeneity and uncertainty

## Relevance to Teleo Pipeline

Our pipeline is a **hybrid flow-shop**: three stages (research → extract → eval), multiple workers at each stage, all sources flow through the same stage sequence. This is computationally easier than general JSSP. Key insight: for a hybrid flow-shop with relatively few stages and homogeneous workers within each stage, simple priority dispatching rules (shortest-job-first, FIFO within priority classes) perform within 5-10% of optimal. We don't need metaheuristics — we need good dispatching rules.
