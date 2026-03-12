---
type: source
title: "What Is Backpressure"
author: "Dagster"
url: https://dagster.io/glossary/data-backpressure
date: 2024-01-01
domain: internet-finance
format: essay
status: unprocessed
tags: [pipeline-architecture, backpressure, data-pipelines, flow-control]
---

# What Is Backpressure (Dagster)

Dagster's practical guide to backpressure in data pipelines. Written for practitioners building real data processing systems.

## Key Content

- Backpressure: feedback mechanism preventing data producers from overwhelming consumers
- Without backpressure controls: data loss, crashes, resource exhaustion
- Consumer signals producer about capacity limits
- Implementation strategies: buffering (with threshold triggers), rate limiting, dynamic adjustment, acknowledgment-based flow
- Systems using backpressure: Apache Kafka (pull-based consumption), Flink, Spark Streaming, Akka Streams, Project Reactor
- Tradeoff: backpressure introduces latency but prevents catastrophic failure
- Key principle: design backpressure into the system from the start

## Relevance to Teleo Pipeline

Our pipeline has zero backpressure today. The extract-cron.sh checks for unprocessed sources and dispatches workers regardless of eval queue state. If extraction outruns evaluation, PRs accumulate with no feedback signal. Simple fix: extraction dispatcher should check open PR count before dispatching. If open PRs > threshold, reduce extraction parallelism or skip the cycle.
