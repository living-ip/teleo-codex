---
type: source
title: "Using Little's Law to Scale Applications"
author: "Dan Slimmon"
url: https://blog.danslimmon.com/2022/06/07/using-littles-law-to-scale-applications/
date: 2022-06-07
domain: internet-finance
format: essay
status: unprocessed
tags: [pipeline-architecture, operations-research, queueing-theory, littles-law, capacity-planning]
---

# Using Little's Law to Scale Applications

Practitioner guide showing how Little's Law (L = λW) provides a simple but powerful tool for capacity planning in real systems.

## Key Content

- Little's Law: L = λW where L = average items in system, λ = arrival rate, W = average time per item
- Rearranged for capacity: (total worker threads) ≥ (arrival rate)(average processing time)
- Practical example: 1000 req/s × 0.34s = 340 concurrent requests needed
- Important caveat: Little's Law gives long-term averages only — real systems need buffer capacity beyond the theoretical minimum to handle variance
- The formula guides capacity planning but isn't a complete scaling solution — it's the floor, not the ceiling

## Relevance to Teleo Pipeline

Direct application: if we process ~8 sources per extraction cycle (every 5 min) and each takes ~10-15 min of Claude compute, Little's Law says L = (8/300s) × 750s ≈ 20 sources in-flight at steady state. With 6 workers, each handles ~3.3 sources concurrently — which means we need the workers to pipeline or we'll have queue buildup.

More practically: λ = average sources per second, W = average extraction time. Total workers needed ≥ λ × W. This gives us the minimum worker floor. The square-root staffing rule gives us the safety margin above that floor.
