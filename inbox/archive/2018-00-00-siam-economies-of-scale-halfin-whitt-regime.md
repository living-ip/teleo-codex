---
type: source
title: "Economies-of-Scale in Many-Server Queueing Systems: Tutorial and Partial Review of the QED Halfin-Whitt Heavy-Traffic Regime"
author: "Johan van Leeuwaarden, Britt Mathijsen, Jaron Sanders (SIAM Review)"
url: https://epubs.siam.org/doi/10.1137/17M1133944
date: 2018-01-01
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, operations-research, queueing-theory, Halfin-Whitt, economies-of-scale, square-root-staffing]
---

# Economies-of-Scale in Many-Server Queueing Systems

SIAM Review tutorial on the QED (Quality-and-Efficiency-Driven) Halfin-Whitt heavy-traffic regime — the mathematical foundation for understanding when and how multi-server systems achieve economies of scale.

## Key Content

- The QED regime: operate near full utilization while keeping delays manageable
- As server count n grows, utilization approaches 1 at rate Θ(1/√n) — the "square root staffing" principle
- Economies of scale: larger systems need proportionally fewer excess servers for the same service quality
- The regime applies to systems ranging from tens to thousands of servers
- Square-root safety staffing works empirically even for moderate-sized systems (5-20 servers)
- Tutorial connects abstract queueing theory to practical staffing decisions

## Relevance to Teleo Pipeline

At our scale (5-6 workers), we're in the "moderate system" range where square-root staffing still provides useful guidance. The key takeaway: we don't need sophisticated algorithms for a system this small. Simple threshold policies informed by queueing theory will capture most of the benefit. The economies-of-scale result also tells us that if we grow to 20+ workers, the marginal value of each additional worker decreases — important for cost optimization.
