# Self-Directed Research Architecture

Draft — Leo, 2026-03-10

## Core Idea

Each agent gets a daily research session on the VPS. They autonomously pull tweets from their domain accounts, decide what's interesting, archive sources with notes, and push to inbox. A separate extraction cron (already running) picks up the archives and makes claims. The researcher never sees the extraction — preventing motivated reasoning.

## Why Separate Researcher and Extractor

When the same agent researches and extracts, they prime themselves. The researcher finds a tweet they think supports a thesis → writes notes emphasizing that angle → extracts a claim that confirms the thesis. The extraction becomes a formality.

Separation breaks this:
- **Researcher** writes: "This tweet is about X, connects to Y, might challenge Z"
- **Extractor** (different Claude instance, fresh context) reads the source and notes, extracts what's actually there
- Neither has the other's context window or priming

This mirrors our proposer-evaluator separation for claims, applied one layer earlier in the pipeline.

## Architecture

### Three cron stages on VPS

```
┌─────────────────┐     ┌──────────────────┐     ┌─────────────────┐
│  Research Cron   │────▶│   Extract Cron    │────▶│   Eval Pipeline │
│  (daily, 2hr)   │     │   (every 5 min)   │     │   (webhook.py)  │
│                  │     │                   │     │                 │
│  Pull tweets     │     │  Read archives    │     │  Review claims  │
│  Pick 1 task     │     │  Extract claims   │     │  Approve/reject │
│  Archive sources │     │  Open PR          │     │  Merge          │
│  Push to main    │     │                   │     │                 │
└─────────────────┘     └──────────────────┘     └─────────────────┘
```

### Research Cron: `research-daily.sh`

**Schedule:** Once daily, staggered across agents to respect rate limits

```
# Stagger: each agent gets a 30-min window
0  2 * * * /opt/teleo-eval/research-daily.sh rio
30 2 * * * /opt/teleo-eval/research-daily.sh clay
0  3 * * * /opt/teleo-eval/research-daily.sh theseus
30 3 * * * /opt/teleo-eval/research-daily.sh vida
0  4 * * * /opt/teleo-eval/research-daily.sh astra
30 4 * * * /opt/teleo-eval/research-daily.sh leo
```

**Per agent, the research session:**

1. Pull latest tweets from agent's network accounts (X API)
2. Read the agent's beliefs, recent claims, open positions
3. Claude prompt: "You are {agent}. Here are your latest tweets from {accounts}. Here is your current knowledge state. Pick ONE research direction that advances your domain understanding. Archive the most relevant sources with notes."
4. Agent writes source archives to `inbox/archive/` with `status: unprocessed`
5. Commit and push to main (source-only, no claims)
6. Extract cron picks them up within 5 minutes

**Key constraint:** One Claude session per agent, ~20-30 minutes, Sonnet model. Total daily VPS research compute: ~3 hours of sequential Sonnet sessions.

### Research Prompt Structure

```
You are {agent}, a Teleo knowledge base agent specializing in {domain}.

## Your Current State
{Read from agents/{agent}/beliefs.md, reasoning.md, positions/}

## Your Network
{Read from network file — accounts to monitor}

## Recent Tweets
{Raw tweet data pulled from X API}

## Your Task
1. Scan these tweets for anything substantive — new claims, evidence,
   debates, data, counterarguments to existing KB positions
2. Pick ONE research direction that would most advance your domain
   understanding right now. Consider:
   - Gaps in your beliefs that need evidence
   - Claims in the KB that might be wrong
   - Cross-domain connections you've been flagged about
   - New developments that change the landscape
3. Archive the relevant sources (5-15 per session) following the
   inbox/archive format with full agent notes
4. Write a brief research summary explaining what you found and why
   it matters

## Rules
- Archive EVERYTHING substantive, not just what supports your views
- Write honest agent notes — flag what challenges your beliefs too
- Set all sources to status: unprocessed (a different instance extracts)
- Flag cross-domain sources for other agents
- Do NOT extract claims yourself — that's a separate process
```

### Capacity on Claude Max ($200/month)

**VPS compute budget (all Sonnet):**
- Research cron: 6 agents × 30 min/day = 3 hr/day
- Extract cron: ~37 sources × 10 min = 6 hr one-time backlog, then ~1 hr/day steady-state
- Eval pipeline: ~10 PRs/day × 15 min = 2.5 hr/day
- **Total VPS:** ~6.5 hr/day Sonnet (steady state)

**Laptop compute budget (Opus + Sonnet mix):**
- Agent sessions: 2-3 concurrent, ~4-6 hr/day
- Leo coordination: ~1-2 hr/day

**Single subscription feasibility:** Tight but workable if:
- VPS runs overnight (2am-8am staggered research + continuous extraction)
- Laptop agents run during the day
- Never more than 2-3 concurrent sessions total
- VPS uses Sonnet exclusively (cheaper rate limits)

**Risk:** If rate limits tighten or daily message caps exist, the VPS research cron may not complete all 6 agents. Mitigation: priority ordering (run the 3 most active agents daily, others every 2-3 days).

## Contributor Workflow Options

Different people want different levels of involvement:

### Mode 1: Full Researcher
"I found this, here's why it matters, here are the KB connections"
- Uses /ingest on laptop (Track A or B)
- Writes detailed agent notes
- May extract claims themselves
- Highest quality input

### Mode 2: Curator
"Here's a source, it's about X domain"
- Minimal archive file with domain tag and brief notes
- VPS extracts (Track B)
- Good enough for most sources

### Mode 3: Raw Dump
"Here are tweets, figure it out"
- Dumps raw JSON to VPS inbox-raw/
- Leo triages: decides domain, writes archive files
- VPS extracts from Leo's archives
- Lowest effort, decent quality (Leo's triage catches the important stuff)

### Mode 4: Self-Directed Agent (VPS)
"Agent, go research your domain"
- No human involvement beyond initial network setup
- Daily cron pulls tweets, agent picks direction, archives, extraction follows
- Quality depends on prompt engineering + eval pipeline catching errors

All four modes feed into the same extraction → eval pipeline. Quality varies, but the eval pipeline is the quality gate regardless.

## Open Questions

1. **Rate limits**: What are the actual Claude Max per-minute and per-day limits for headless Sonnet sessions? Need empirical data from this first extraction run.

2. **Research quality**: Will a 30-minute Sonnet session produce good enough research notes? Or does research require Opus-level reasoning?

3. **Network bootstrapping**: Agents need network files. Who curates the initial account lists? (Currently Cory + Leo, eventually agents propose additions)

4. **Cross-domain routing**: When the research cron finds cross-domain content, should it archive under the researcher's domain or the correct domain? (Probably correct domain with flagged_for_{researcher})

5. **Feedback loop**: How does extraction quality feed back to improve research notes? If the extractor consistently ignores certain types of notes, the researcher should learn.

6. **Deduplication across agents**: Multiple agents may archive the same tweet (e.g., a Karpathy tweet relevant to both AI systems and collective intelligence). The extract cron needs to detect this.

## Implementation Order

1. ✅ Extract cron (running now — validating extraction quality)
2. **Next**: Research cron — daily self-directed sessions per agent
3. **Then**: Raw dump path — Leo triage from JSON → archive
4. **Later**: Full end-to-end with X API pull integrated into research cron
5. **Eventually**: Feedback loops from eval quality → research prompt tuning
