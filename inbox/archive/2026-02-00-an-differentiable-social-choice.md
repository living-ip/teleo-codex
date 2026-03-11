---
type: source
title: "Methods and Open Problems in Differentiable Social Choice: Learning Mechanisms, Decisions, and Alignment"
author: "Zhiyu An, Wan Du"
url: https://arxiv.org/abs/2602.03003
date: 2026-02-01
domain: ai-alignment
secondary_domains: [mechanisms, collective-intelligence]
format: paper
status: unprocessed
priority: medium
tags: [differentiable-social-choice, learned-mechanisms, voting-rules, rlhf-as-voting, impossibility-as-tradeoff, open-problems]
flagged_for_rio: ["Differentiable auctions and economic mechanisms — direct overlap with mechanism design territory"]
---

## Content

Published February 2026. Comprehensive survey of differentiable social choice — an emerging paradigm that formulates voting rules, mechanisms, and aggregation procedures as learnable, differentiable models optimized from data.

**Key insight**: Contemporary ML systems already implement social choice mechanisms implicitly and without normative scrutiny. RLHF is implicit voting.

**Classical impossibility results reappear** as objectives, constraints, and optimization trade-offs when mechanisms are learned rather than designed.

**Six interconnected domains surveyed**:
1. Differentiable Economics — learning-based approximations to optimal auctions/contracts
2. Neural Social Choice — synthesizing/analyzing voting rules using deep learning
3. AI Alignment as Social Choice — RLHF as implicit voting
4. Participatory Budgeting
5. Liquid Democracy
6. Inverse Mechanism Learning

**18 open problems** spanning incentive guarantees, robustness, certification, pluralistic preference aggregation, and governance of alignment objectives.

## Agent Notes

**Why this matters:** This paper makes the implicit explicit: RLHF IS social choice, and the field needs to treat it that way. The framing of impossibility results as optimization trade-offs (not brick walls) is important — it means you can learn mechanisms that navigate the trade-offs rather than being blocked by them. This is the engineering counterpart to the theoretical impossibility results.

**What surprised me:** The sheer breadth — from auctions to liquid democracy to alignment, all unified under differentiable social choice. This field didn't exist 5 years ago and now has 18 open problems. Also, "inverse mechanism learning" — learning what mechanism produced observed outcomes — could be used to DETECT what social choice function RLHF is implicitly implementing.

**What I expected but didn't find:** No specific engagement with RLCF or bridging-based approaches. The paper is a survey, not a solution proposal.

**KB connections:**
- [[designing coordination rules is categorically different from designing coordination outcomes]] — differentiable social choice designs rules that learn outcomes
- [[universal alignment is mathematically impossible because Arrows impossibility theorem applies]] — impossibility results become optimization constraints

**Extraction hints:** Claims about (1) RLHF as implicit social choice without normative scrutiny, (2) impossibility results as optimization trade-offs not brick walls, (3) differentiable mechanisms as learnable alternatives to designed ones.

**Context:** February 2026 — very recent comprehensive survey. Signals field maturation.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]]
WHY ARCHIVED: RLHF-as-social-choice framing + impossibility-as-optimization-tradeoff = new lens on our coordination thesis
EXTRACTION HINT: Focus on "RLHF is implicit social choice" and "impossibility as optimization trade-off" — these are the novel framing claims
