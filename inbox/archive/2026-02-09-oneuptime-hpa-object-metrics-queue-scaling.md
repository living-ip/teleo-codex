---
type: source
title: "How to Implement HPA with Object Metrics for Queue-Based Scaling"
author: "OneUptime"
url: https://oneuptime.com/blog/post/2026-02-09-hpa-object-metrics-queue/view
date: 2026-02-09
domain: internet-finance
format: essay
status: unprocessed
tags: [pipeline-architecture, kubernetes, autoscaling, queue-based-scaling, KEDA, HPA]
---

# How to Implement HPA with Object Metrics for Queue-Based Scaling

Practical guide to implementing Kubernetes HPA scaling based on queue depth rather than CPU/memory metrics. Covers object metrics, custom metrics, and integration patterns.

## Key Content

- Queue depth is a better scaling signal than CPU for worker-style workloads
- Object metrics in HPA allow scaling based on custom Kubernetes objects (ConfigMaps, custom resources)
- Pattern: monitor pending messages in queue → scale workers to process them
- Multi-metric HPA: evaluate several metrics simultaneously, scale to whichever requires most replicas
- KEDA (Kubernetes Event Driven Autoscaler): scale-to-zero capability, 70+ built-in scalers
- KEDA pattern: 0 → 1 via event trigger, 1 → N via HPA metrics feed
- Key insight: scale proactively based on how much work is waiting, not reactively based on how busy workers are

## Relevance to Teleo Pipeline

We don't run Kubernetes, but the patterns are directly transferable to our cron-based system:
1. Replace fixed MAX_WORKERS with queue-depth-based scaling: workers = f(queue_depth)
2. Implement scale-to-zero: if no unprocessed sources, don't spawn workers at all (we already do this)
3. Multi-metric scaling: consider both extract queue depth AND eval queue depth when deciding extraction worker count
4. The proactive scaling insight is key: our dispatcher should look at queue depth, not just worker availability
