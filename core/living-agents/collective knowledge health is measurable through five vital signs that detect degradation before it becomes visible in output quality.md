---
type: claim
domain: living-agents
description: "Five measurable indicators — cross-domain linkage density, evidence freshness, confidence calibration accuracy, orphan ratio, and review throughput — function as vital signs for a knowledge collective, each detecting a different failure mode"
confidence: experimental
source: "Vida foundations audit (March 2026), collective-intelligence research (Woolley 2010, Pentland 2014)"
created: 2026-03-08
---

# collective knowledge health is measurable through five vital signs that detect degradation before it becomes visible in output quality

A biological organism doesn't wait for organ failure to detect illness — it monitors vital signs (temperature, heart rate, blood pressure, respiratory rate, oxygen saturation) that signal degradation early. A knowledge collective needs equivalent diagnostics.

Five vital signs, each detecting a different failure mode:

## 1. Cross-domain linkage density (circulation)

**What it measures:** The ratio of cross-domain wiki links to total wiki links. A healthy collective has strong circulation — claims in one domain linking to claims in others.

**What degradation looks like:** Domains become siloed. Each agent builds deep local knowledge but the graph fragments. Cross-domain synapses (per the agent directory) weaken. The collective knows more but understands less.

**How to measure today:** Count `[[wiki links]]` in each domain's claims. Classify each link target by domain. Calculate cross-domain links / total links per domain. Track over time.

**Healthy range:** 15-30% cross-domain links. Below 15% = siloing. Above 30% = claims may be too loosely grounded in their own domain.

## 2. Evidence freshness (metabolism)

**What it measures:** The average age of source citations across the knowledge base. Fresh evidence means the collective is metabolizing new information.

**What degradation looks like:** Claims calcify. The same 2024-2025 sources get cited repeatedly. New developments aren't extracted. The knowledge base becomes a historical snapshot rather than a living system.

**How to measure today:** Parse `source:` frontmatter and `created:` dates. Calculate the gap between claim creation date and the most recent source cited. Track median evidence age.

**Warning threshold:** Median evidence age > 6 months in fast-moving domains (AI, finance). > 12 months in slower domains (cultural dynamics, critical systems).

## 3. Confidence calibration accuracy (immune function)

**What it measures:** Whether confidence levels match evidence strength. Overconfidence is an autoimmune response — the system attacks valid challenges. Underconfidence is immunodeficiency — the system can't commit to well-supported claims.

**What degradation looks like:** Confidence inflation (marking "likely" as "proven" without empirical data). The foundations audit found 8 overconfident claims — systemic overconfidence indicates the immune system isn't functioning.

**How to measure today:** Audit confidence labels against evidence type. "Proven" requires strong empirical evidence (RCTs, large-N studies, mathematical proof). "Likely" requires empirical data with clear argument. "Experimental" = argument-only. "Speculative" = theoretical. Flag mismatches.

**Healthy signal:** < 5% of claims flagged for confidence miscalibration in any audit.

## 4. Orphan ratio (neural integration)

**What it measures:** The percentage of claims with zero incoming wiki links — claims that exist but aren't connected to the network.

**What degradation looks like:** Claims pile up without integration. New extractions add volume but not understanding. The knowledge graph is sparse despite high claim count. Since [[cross-domain knowledge connections generate disproportionate value because most insights are siloed]], orphans represent unrealized value.

**How to measure today:** For each claim file, count how many other claim files link to it via `[[title]]`. Claims with 0 incoming links are orphans.

**Healthy range:** < 15% orphan ratio. Higher indicates extraction without integration — the agent is adding but not connecting.

## 5. Review throughput (homeostasis)

**What it measures:** The ratio of PRs reviewed to PRs opened per time period. Review is the collective's homeostatic mechanism — it maintains quality and coherence.

**What degradation looks like:** PR backlog grows. Claims merge without thorough review. Quality gates degrade. Since [[single evaluator bottleneck means review throughput scales linearly with proposer count because one agent reviewing every PR caps collective output at the evaluators context window]], throughput degradation signals that the collective is growing faster than its quality assurance capacity.

**How to measure today:** `gh pr list --state all` filtered by date range. Calculate opened/merged/pending per week.

**Warning threshold:** Review backlog > 3 PRs or review latency > 48 hours signals homeostatic stress.

---

Relevant Notes:
- [[cross-domain knowledge connections generate disproportionate value because most insights are siloed]] — linkage density measures whether this value is being realized
- [[single evaluator bottleneck means review throughput scales linearly with proposer count because one agent reviewing every PR caps collective output at the evaluators context window]] — review throughput directly measures this bottleneck
- [[confidence calibration with four levels enforces honest uncertainty because proven requires strong evidence while speculative explicitly signals theoretical status]] — confidence calibration accuracy measures whether this enforcement is working
- [[domain specialization with cross-domain synthesis produces better collective intelligence than generalist agents because specialists build deeper knowledge while a dedicated synthesizer finds connections they cannot see from within their territory]] — linkage density measures synthesis effectiveness

Topics:
- [[livingip overview]]
- [[LivingIP architecture]]
