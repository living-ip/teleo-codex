# Vital Signs Operationalization Spec

*How to automate the five collective health vital signs for Milestone 4.*

Each vital sign maps to specific data sources already available in the repo.
The goal is scripts that can run on every PR merge (or on a cron) and produce
a dashboard JSON.

---

## 1. Cross-Domain Linkage Density (circulation)

**Data source:** All `.md` files in `domains/`, `core/`, `foundations/`

**Algorithm:**
1. For each claim file, extract all `[[wiki links]]` via regex: `\[\[([^\]]+)\]\]`
2. For each link target, resolve to a file path and read its `domain:` frontmatter
3. Compare link target domain to source file domain
4. Calculate: `cross_domain_links / total_links` per domain and overall

**Output:**
```json
{
  "metric": "cross_domain_linkage_density",
  "overall": 0.22,
  "by_domain": {
    "health": { "total_links": 45, "cross_domain": 12, "ratio": 0.27 },
    "internet-finance": { "total_links": 38, "cross_domain": 8, "ratio": 0.21 }
  },
  "status": "healthy",
  "threshold": { "low": 0.15, "high": 0.30 }
}
```

**Implementation notes:**
- Link resolution is the hard part. Titles are prose, not slugs. Need fuzzy matching or a title→path index.
- CLAIM CANDIDATE: Build a `claim-index.json` mapping every claim title to its file path and domain. This becomes infrastructure for multiple vital signs.
- Pre-step: generate index with `find domains/ core/ foundations/ -name "*.md"` → parse frontmatter → build `{title: path, domain: ...}`.

---

## 2. Evidence Freshness (metabolism)

**Data source:** `source:` and `created:` frontmatter fields in all claim files

**Algorithm:**
1. For each claim, parse `created:` date
2. Parse `source:` field — extract year references (regex: `\b(20\d{2})\b`)
3. Calculate `claim_age = today - created_date`
4. For fast-moving domains (health, ai-alignment, internet-finance): flag if `claim_age > 180 days`
5. For slow-moving domains (cultural-dynamics, critical-systems): flag if `claim_age > 365 days`

**Output:**
```json
{
  "metric": "evidence_freshness",
  "median_claim_age_days": 45,
  "by_domain": {
    "health": { "median_age": 30, "stale_count": 2, "total": 35, "status": "healthy" },
    "ai-alignment": { "median_age": 60, "stale_count": 5, "total": 28, "status": "warning" }
  },
  "stale_claims": [
    { "title": "...", "domain": "...", "age_days": 200, "path": "..." }
  ]
}
```

**Implementation notes:**
- Source field is free text, not structured. Year extraction via regex is best-effort.
- Better signal: compare `created:` date to `git log --follow` last-modified date. A claim created 6 months ago but enriched last week is fresh.
- QUESTION: Should we track "source publication date" separately from "claim creation date"? A claim created today citing a 2020 study is using old evidence but was recently written.

---

## 3. Confidence Calibration Accuracy (immune function)

**Data source:** `confidence:` frontmatter + claim body content

**Algorithm:**
1. For each claim, read `confidence:` level
2. Scan body for evidence markers:
   - **proven indicators:** "RCT", "randomized", "meta-analysis", "N=", "p<", "statistically significant", "replicated", "mathematical proof"
   - **likely indicators:** "study", "data shows", "evidence", "research", "survey", specific numbers/percentages
   - **experimental indicators:** "suggests", "argues", "framework", "model", "theory"
   - **speculative indicators:** "may", "could", "hypothesize", "imagine", "if"
3. Flag mismatches: `proven` claim with no empirical markers, `speculative` claim with strong empirical evidence

**Output:**
```json
{
  "metric": "confidence_calibration",
  "total_claims": 200,
  "flagged": 8,
  "flag_rate": 0.04,
  "status": "healthy",
  "flags": [
    { "title": "...", "confidence": "proven", "issue": "no empirical evidence markers", "path": "..." }
  ]
}
```

**Implementation notes:**
- This is the hardest to automate well. Keyword matching is a rough proxy — an LLM evaluation would be more accurate but expensive.
- Minimum viable: flag `proven` claims without any empirical markers. This catches the worst miscalibrations with low false-positive rate.
- FLAG @Leo: Consider whether periodic LLM-assisted audits (like the foundations audit) are the right cadence rather than per-PR automation. Maybe automated for `proven` only, manual audit for `likely`.

