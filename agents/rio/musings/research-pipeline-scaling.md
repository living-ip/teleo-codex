---
type: musing
agent: rio
title: "Pipeline scaling architecture: queueing theory, backpressure, and optimal worker provisioning"
status: developing
created: 2026-03-12
updated: 2026-03-12
tags: [pipeline-architecture, operations-research, queueing-theory, mechanism-design, infrastructure]
---

# Pipeline Scaling Architecture: What Operations Research Tells Us

Research musing for Leo and Cory on how to optimally architect our three-stage pipeline (research → extract → eval) for variable-load scaling. Six disciplines investigated, each mapped to our specific system.

## Our System Parameters

Before diving into theory, let me nail down the numbers:

- **Arrival pattern**: Highly bursty. Research sessions dump 10-20 sources at once. Futardio launches come in bursts of 20+. Quiet periods produce 0-2 sources/day.
- **Extract stage**: 6 max workers, ~10-15 min per source (Claude compute). Dispatches every 5 min via cron.
- **Eval stage**: 5 max workers, ~5-15 min per PR (Claude compute). Dispatches every 5 min via cron.
- **Current architecture**: Fixed cron intervals, fixed worker caps, no backpressure, no priority queuing beyond basic triage (infra PRs first, then re-review, then fresh).
- **Cost model**: Workers are Claude Code sessions — expensive. Each idle worker costs nothing, but each active worker-minute is real money.
- **Queue sizes**: ~225 unprocessed sources, ~400 claims in KB.

---

## 1. Operations Research / Queueing Theory

### How it maps to our pipeline

Our pipeline is a **tandem queue** (also called a Jackson network): three stages in series, each with multiple servers. In queueing notation:

- **Extract stage**: M[t]/G/6 queue — time-varying arrivals (non-Poisson), general service times (extraction complexity varies), 6 servers
- **Eval stage**: M[t]/G/5 queue — arrivals are departures from extract (so correlated), general service times, 5 servers

The classic M/M/c model gives us closed-form results for steady-state behavior:

**Little's Law** (L = λW) is the foundation. If average arrival rate λ = 8 sources per 5-min cycle = 0.027/sec, and average extraction time W = 750 sec (12.5 min), then average sources in extract system L = 0.027 × 750 ≈ 20. With 6 workers, average utilization ρ = 20/6 ≈ 3.3 — meaning we'd need ~20 workers for steady state at this arrival rate. **This means our current MAX_WORKERS=6 for extraction is significantly undersized during burst periods.**

But bursts are temporary. During quiet periods, λ drops to near zero. The question isn't "how many workers for peak?" but "how do we adaptively size for current load?"

### Key insight: Square-root staffing

The **Halfin-Whitt regime** gives the answer: optimal workers = R + β√R, where R is the base load (λ/μ, arrival rate / service rate) and β ≈ 1-2 is a quality-of-service parameter.

For our system during a burst (λ = 20 sources in 5 min):
- R = 20 × (12.5 min / 5 min) = 50 source-slots needed → clearly impossible with 6 workers
- During burst: queue builds rapidly, workers drain it over subsequent cycles
- During quiet: R ≈ 0, workers = 0 + β√0 = 0 → don't spawn workers

The square-root staffing rule says: **don't size for peak. Size for current load plus a safety margin proportional to √(current load).** This is fundamentally different from our current fixed-cap approach.

### What to implement

**Phase 1 (now)**: Calculate ρ = queue_depth / (MAX_WORKERS × expected_service_time_in_cycles). If ρ > 1, system is overloaded — scale up or implement backpressure. Log this metric.

**Phase 2 (soon)**: Replace fixed MAX_WORKERS with dynamic: workers = min(ceil(queue_depth / sources_per_worker_per_cycle) + ceil(√(queue_depth)), HARD_MAX). This implements square-root staffing.

→ SOURCE: Bournassenko 2025, "On Queueing Theory for Large-Scale CI/CD Pipelines"
→ SOURCE: Whitt 2019, "What You Should Know About Queueing Models"
→ SOURCE: van Leeuwaarden et al. 2018, "Economies-of-Scale in Many-Server Queueing Systems" (SIAM Review)

---

## 2. Stochastic Modeling for Non-Stationary Arrivals

### How it maps to our pipeline

Our arrival process is a textbook **Markov-Modulated Poisson Process (MMPP)**. There's a hidden state governing the arrival rate:

