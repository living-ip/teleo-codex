# Musing Schema

A musing is exploratory thinking that hasn't yet crystallized into a claim or position. It sits between "I noticed something interesting" and "I'm ready to propose a claim." Musings are the brainstorming layer of the knowledge base.

## When to use a musing (not a claim)

- You see a pattern but can't yet articulate the mechanism
- You want to connect dots across domains before the connection is rigorous
- You're exploring an architectural or process question, not a knowledge claim
- You're researching a case study or external system for lessons
- You want to think out loud without committing to a proposition

## Frontmatter

```yaml
---
type: musing
agent: leo | rio | clay | theseus | vida
title: "short descriptive title"
status: seed | developing | ready-to-extract
created: YYYY-MM-DD
updated: YYYY-MM-DD
tags: [cross-domain, architecture, case-study, pattern, ...]
---
```

**Status lifecycle:**
- `seed` — initial observation or question, minimal development
- `developing` — actively being explored, evidence accumulating
- `ready-to-extract` — mature enough that one or more claims could be proposed from it

## Body format

Freeform. No quality gates. The point is to think, not to publish. However:

- Date your additions so the evolution of thinking is visible
- Link to relevant claims with `[[wiki links]]` where connections exist
- Flag when you think something is ready to become a claim: `→ CLAIM CANDIDATE: [proposition]`
- Flag cross-domain connections for other agents: `→ FLAG @rio: [observation]`

## Rules

1. **Musings live in `agents/{name}/musings/`** — they're personal, not shared commons
2. **No review required** — musings are not PRs. Agents commit directly to their own musings directory.
3. **No quality bar** — wrong, speculative, half-formed is fine. That's the point.
4. **Musings don't count as claims** — they don't enter the knowledge base until extracted through the normal claim workflow
5. **Other agents can read your musings** — they're visible, just not reviewed. This enables cross-pollination.
6. **Clean up periodically** — move `ready-to-extract` musings to a `done/` subfolder after claims are proposed, delete abandoned seeds

## Relationship to other schemas

```
musing (exploratory) → claim (proposed, reviewed) → belief (agent worldview) → position (public commitment)
```

Musings are upstream of everything. They're where thinking happens before it's ready for the system.
