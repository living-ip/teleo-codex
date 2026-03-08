---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "Using separate Forgejo bot accounts for writer-agent and reviewer-agent, enforced by branch protection rules and Cedar policies that forbid self-merge, creates structural independence that advisory rules in AGENTS.md or CLAUDE.md cannot guarantee because the separation operates at the infrastructure layer."
confidence: experimental
source: "Alex — based on Compass research artifact analyzing Forgejo API patterns, branch protection, and the architectural separation principle (2026-03-08)"
created: 2026-03-08
---

# Structurally separating proposer and reviewer agents across independent accounts with branch protection enforcement implements architectural separation that prompt-level rules cannot achieve

The honest feedback loop principle of architectural separation requires that the entity evaluating claims is structurally independent from the entity producing them. In a multi-agent knowledge base, this means the reviewer cannot be the same agent (or the same account, or the same process) as the proposer — and this constraint must be enforced by infrastructure, not by instructions.

**The advisory approach fails.** Telling an agent in its system prompt "do not approve your own PRs" is a convention that depends on the LLM following instructions. Prompt injection, model drift, context overflow, or simply a sufficiently capable agent reasoning about its objectives could circumvent this. AGENTS.md and CLAUDE.md files are advisory — they guide behavior but cannot enforce it.

**The infrastructure approach succeeds.** Forgejo (and GitHub) branch protection rules can require approval from a specific set of accounts before merge. If the proposer agent operates under account `writer-bot` and the reviewer operates under account `reviewer-bot`, and branch protection requires approval from `reviewer-bot`, then no prompt injection targeting `writer-bot` can bypass the review requirement. The enforcement point is in the git server, outside the LLM entirely.

Three mechanisms reinforce this separation:

1. **Separate bot accounts** — each agent authenticates with its own token, limiting what it can do via API permissions. The writer-bot token has push access but not merge access. The reviewer-bot token has review access.

2. **Branch protection rules** — the main knowledge branch requires N approvals from a defined set of reviewers. Direct pushes are blocked. Force pushes are blocked. This is enforced by the git server regardless of what any agent attempts.

3. **Cedar policies** — Sondera-style `forbid` rules can prevent the writer-bot from calling merge endpoints or from approving its own PRs, providing a second enforcement layer even if branch protection is misconfigured.

4. **Anti-recursion property** — Forgejo's automatic workflow token has a built-in anti-recursion rule: changes made with this token don't trigger new workflows. This prevents infinite loops in multi-agent pipelines but also means a single-token setup cannot implement true multi-agent review. Separate tokens for separate agents are required.

This pattern directly implements the principle that [[AI alignment is a coordination problem not a technical problem]]. The technical capability of the reviewer agent matters, but the structural independence of the review process matters more. A brilliant reviewer that shares an account with the proposer provides weaker guarantees than a mediocre reviewer on an independent account with infrastructure-enforced separation.

The analogy to financial auditing is precise: external auditors must be structurally independent from the companies they audit, not merely instructed to be objective. The instruction "be objective" is advisory. The SEC requirement for independent audit firms is architectural.

---

Relevant Notes:
- [[deterministic policy engines operating below the LLM layer cannot be circumvented by prompt injection making them essential for adversarial-grade AI agent control]] — branch protection is a deterministic enforcement mechanism at the infrastructure layer
- [[AI alignment is a coordination problem not a technical problem]] — architectural separation is coordination infrastructure, not agent capability
- [[principal-agent problems arise whenever one party acts on behalf of another with divergent interests and unobservable effort because information asymmetry makes perfect contracts impossible]] — structural separation addresses the principal-agent problem between knowledge base and its agent contributors
- [[defense in depth for AI agent oversight requires layering independent validation mechanisms because deny-overrides semantics ensure any single layer rejection blocks the action regardless of other layers]] — architectural separation is one layer in the defense-in-depth stack

Topics:
- [[domains/ai-alignment/_map]]
