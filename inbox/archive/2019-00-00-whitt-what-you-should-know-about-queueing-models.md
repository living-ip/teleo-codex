---
type: source
title: "What You Should Know About Queueing Models"
author: "Ward Whitt (Columbia University)"
url: https://www.columbia.edu/~ww2040/shorter041907.pdf
date: 2019-04-19
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, queueing-theory, square-root-staffing, Halfin-Whitt]
---

# What You Should Know About Queueing Models

Practitioner-oriented guide by Ward Whitt (Columbia), one of the founders of modern queueing theory for service systems. Covers the essential queueing models practitioners need and introduces the Halfin-Whitt heavy-traffic regime.

## Key Content

- Square-root staffing principle: optimal server count = base load + β√(base load), where β is a quality-of-service parameter
- The Halfin-Whitt (QED) regime: systems operate near full utilization while keeping delays manageable — utilization approaches 1 at rate Θ(1/√n) as servers n grow
- Economies of scale in multi-server systems: larger systems need proportionally fewer excess servers
- Practical formulas for determining server counts given arrival rates and service level targets
- Erlang C formula as the workhorse for staffing calculations

## Relevance to Teleo Pipeline

The square-root staffing rule is directly applicable: if our base load requires R workers at full utilization, we should provision R + β√R workers where β ≈ 1-2 depending on target service level. For our scale (~8 sources/cycle, ~5 min service time), this gives concrete worker count guidance.

Critical insight: you don't need to match peak load with workers. The square-root safety margin handles variance efficiently. Over-provisioning for peak is wasteful; under-provisioning for average causes queue explosion. The sweet spot is the QED regime.