---

## 4. Orphan Ratio (neural integration)

**Data source:** All claim files + the claim-index from VS1

**Algorithm:**
1. Build a reverse-link index: for each claim, which other claims link TO it
2. Claims with 0 incoming links are orphans
3. Calculate `orphan_count / total_claims`

**Output:**
```json
{
  "metric": "orphan_ratio",
  "total_claims": 200,
  "orphans": 25,
  "ratio": 0.125,
  "status": "healthy",
  "threshold": 0.15,
  "orphan_list": [
    { "title": "...", "domain": "...", "path": "...", "outgoing_links": 3 }
  ]
}
```

**Implementation notes:**
- Depends on the same claim-index and link-resolution infrastructure as VS1.
- Orphans with outgoing links are "leaf contributors" — they cite others but nobody cites them. These are the easiest to integrate (just add a link from a related claim).
- Orphans with zero outgoing links are truly isolated — may indicate extraction without integration.
- New claims are expected to be orphans briefly. Filter: exclude claims created in the last 7 days from the orphan count.

---

## 5. Review Throughput (homeostasis)

**Data source:** GitHub PR data via `gh` CLI

**Algorithm:**
1. `gh pr list --state all --json number,state,createdAt,mergedAt,closedAt,title,author`
2. Calculate per week: PRs opened, PRs merged, PRs pending
3. Track review latency: `mergedAt - createdAt` for each merged PR
4. Flag: backlog > 3 open PRs, or median review latency > 48 hours

**Output:**
```json
{
  "metric": "review_throughput",
  "current_backlog": 2,
  "median_review_latency_hours": 18,
  "weekly_opened": 4,
  "weekly_merged": 3,
  "status": "healthy",
  "thresholds": { "backlog_warning": 3, "latency_warning_hours": 48 }
}
```

**Implementation notes:**
- This is the easiest to implement — `gh` CLI provides structured JSON output.
- Could run on every PR merge as a post-merge check.
- QUESTION: Should we weight by PR size? A PR with 11 claims (like Theseus PR #50) takes longer to review than a 3-claim PR. Latency per claim might be fairer.

---

## Shared Infrastructure

### claim-index.json

All five vital signs benefit from a pre-computed index:

```json
{
  "claims": [
    {
      "title": "the healthcare attractor state is...",
      "path": "domains/health/the healthcare attractor state is....md",
      "domain": "health",
      "confidence": "likely",
      "created": "2026-02-15",
      "outgoing_links": ["claim title 1", "claim title 2"],
      "incoming_links": ["claim title 3"]
    }
  ],
  "generated": "2026-03-08T10:30:00Z"
}
```

**Build script:** Parse all `.md` files with `type: claim` frontmatter. Extract title (first `# ` heading), domain, confidence, created, and all `[[wiki links]]`. Resolve links bidirectionally.

### Dashboard aggregation

A single `vital-signs.json` output combining all 5 metrics:

```json
{
  "generated": "2026-03-08T10:30:00Z",
  "overall_status": "healthy",
  "vital_signs": {
    "cross_domain_linkage": { ... },
    "evidence_freshness": { ... },
    "confidence_calibration": { ... },
    "orphan_ratio": { ... },
    "review_throughput": { ... }
  }
}
```

### Trigger options

1. **Post-merge hook:** Run on every PR merge to main. Most responsive.
2. **Daily cron:** Run once per day. Less noise, sufficient for trend detection.
3. **On-demand:** Agent runs manually when doing health checks.

Recommendation: daily cron for the dashboard, with post-merge checks only for review throughput (cheapest to compute, most time-sensitive).

---

## Implementation Priority

| Vital Sign | Difficulty | Dependencies | Priority |
|-----------|-----------|-------------|----------|
| Review throughput | Easy | `gh` CLI only | 1 — implement first |
| Orphan ratio | Medium | claim-index | 2 — reveals integration gaps |
| Linkage density | Medium | claim-index + link resolution | 3 — reveals siloing |
| Evidence freshness | Medium | date parsing | 4 — reveals calcification |
| Confidence calibration | Hard | NLP/heuristics | 5 — partial automation, rest manual |

Build claim-index first (shared dependency for 2, 3, 4), then review throughput (independent), then orphan ratio → linkage density → freshness → calibration.
