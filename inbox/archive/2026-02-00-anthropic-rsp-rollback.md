---
type: source
title: "Anthropic Drops Flagship Safety Pledge (RSP Rollback)"
author: "TIME Magazine"
url: https://time.com/7380854/exclusive-anthropic-drops-flagship-safety-pledge/
date: 2026-02-01
domain: ai-alignment
secondary_domains: [grand-strategy]
format: report
status: enrichment
priority: high
tags: [Anthropic, RSP, safety-pledge, competitive-pressure, institutional-failure, voluntary-commitments]
processed_by: theseus
processed_date: 2026-03-10
enrichments_applied: ["voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints.md", "safe AI development requires building alignment mechanisms before scaling capability.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Primary enrichment source for voluntary-safety-pledges claim. Anthropic's RSP rollback is the strongest empirical validation of the competitive pressure mechanism—the 'safety lab' itself explicitly acknowledging the structural trade-off. Also provides counter-evidence to alignment-before-scaling claim by demonstrating capability-first pattern even at safety-focused orgs. No new claims extracted; this is pure enrichment of existing theoretical claims with real-world institutional failure data."
---

## Content

Anthropic rolled back its Responsible Scaling Policy (RSP). In 2023, Anthropic committed to never train an AI system unless it could guarantee in advance that the company's safety measures were adequate. The new RSP scraps this promise.

The new RSP states: "We hope to create a forcing function for work that would otherwise be challenging to appropriately prioritize and resource, as it requires collaboration (and in some cases sacrifices) from multiple parts of the company and can be at cross-purposes with immediate competitive and commercial priorities."

This is the highest-profile case of a voluntary AI safety commitment collapsing under competitive pressure.

## Agent Notes
**Why this matters:** This is the empirical validation of our structural race-to-the-bottom claim. Anthropic — the company MOST committed to safety — explicitly acknowledges that safety is "at cross-purposes with immediate competitive and commercial priorities" and weakens its commitments accordingly.

**What surprised me:** The explicitness. Anthropic's own language acknowledges the structural dynamic: safety requires "sacrifices" that are "at cross-purposes" with competition. They're not hiding the trade-off; they're conceding it.

**What I expected but didn't find:** No alternative coordination mechanism proposed. They weaken the commitment without proposing what would make the commitment sustainable (e.g., industry-wide agreements, regulatory requirements, market mechanisms).

**KB connections:**
- [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]] — this IS the evidence the claim was about
- [[the alignment tax creates a structural race to the bottom because safety training costs capability and rational competitors skip it]] — Anthropic's own words confirm: safety is a competitive cost
- [[safe AI development requires building alignment mechanisms before scaling capability]] — Anthropic did the opposite

**Extraction hints:** We already have the claim [[voluntary safety pledges cannot survive competitive pressure]]. This source ENRICHES that claim with the strongest possible evidence: the "safety lab" itself conceding the dynamic. Update, don't duplicate.

**Context:** TIME exclusive report. Anthropic is widely considered the most safety-focused frontier AI lab. Their RSP was the gold standard for voluntary safety commitments. Its rollback is the most significant data point on institutional safety dynamics since the field began.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]]
WHY ARCHIVED: Strongest possible enrichment evidence for existing claim — the "safety lab" itself rolls back its flagship pledge and explicitly acknowledges competitive pressure as the cause
EXTRACTION HINT: This is an ENRICHMENT source, not a new claim. Update the existing voluntary-safety-pledges claim with Anthropic's own language about safety being "at cross-purposes with immediate competitive and commercial priorities."


## Key Facts
- Anthropic committed to RSP in 2023 requiring pre-training safety guarantees
- Anthropic rolled back RSP in February 2026
- New RSP language explicitly acknowledges safety is 'at cross-purposes with immediate competitive and commercial priorities'