| Hidden State | Arrival Rate | Duration |
|-------------|-------------|----------|
| Research session active | 10-20 sources/hour | 1-3 hours |
| Futardio launch burst | 20+ sources/dump | Minutes |
| Normal monitoring | 2-5 sources/day | Hours to days |
| Quiet period | 0-1 sources/day | Days |

The key finding from the literature: **replacing a time-varying arrival rate with a constant (average or max) leads to systems being badly understaffed or overstaffed.** This is exactly our problem. MAX_WORKERS=6 is undersized for bursts and oversized for quiet periods.

### The peakedness parameter

The **variance-to-mean ratio** (called "peakedness" or "dispersion ratio") of the arrival process determines how much extra capacity you need beyond standard queueing formulas:

- Peakedness = 1: Poisson process (standard formulas work)
- Peakedness > 1: Overdispersed/bursty (need MORE capacity than standard)
- Peakedness < 1: Underdispersed/smooth (need LESS capacity)

Our pipeline has peakedness >> 1 (highly bursty). The modified staffing formula adjusts the square-root safety margin by the peakedness factor. For bursty arrivals, the safety margin should be √(peakedness) × β√R instead of just β√R.

### Practical estimation

We can estimate peakedness empirically from our logs:
1. Count sources arriving per hour over the last 30 days
2. Calculate mean and variance of hourly arrival counts
3. Peakedness = variance / mean

If peakedness ≈ 5 (plausible given our burst pattern), we need √5 ≈ 2.2× the safety margin that standard Poisson models suggest.

### What to implement

**Phase 1**: Instrument arrival patterns. Log source arrivals per hour with timestamps. After 2 weeks, calculate peakedness.

**Phase 2**: Use the peakedness-adjusted staffing formula for worker provisioning. Different time windows may have different peakedness — weekdays vs. weekends, research-session hours vs. off-hours.

→ SOURCE: Whitt et al. 2016, "Staffing a Service System with Non-Poisson Non-Stationary Arrivals"
→ SOURCE: Liu et al. 2019, "Modeling and Simulation of Nonstationary Non-Poisson Arrival Processes" (CIATA method)
→ SOURCE: Simio/WinterSim 2018, "Resource Scheduling in Non-Stationary Service Systems"

---

## 3. Combinatorial Optimization / Scheduling

### How it maps to our pipeline

Our pipeline is a **hybrid flow-shop**: three stages (research → extract → eval), multiple workers at each stage, all sources flow through the same stage sequence. This is important because:

