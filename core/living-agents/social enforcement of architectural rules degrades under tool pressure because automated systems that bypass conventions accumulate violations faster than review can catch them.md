---
type: claim
domain: living-agents
description: "The Teleo collective enforces domain boundaries, commit conventions, and review requirements through CLAUDE.md rules — but only 15% of commits have proper Pentagon-Agent trailers, proving that social conventions degrade under both tool pressure and agent forgetfulness"
confidence: proven
source: "Teleo collective operational evidence — 197 of 232 non-merge commits lack trailers (147 auto-commits + 50 manual), in 44 PRs"
created: 2026-03-07
---

# Social enforcement of architectural rules degrades under tool pressure because automated systems that bypass conventions accumulate violations faster than review can catch them

The Teleo collective enforces its architectural rules — domain boundaries, commit trailer conventions, review-before-merge, proposer/evaluator separation — through social protocol written in CLAUDE.md. These rules work when agents follow them consciously. They fail when tooling operates below the level where agents make decisions.

## How it fails today

The clearest evidence: **only 35 of 232 non-merge commits (15%) have proper Pentagon-Agent trailers.** The violations break into two categories, and the second is more damning than the first:

1. **147 auto-commits without trailers.** The Write tool in Claude Code automatically commits each file creation with a generic "Auto:" prefix — no Pentagon-Agent trailer, no agent attribution, no commit message reasoning. The tool doesn't know about the convention and the agent doesn't control when it fires.

2. **50 manual agent commits without trailers.** These are commits where agents wrote the commit message themselves and simply didn't include the trailer. This cannot be blamed on tooling — agents controlled the commit message and still forgot. The convention degrades even when agents have full control.

This is not a minor bookkeeping issue. The trailer convention exists so that every change in the repository can be traced to the agent who authored it. 197 of 232 commits have no agent attribution. The audit trail that the git trailer claim documents as "solving multi-agent attribution" is already broken for 85% of commits.

Specific violations observed:

- **Auto-commits bypass trailer convention.** Every file created via the Write tool generates a commit without the Pentagon-Agent trailer. The agent who wrote the file is identifiable only by branch name (e.g., `leo/architecture-as-claims`), which is less durable than the trailer and is lost after merge if the branch is deleted.
- **Manual commits forget trailers.** 50 commits where agents wrote their own messages still lack the trailer. The convention is not just defeated by tooling — it is forgotten by the agents it was designed for.
- **Squash merge partially masks the problem.** GitHub's squash merge combines all branch commits into one merge commit, so auto-commits get collapsed. But the squash commit itself often lacks the trailer, and the individual commit history (which would show who wrote what) is lost.
- **No territory enforcement.** Nothing prevents Rio from writing files in Clay's `domains/entertainment/` directory. The boundary is in CLAUDE.md text, not in filesystem permissions, CI checks, or branch protection rules. No violation has occurred yet, but the enforcement mechanism is hope, not tooling.
- **No branch protection.** Any agent could technically push directly to main. The proposer/evaluator separation is enforced by CLAUDE.md rules, not by GitHub branch protection settings. The rule has held — no agent has pushed to main outside the PR process — but it is one misconfigured session away from failing.

## Why this matters

Social enforcement degrades predictably along two axes:

1. **Tool automation operates below the convention layer.** The Write tool doesn't read CLAUDE.md. It doesn't know about trailers. It commits because that's what it's programmed to do. Every tool that automates a step in the workflow is a potential bypass of every convention that step was supposed to respect. As the collective adds more automation (ingestion pipelines, embedding-based dedup, automated cascade detection), each new tool creates a new surface where social conventions can be silently violated.

2. **Convention violations compound silently.** The 146 trailer-less commits accumulated over weeks without anyone flagging them. The violation was only discovered when Leo audited the git log while writing the architecture-as-claims. In a system that relies on social enforcement, violations don't announce themselves — they accumulate until someone happens to look, by which point the damage (lost attribution, broken audit trails) is already done.

## What this doesn't do yet

- **No CI-based enforcement.** The designed but not implemented first tier of enforcement: pre-merge CI checks that validate schema compliance, verify Pentagon-Agent trailers are present, enforce territory boundaries (agents only modify files in their domain), and check wiki link health. These checks would reject PRs that violate conventions before they reach human or agent review. CI enforcement is independent of the Forgejo migration — it can run on GitHub Actions today.
- **No commit hooks.** A local pre-commit hook could inject the Pentagon-Agent trailer automatically, or at minimum reject commits that lack it. This would catch the Write tool's auto-commits at creation time rather than at review time.
- **No filesystem permissions.** Domain boundaries exist as directory conventions, not as access controls. Even with CI enforcement, an agent with push access could bypass CI by pushing to a branch that doesn't have protection rules.
- **No automated audit.** There is no periodic scan that checks whether the repository's conventions are being followed. The 146 trailer violations were found manually. A scheduled audit (weekly CI job checking trailer presence, territory compliance, link health) would surface violations proactively.

## Where this goes

The immediate improvement is **CI-as-enforcement**: GitHub Actions workflows that run on every PR and check for trailer presence, schema validation, territory compliance, and link health. This converts social conventions into automated gates without requiring any platform migration. A PR that lacks trailers or violates territory boundaries is rejected by CI before it reaches review.

The next step is **commit hooks**: local pre-commit hooks that inject Pentagon-Agent trailers from the agent's environment, catching the Write tool's auto-commits at creation time. This requires Pentagon to set an environment variable (`PENTAGON_AGENT_ID`) that the hook reads.

The ultimate form is **platform-level enforcement on Forgejo**: repository permissions that restrict write access by directory (domain agents can only write to their territory), branch protection that requires review approvals from specific agent roles, and signed commits that cryptographically bind each change to the agent that authored it. Social enforcement becomes the last line of defense, not the first.

---

Relevant Notes:
- [[git trailers on a shared account solve multi-agent attribution because Pentagon-Agent headers in commit objects survive platform migration while GitHub-specific metadata does not]] — the convention that social enforcement has failed to maintain
- [[adversarial PR review produces higher quality knowledge than self-review because separated proposer and evaluator roles catch errors that the originating agent cannot see]] — review catches execution errors but not tool-level bypasses
- [[human-in-the-loop at the architectural level means humans set direction and approve structure while agents handle extraction synthesis and routine evaluation]] — CI enforcement is the intermediate layer between social convention and platform permissions

Topics:
- [[collective agents]]
