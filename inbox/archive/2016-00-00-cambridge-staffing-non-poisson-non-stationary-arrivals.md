---
type: source
title: "Staffing a Service System with Non-Poisson Non-Stationary Arrivals"
author: "Ward Whitt et al. (Cambridge Core)"
url: https://www.cambridge.org/core/journals/probability-in-the-engineering-and-informational-sciences/article/abs/staffing-a-service-system-with-nonpoisson-nonstationary-arrivals/0F42FDA80A8B0B197D3D9E0B040A43D2
date: 2016-01-01
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, stochastic-modeling, non-stationary-arrivals, capacity-sizing]
---

# Staffing a Service System with Non-Poisson Non-Stationary Arrivals

Extends the square-root staffing formula to handle non-Poisson arrival processes, including non-stationary Cox processes where the arrival rate itself is a stochastic process.

## Key Content

- Standard Poisson assumption fails when arrivals are bursty or time-varying
- Introduces "peakedness" — the variance-to-mean ratio of the arrival process — as the key parameter for non-Poisson adjustment
- Modified staffing formula: adjust the square-root safety margin by the peakedness factor
- For bursty arrivals (peakedness > 1), you need MORE safety capacity than Poisson models suggest
- For smooth arrivals (peakedness < 1), you need LESS
- Practical: replacing time-varying arrival rates with constant (average or max) leads to badly under- or over-staffed systems

## Relevance to Teleo Pipeline

Our arrival process is highly non-stationary: research dumps are bursty (15 sources at once), futardio launches come in bursts of 20+, while some days are quiet. This is textbook non-Poisson non-stationary. The peakedness parameter captures exactly how bursty our arrivals are and tells us how much extra capacity we need beyond the basic square-root staffing rule.

Key insight: using a constant MAX_WORKERS regardless of current queue state is the worst of both worlds — too many workers during quiet periods (wasted compute), too few during bursts (queue explosion).
