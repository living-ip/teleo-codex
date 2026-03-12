---
type: source
title: "Resource Scheduling in Non-Stationary Service Systems"
author: "Simio / WinterSim 2018"
url: https://www.simio.com/resources/papers/WinterSim2018/Resource-Scheduling-In-Non-stationary-Service-Systems.php
date: 2018-12-01
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, stochastic-modeling, non-stationary-arrivals, resource-scheduling, simulation]
---

# Resource Scheduling in Non-Stationary Service Systems

WinterSim 2018 paper on scheduling resources (servers/workers) when arrival rates change over time. Addresses the gap between theoretical queueing models (which assume stationarity) and real systems (which don't).

## Key Content

- Non-stationary service systems require time-varying staffing — fixed worker counts are suboptimal
- The goal: determine the number of servers as a function of time
- Without server constraints there would be no waiting time, but this wastes capacity since arrivals are stochastic and nonstationary
- Simulation-based approach: use discrete-event simulation to test staffing policies against realistic arrival patterns
- Key tradeoff: responsiveness (adding workers fast when load spikes) vs. efficiency (not wasting workers during quiet periods)

## Relevance to Teleo Pipeline

Directly applicable: our pipeline needs time-varying worker counts, not fixed MAX_WORKERS. The paper validates the approach of measuring queue depth and adjusting workers dynamically rather than using static cron-based fixed pools.
