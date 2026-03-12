---
type: source
title: "Modeling and Simulation of Nonstationary Non-Poisson Arrival Processes"
author: "Yunan Liu et al. (NC State)"
url: https://yunanliu.wordpress.ncsu.edu/files/2019/11/CIATApublished.pdf
date: 2019-01-01
domain: internet-finance
format: paper
status: unprocessed
tags: [pipeline-architecture, stochastic-modeling, non-stationary-arrivals, MMPP, batch-arrivals]
---

# Modeling and Simulation of Nonstationary Non-Poisson Arrival Processes

Introduces the CIATA (Combined Inversion-and-Thinning Approach) method for modeling nonstationary non-Poisson processes characterized by a rate function, mean-value function, and asymptotic variance-to-mean (dispersion) ratio.

## Key Content

- Standard Poisson process assumptions break down when arrivals are bursty or correlated
- CIATA models target arrival processes via rate function + dispersion ratio — captures both time-varying intensity and burstiness
- The Markov-MECO process (a Markovian arrival process / MAP) models interarrival times as absorption times of a continuous-time Markov chain
- Markov-Modulated Poisson Process (MMPP): arrival rate switches between states governed by a hidden Markov chain — natural model for "bursty then quiet" patterns
- Key finding: replacing a time-varying arrival rate with a constant (max or average) leads to systems being badly understaffed or overstaffed
- Congestion measures are increasing functions of arrival process variability — more bursty = more capacity needed

## Relevance to Teleo Pipeline

Our arrival process is textbook MMPP: there's a hidden state (research session happening vs. quiet period) that governs the arrival rate. During research sessions, sources arrive in bursts of 10-20. During quiet periods, maybe 0-2 per day. The MMPP framework models this directly and gives us tools to size capacity for the mixture of states rather than the average.
