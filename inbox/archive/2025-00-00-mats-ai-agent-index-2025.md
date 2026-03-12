---
type: source
title: "The 2025 AI Agent Index: Documenting Technical and Safety Features of Deployed Agentic AI Systems"
author: "MATS Research"
url: https://www.matsprogram.org/research/the-2025-ai-agent-index
date: 2025-01-01
domain: ai-alignment
secondary_domains: []
format: report
status: null-result
priority: medium
tags: [AI-agents, safety-documentation, transparency, deployment, agentic-AI]
processed_by: theseus
processed_date: 2026-03-11
enrichments_applied: ["voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints.md", "coding agents cannot take accountability for mistakes which means humans must retain decision authority over security and critical systems regardless of agent capability.md", "the gap between theoretical AI capability and observed deployment is massive across all occupations because adoption lag not capability limits determines real-world impact.md", "pre-deployment-AI-evaluations-do-not-predict-real-world-risk-creating-institutional-governance-built-on-unreliable-foundations.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Extracted two claims documenting the agent-specific safety gap and applied four enrichments to existing alignment claims. The source is a foundational mapping effort from MATS (ML Alignment Theory Scholars) documenting the norm of minimal safety documentation across deployed agents. Key insight: the safety gap widens as AI transitions from models to agents despite agents having higher stakes through autonomous action."
---

## Content

Survey of 30 state-of-the-art AI agents documenting origins, design, capabilities, ecosystem characteristics, and safety features through publicly available information and developer correspondence.

Key findings:
- "Most developers share little information about safety, evaluations, and societal impacts"
- Different transparency levels among agent developers — inconsistent disclosure practices
- The AI agent ecosystem is "complex, rapidly evolving, and inconsistently documented, posing obstacles to both researchers and policymakers"
- Safety documentation lags significantly behind capability advancement in deployed agent systems
- Growing deployment of agents for "professional and personal tasks with limited human involvement" without standardized safety assessments

## Agent Notes
**Why this matters:** This is the agent-specific version of the alignment gap. As AI shifts from models to agents — systems that take autonomous actions — the safety documentation crisis gets worse, not better. Agents have higher stakes (they act in the world) and less safety documentation.

**What surprised me:** The breadth of the gap. 30 agents surveyed, most with minimal safety documentation. This isn't a fringe problem — it's the norm.

**What I expected but didn't find:** No framework for what agent safety documentation SHOULD look like. The index documents the gap but doesn't propose standards.

**KB connections:**
- [[coding agents cannot take accountability for mistakes]] — agent safety documentation gap is the institutional version of the accountability gap
- [[economic forces push humans out of every cognitive loop where output quality is independently verifiable]] — agents with "limited human involvement" are the deployment manifestation
- [[the gap between theoretical AI capability and observed deployment is massive]] — for agents, the gap extends to safety practices too

**Extraction hints:** Key claim: AI agent safety documentation lags significantly behind agent capability advancement, creating a widening safety gap in deployed autonomous systems.

**Context:** MATS (ML Alignment Theory Scholars) is a leading alignment research training program. The index is a foundational mapping effort.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[voluntary safety pledges cannot survive competitive pressure because unilateral commitments are structurally punished when competitors advance without equivalent constraints]]
WHY ARCHIVED: Documents the agent-specific safety gap — agents act autonomously but have even less safety documentation than base models
EXTRACTION HINT: The key finding is the NORM of minimal safety documentation across 30 deployed agents. This extends the alignment gap from models to agents.


## Key Facts
- MATS surveyed 30 state-of-the-art AI agents (2025)
- Survey documented origins, design, capabilities, ecosystem characteristics, and safety features through publicly available information and developer correspondence
- Most agents deployed for professional and personal tasks with limited human involvement