- **Not a job-shop** (jobs don't have different stage orderings)
- **Not a simple flow-shop** (we have parallel workers within each stage)
- **Hybrid flow-shop with parallel machines per stage** — well-studied in OR literature

The key question: given heterogeneous sources (varying complexity, different domains, different agents), how do we assign sources to workers optimally?

### Surprising finding: simple dispatching rules work

For hybrid flow-shops with relatively few stages and homogeneous workers within each stage, **simple priority dispatching rules perform within 5-10% of optimal**. The NP-hardness of general JSSP is not relevant to our case because:

1. Our stages are fixed-order (not arbitrary routing)
2. Workers within a stage are roughly homogeneous (all Claude sessions)
3. We have few stages (3) and few workers (5-6 per stage)
4. We already have a natural priority ordering (infra > re-review > fresh)

The best simple rules for our setting:
- **Shortest Processing Time (SPT)**: Process shorter sources first — reduces average wait time
- **Priority + FIFO**: Within priority classes, process in arrival order
- **Weighted Shortest Job First (WSJF)**: Priority weight / estimated processing time — maximizes value delivery rate

### What we should NOT do

Invest in metaheuristic scheduling algorithms (genetic algorithms, simulated annealing, tabu search). These are powerful for large-scale JSSP instances (100+ jobs, 20+ machines) but complete overkill for our scale. The gap between optimal and simple-dispatching is tiny at our size.

### What to implement

**Phase 1 (now)**: Implement source complexity estimation. Short sources (tweets, brief articles) should be processed before long ones (whitepapers, multi-thread analyses). This is SPT — proven optimal for minimizing average flow time.

**Phase 2 (later)**: If we add domain-specific workers (e.g., Rio only processes internet-finance sources), the problem becomes a flexible flow-shop. Even then, simple "assign to least-loaded eligible worker" rules perform well.

→ SOURCE: ScienceDirect 2023, "The Flexible Job Shop Scheduling Problem: A Review"

---

## 4. Adaptive / Elastic Scaling

### How it maps to our pipeline

Cloud-native autoscaling patterns solve exactly our problem: scaling workers up/down based on observed demand, without full cloud infrastructure. The key patterns:

**Queue-depth-based scaling (KEDA pattern)**:
```
desired_workers = ceil(queue_depth / target_items_per_worker)
```

Where `target_items_per_worker` is calibrated to keep workers busy but not overloaded. KEDA adds scale-to-zero: if queue_depth = 0, workers = 0.

**Multi-metric scaling**: Evaluate multiple signals simultaneously, scale to whichever requires the most workers:
```
workers = max(
    ceil(unprocessed_sources / sources_per_worker),
    ceil(open_prs / prs_per_eval_worker),
    MIN_WORKERS
)
```

**Cooldown periods**: After scaling up, don't immediately scale down — wait for a cooldown period. Prevents oscillation when load is choppy. Kubernetes HPA uses 5-minute stabilization windows.

### Adapting for our cron-based system

We don't have Kubernetes, but we can implement the same logic in bash:

```bash
# In extract-cron.sh, replace fixed MAX_WORKERS:
QUEUE_DEPTH=$(grep -rl "^status: unprocessed" inbox/archive/ | wc -l)
EVAL_BACKLOG=$(curl -sf "$FORGEJO_URL/api/v1/.../pulls?state=open" | jq 'length')

# Scale extraction workers based on queue depth
DESIRED_EXTRACT=$(( (QUEUE_DEPTH + 2) / 3 ))  # ~3 sources per worker

# Apply backpressure from eval: if eval is backlogged, slow extraction
if [ "$EVAL_BACKLOG" -gt 10 ]; then
    DESIRED_EXTRACT=$(( DESIRED_EXTRACT / 2 ))
fi

# Bound between min and max
WORKERS=$(( DESIRED_EXTRACT < 1 ? 1 : DESIRED_EXTRACT ))
WORKERS=$(( WORKERS > HARD_MAX ? HARD_MAX : WORKERS ))
```

### Counterintuitive finding: scale-to-zero saves more than scale-to-peak

In our cost model (expensive per worker-minute, zero cost for idle), the biggest savings come not from optimizing peak performance but from **not running workers when there's nothing to do**. Our current system already checks for unprocessed sources before dispatching — good. But it still runs the dispatcher every 5 minutes even when the queue has been empty for hours. A longer polling interval during quiet periods would save dispatcher overhead.

### What to implement

**Phase 1 (now)**: Replace fixed MAX_WORKERS with queue-depth-based formula. Add eval backpressure check to extract dispatcher.

**Phase 2 (soon)**: Add cooldown/hysteresis — different thresholds for scaling up vs. down.

**Phase 3 (later)**: Adaptive polling interval — faster polling when queue is active, slower when quiet.

→ SOURCE: OneUptime 2026, "How to Implement HPA with Object Metrics for Queue-Based Scaling"
→ SOURCE: KEDA documentation, keda.sh

---

## 5. Backpressure & Flow Control

### How it maps to our pipeline

This is the most critical gap in our current architecture. **We have zero backpressure.** The three stages are decoupled with no feedback:

```
Research → [queue] → Extract → [queue] → Eval → [merge]
```

If research dumps 20 sources, extraction will happily create 20 PRs, and eval will struggle with a PR backlog. There's no signal from eval to extract saying "slow down, I'm drowning." This is the classic producer-consumer problem.

### The TCP analogy

TCP congestion control solves exactly this: a producer (sender) must match rate to consumer (receiver) capacity, with the network as an intermediary that can drop packets (data loss) if overloaded. The solution: **feedback-driven rate adjustment**.

In our pipeline:
- **Producer**: Extract (creates PRs)
- **Consumer**: Eval (reviews PRs)
- **Congestion signal**: Open PR count growing
- **Data loss equivalent**: Eval quality degrading under load (rushed reviews)

### Four backpressure strategies

1. **Buffer + threshold**: Allow some PR accumulation (buffer), but when open PRs exceed threshold, extract slows down. Simple, robust, our best first step.

2. **Rate matching**: Extract dispatches at most as many sources as eval processed in the previous cycle. Keeps the pipeline balanced but can under-utilize extract during catch-up periods.

3. **AIMD (Additive Increase Multiplicative Decrease)**: When eval queue is shrinking, increase extraction rate by 1 worker. When eval queue is growing, halve extraction workers. Proven stable, converges to optimal throughput. **This is the TCP approach and it's elegant for our setting.**

4. **Pull-based**: Eval "pulls" work from a staging area instead of extract "pushing" PRs. Requires architectural change but guarantees eval is never overloaded. Kafka uses this pattern (consumers pull at their own pace).

### The AIMD insight is gold

AIMD is provably optimal for fair allocation of shared resources without centralized control (Corless et al. 2016). It's mathematically guaranteed to converge regardless of the number of agents or parameter values. For our pipeline:

```
Each cycle:
  if eval_queue_depth < eval_queue_depth_last_cycle:
    # Queue shrinking — additive increase
    extract_workers = min(extract_workers + 1, HARD_MAX)
  else:
    # Queue growing or stable — multiplicative decrease
    extract_workers = max(extract_workers / 2, 1)
```

This requires zero modeling, zero parameter estimation, zero prediction. It just reacts to observed system state and is proven to converge to the optimal throughput that eval can sustain.

### What to implement

**Phase 1 (now, highest priority)**: Add backpressure check to extract-cron.sh. Before dispatching extraction workers, check open PR count. If open PRs > 15, reduce extraction parallelism by half. If open PRs > 25, skip this extraction cycle entirely.

**Phase 2 (soon)**: Implement AIMD scaling for extraction workers based on eval queue trend.

**Phase 3 (later)**: Consider pull-based architecture where eval signals readiness for more work.

→ SOURCE: Vlahakis et al. 2021, "AIMD Scheduling and Resource Allocation in Distributed Computing Systems"
→ SOURCE: Corless et al. 2016, "AIMD Dynamics and Distributed Resource Allocation" (SIAM)
→ SOURCE: Dagster, "What Is Backpressure"
→ SOURCE: Java Code Geeks 2025, "Reactive Programming Paradigms: Mastering Backpressure and Stream Processing"

---

## 6. Markov Decision Processes

### How it maps to our pipeline

MDP formulates our scaling decision as a sequential optimization problem:

**State space**: S = (unprocessed_queue, in_flight_extractions, open_prs, active_extract_workers, active_eval_workers, time_of_day)

**Action space**: A = {add_extract_worker, remove_extract_worker, add_eval_worker, remove_eval_worker, wait}

**Transition model**: Queue depths change based on arrival rates (time-dependent) and service completions (stochastic).

**Cost function**: C(s, a) = worker_cost × active_workers + delay_cost × queue_depth

**Objective**: Find policy π: S → A that minimizes expected total discounted cost.

### Key findings

1. **Optimal policies have threshold structure** (Li et al. 2019 survey): The optimal MDP policy is almost always "if queue > X and workers < Y, spawn a worker." This means even without solving the full MDP, a well-tuned threshold policy is near-optimal.

2. **Hysteresis is optimal** (Tournaire et al. 2021): The optimal policy has different thresholds for scaling up vs. scaling down. Scale up at queue=10, scale down at queue=3 (not the same threshold). This prevents oscillation — exactly what AIMD achieves heuristically.

3. **Our state space is tractable**: With ~10 discrete queue levels × 6 worker levels × 5 eval worker levels × 4 time-of-day buckets = ~1,200 states. This is tiny for MDP — value iteration converges in seconds. We could solve for the exact optimal policy.

4. **MDP outperforms heuristics but not by much**: Tournaire et al. found that structured MDP algorithms outperform simple threshold heuristics, but the gap is modest (5-15% cost reduction). For our scale, a good threshold policy captures most of the value.

### The honest assessment

Solving the full MDP is theoretically clean but practically unnecessary at our scale. The MDP's main value is confirming that threshold policies with hysteresis are near-optimal — which validates implementing AIMD + backpressure thresholds as Phase 1 and not worrying about exact optimization until the system is much larger.

### What to implement

**Phase 1**: Don't solve the MDP. Implement threshold policies with hysteresis (different up/down thresholds) informed by MDP theory.

**Phase 2 (only if system grows significantly)**: Formulate and solve the MDP using value iteration. Use historical arrival/service data to parameterize the transition model. The optimal policy becomes a lookup table: given current state, take this action.

→ SOURCE: Tournaire et al. 2021, "Optimal Control Policies for Resource Allocation in the Cloud: MDP vs Heuristic Approaches"
→ SOURCE: Li et al. 2019, "An Overview for Markov Decision Processes in Queues and Networks"

---

## Synthesis: The Implementation Roadmap

### The core diagnosis

Our pipeline's architecture has three problems, in order of severity:

1. **No backpressure** — extraction can overwhelm evaluation with no feedback signal
2. **Fixed worker counts** — static MAX_WORKERS ignores queue state entirely
3. **No arrival modeling** — we treat all loads the same regardless of burst patterns

### Phase 1: Backpressure + Dynamic Scaling (implement now)

This captures 80% of the improvement with minimal complexity:

1. **Add eval backpressure to extract-cron.sh**: Check open PR count before dispatching. If backlogged, reduce extraction parallelism.
2. **Replace fixed MAX_WORKERS with queue-depth formula**: `workers = min(ceil(queue_depth / 3) + 1, HARD_MAX)`
3. **Add hysteresis**: Scale up when queue > 8, scale down when queue < 3. Different thresholds prevent oscillation.
4. **Instrument everything**: Log queue depths, worker counts, cycle times, utilization rates.

### Phase 2: AIMD Scaling (implement within 2 weeks)

Replace fixed formulas with adaptive AIMD:

1. Track eval queue trend (growing vs. shrinking) across cycles
2. Growing queue → multiplicative decrease of extraction rate
3. Shrinking queue → additive increase of extraction rate
4. This self-tunes without requiring parameter estimation

### Phase 3: Arrival Modeling + Optimization (implement within 1 month)

With 2+ weeks of instrumented data:

1. Calculate peakedness of arrival process
2. Apply peakedness-adjusted square-root staffing for worker provisioning
3. If warranted, formulate and solve the MDP for exact optimal policy
4. Implement adaptive polling intervals (faster when active, slower when quiet)

### Surprising findings

1. **Simple dispatching rules are near-optimal at our scale.** The combinatorial optimization literature says: for a hybrid flow-shop with <10 machines per stage, SPT/FIFO within priority classes is within 5-10% of optimal. Don't build a scheduler; build a good priority queue.

2. **AIMD is the single most valuable algorithm to implement.** It's proven stable, requires no modeling, and handles the backpressure + scaling problems simultaneously. TCP solved this exact problem 40 years ago.

3. **The MDP confirms we don't need the MDP.** The optimal policy is threshold-based with hysteresis — exactly what AIMD + backpressure thresholds give us. The MDP's value is validation, not computation.

4. **The square-root staffing rule means diminishing returns on workers.** Adding a 7th worker to a 6-worker system helps less than adding the 2nd worker to a 1-worker system. At our scale, the marginal worker is still valuable, but there's a real ceiling around 8-10 extraction workers and 6-8 eval workers beyond which additional workers waste money.

5. **Our biggest waste isn't too few workers — it's running workers against an empty queue.** The extract-cron runs every 5 minutes regardless of queue state. If the queue has been empty for 6 hours, that's 72 unnecessary dispatcher invocations. Adaptive polling (or event-driven triggering) would eliminate this overhead.

6. **The pipeline's binding constraint is eval, not extract.** Extract produces work faster than eval consumes it (6 extract workers × ~8 sources/cycle vs. 5 eval workers × ~5 PRs/cycle). Without backpressure, this imbalance causes PR accumulation. The right fix is rate-matching extraction to evaluation throughput, not speeding up extraction.

→ CLAIM CANDIDATE: "Backpressure is the highest-leverage architectural improvement for multi-stage pipelines because it prevents the most common failure mode (producer overwhelming consumer) with minimal implementation complexity"

→ CLAIM CANDIDATE: "AIMD provides near-optimal resource allocation for variable-load pipelines without requiring arrival modeling or parameter estimation because its convergence properties are independent of system parameters"

→ CLAIM CANDIDATE: "Simple priority dispatching rules perform within 5-10% of optimal for hybrid flow-shop scheduling at moderate scale because the combinatorial explosion that makes JSSP NP-hard only matters at large scale"

→ FLAG @leo: The mechanism design parallel is striking — backpressure in pipelines is structurally identical to price signals in markets. Both are feedback mechanisms that prevent producers from oversupplying when consumers can't absorb. AIMD in particular mirrors futarchy's self-correcting property: the system converges to optimal throughput through local feedback, not central planning.

→ FLAG @theseus: MDP formulation of pipeline scaling connects to AI agent resource allocation. If agents are managing their own compute budgets, AIMD provides a decentralized mechanism for fair sharing without requiring a central coordinator.
