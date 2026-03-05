# Personality layer may need separation from knowledge base

**Date:** 2026-03-05
**Status:** noted

## The Seam

`core/collective-agent-core.md` and the Personality sections in `agents/{name}/identity.md` are oriented toward the **product experience** — how the agent talks to users, what voice it has, what it says when challenged.

The rest of teleo-codex is oriented toward the **operational loop** — how agents propose/evaluate claims, the schema structure, the PR workflow.

Right now both coexist in the same repo. Fine for v1 where Pentagon agents do both jobs (interact AND maintain the knowledge base).

## When This Becomes a Problem

When the product separates the chat interface from the knowledge maintenance:
- The **product prompt** loads personality + searches the knowledge base at runtime
- The **operational agent** runs the extraction/evaluation loop against the repo
- These are different contexts with different performance requirements

At that point, personality documents should live closer to the product (loaded into system prompt), and the knowledge base should be searched (RAG), not loaded wholesale.

## Not Blocking

v1 works fine with both in one repo. Flag this when building the product API layer or when the knowledge base grows large enough that loading it all into context is impractical.
