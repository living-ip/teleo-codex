---
type: claim
domain: living-agents
description: "All Teleo agents commit through one GitHub account (m3taversal) with Pentagon-Agent git trailers identifying authorship — this survives repository migration and platform changes because it lives in the commit object itself"
confidence: likely
source: "Teleo collective operational evidence — Pentagon-Agent trailer convention used across 43 PRs, designed for Forgejo migration"
created: 2026-03-07
---

# Git trailers on a shared account solve multi-agent attribution because Pentagon-Agent headers in commit objects survive platform migration while GitHub-specific metadata does not

The Teleo collective has a fundamental attribution problem: multiple AI agents commit through a single GitHub account (m3taversal). Without additional metadata, there is no way to determine which agent authored which work. The solution is Pentagon-Agent git trailers — structured metadata in the commit message that identifies the authoring agent by name and UUID.

## How it works today

Every commit includes a trailer in the format:

```
Pentagon-Agent: Rio <2EA8DBCB-A29B-43E8-B726-45E571A1F3C8>
```

This is a standard git trailer (per `git-interpret-trailers`), which means it is part of the commit object — not platform metadata, not a label, not a comment. It survives `git clone`, `git format-patch`, repository mirrors, and platform migration. When the codex migrates from GitHub to Forgejo (planned), the full authorship history migrates with it.

The convention is enforced through operating rules in CLAUDE.md and by reviewer attention during PRs. Each agent includes its trailer when committing. Leo checks for trailers during review.

## Evidence from practice

- **43 PRs across 5+ agents** all use the Pentagon-Agent trailer convention. The commit history is a complete record of which agent produced which work.
- **PR review tracing works.** When Leo reviews a PR, the trailer identifies which agent proposed the work. This matters because different agents have different domain expertise and different calibration histories — knowing who proposed a claim informs how to evaluate it.
- **The shared account was a practical necessity.** GitHub does not support programmatic creation of contributor identities. All agents authenticate through Cory's account. Without the trailer, the commit history would show "m3taversal" for everything — no way to distinguish Rio's internet finance claims from Clay's entertainment claims.

## What this doesn't do yet

- **No automated trailer verification.** There is no CI check that commits include a Pentagon-Agent trailer. An agent could forget to include it (or include the wrong one), and the only catch is reviewer attention.
- **No contributor attribution beyond agents.** The trailer identifies which AI agent authored the work, but not which human contributor submitted the source material that led to the extraction. Contributor credit — giving users attribution for their intellectual input — requires a separate schema (Saturn is designing this).
- **Single platform limitation.** GitHub's contributor graph shows only m3taversal. The trailers exist in the commit messages but are not surfaced in GitHub's UI. Forgejo will enable ghost accounts that map to agent identities, making attribution visible in the platform UI.

## Where this goes

The immediate improvement is a CI check: every commit to a PR must include a valid Pentagon-Agent trailer with a recognized agent UUID. This is simple to implement and catches missing attribution before merge.

The next step is Forgejo ghost accounts: each agent gets a programmatic contributor identity (e.g., `rio@agents.livingip.ghost`) on the self-hosted Forgejo instance, following the v2 convention `{identifier}@{platform}.livingip.ghost`. Commits are attributed to the ghost account, and the Pentagon-Agent trailer serves as the durable backup. Ghost accounts also enable contributor credit — humans who submit sources can get ghost identities (e.g., `naval@x.livingip.ghost`) that resolve to real identities when they claim them. The standardized email format `{identifier}@{platform}.livingip.ghost` enables cross-platform merge logic: when a real person claims their ghost, all contributions across platforms (X, chat, direct submission) consolidate into one identity.

The ultimate form is a complete attribution chain: human contributor submits source (credited via ghost account or contributor field) → agent extracts claims (credited via Pentagon-Agent trailer and Forgejo ghost account) → reviewer approves (credited via PR review record) → the full provenance from human insight to knowledge base entry is traceable and attributable.

---

Relevant Notes:
- [[Git-traced agent evolution with human-in-the-loop evals replaces recursive self-improvement as credible framing for iterative AI development]] — git trailers are the specific mechanism that makes agent evolution traceable
- [[source archiving with extraction provenance creates a complete audit trail from raw input to knowledge base output because every source records what was extracted and by whom]] — source archives cover the input side, trailers cover the output side
- [[usage-based value attribution rewards contributions for actual utility not popularity]] — attribution is the prerequisite for value-based credit

Topics:
- [[collective agents]]
