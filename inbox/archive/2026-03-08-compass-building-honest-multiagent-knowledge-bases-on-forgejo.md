---
type: source
title: "Building honest multiagent knowledge bases on Forgejo"
author: "Compass (AI research artifact)"
url: null
date: 2026-03-08
domain: ai-alignment
format: report
status: processed
processed_by: "quaoar (contrib for Alex)"
processed_date: 2026-03-08
claims_extracted:
  - "deterministic policy engines operating below the LLM layer cannot be circumvented by prompt injection making them essential for adversarial-grade AI agent control"
  - "multi-agent git workflows have reached production maturity as systems deploying 400+ specialized agent instances outperform single agents by 30 percent on engineering benchmarks"
  - "cryptographic agent trust ratings enable meta-monitoring of AI feedback systems because persistent auditable reputation scores detect degrading review quality before it causes knowledge base corruption"
  - "knowledge validation requires four independent layers because syntactic schema cross-reference and semantic checks each catch failure modes the others miss"
  - "defense in depth for AI agent oversight requires layering independent validation mechanisms because deny-overrides semantics ensure any single layer rejection blocks the action regardless of other layers"
  - "structurally separating proposer and reviewer agents across independent accounts with branch protection enforcement implements architectural separation that prompt-level rules cannot achieve"
tags: [multiagent, forgejo, knowledge-validation, deterministic-policy, cedar, hooks, trust-systems, feedback-loops]
contributor: "Alex"
---

# Building honest multiagent knowledge bases on Forgejo

A practical multiagent knowledge base with honest feedback loops is not only feasible today — the tooling ecosystem has matured dramatically since mid-2025. The combination of **Forgejo's webhook/Actions infrastructure**, **Cedar/YARA-based deterministic hook systems** (like Sondera's), **Claude Code's 15-event hook lifecycle**, and emerging **agent trust systems** (like Mnemom) provides every architectural primitive needed to implement all seven honest feedback loop principles. The critical insight: prompt-level rules (Cursor, Windsurf, Aider) are advisory and bypassable, but deterministic policy engines operating below the LLM layer cannot be circumvented by prompt injection — making them essential for adversarial-grade knowledge validation.

## Sondera's reference monitor sets the architectural standard

The repository at `sondera-ai/sondera-coding-agent-hooks` is a **Rust-based reference monitor** for AI coding agents, released at Unprompted 2026. Written in **84.8% Rust** with YARA signatures and Cedar policies, it intercepts every shell command, file operation, and web request made by Claude Code, Cursor, GitHub Copilot, and Gemini CLI through dedicated adapter binaries.

The architecture follows a client-server model over Unix sockets: each agent's hook adapter normalizes tool-specific events into a common event taxonomy (`ShellCommand`, `FileRead`, `FileWrite`, `WebFetch`, `ToolCall`), then forwards them via **tarpc RPC** to a harness service that combines three guardrail subsystems. The **YARA-X signature engine** pattern-matches for prompt injection, data exfiltration, and secrets (fully deterministic). An **LLM-based policy model** classifies content against secure code generation categories (probabilistic, requires Ollama). An **information flow control** layer assigns Microsoft Purview-style sensitivity labels for Bell-LaPadula enforcement. All signals feed into Amazon's **Cedar policy language**, where a single matching `forbid` overrides any `permit`.

The repository ships six Cedar policy files covering destructive operations (rm -rf, force-push, DROP DATABASE), file-type-aware guards with OWASP/CWE violation detection, supply chain attack patterns (typosquatting, dependency confusion), and information flow control with taint propagation. Entity state persists in an embedded **Fjall key-value store**, and an MCP server crate enables interactive Cedar policy authoring by another agent — a key primitive for self-improving guardrails.

For a Forgejo knowledge base system, Sondera's architecture directly maps to **architectural separation** (deterministic policy below the LLM), **defense in depth** (three guardrail subsystems), and **automatic error detection** (YARA signatures catch exfiltration without human involvement).

## Claude Code hooks provide the richest agent lifecycle interception

Claude Code's hook system, released June 2025 and expanded to **~15 lifecycle events** by early 2026, offers the most comprehensive agent interception model available. Unlike prompt-level rules that are advisory, hooks provide **deterministic, guaranteed execution** every time their conditions are met.

The event taxonomy spans three categories. **Session events** (`SessionStart`, `SessionEnd`, `Setup`, `PreCompact`) handle lifecycle management and context injection. **Tool events** (`PreToolUse`, `PostToolUse`, `PostToolUseFailure`, `PermissionRequest`) are the core interception points — PreToolUse can **approve, deny, or modify** tool calls before execution, while PostToolUse enables post-hoc validation. **Agent control events** (`Stop`, `SubagentStart`, `SubagentStop`, `UserPromptSubmit`, `Notification`) govern multi-agent coordination and user interaction.

What makes Claude Code hooks uniquely powerful is their **four handler types**. Command hooks run shell scripts receiving event JSON on stdin. HTTP hooks POST event JSON to external services. **Prompt hooks** send context to a fast Claude model (Haiku) for single-turn semantic evaluation — ideal for checking whether a knowledge claim meets quality criteria. **Agent hooks** spawn a subagent with tool access for multi-turn codebase verification — no other AI coding tool offers this capability. The priority system (`deny > ask > allow`) means any hook returning deny blocks the operation regardless of other hooks, enabling layered defense.

For knowledge base workflows, the critical pattern is combining PreToolUse hooks (block writes to protected knowledge files without proper frontmatter), PostToolUse hooks (run schema validation after every file edit), and Stop hooks (verify all modified claims have required metadata before the agent considers its task complete).

## The broader ecosystem splits into advisory and deterministic paradigms

Across competing systems, **two fundamentally different paradigms** emerge for controlling agent behavior, and understanding this distinction is essential for building honest feedback loops.

**Advisory systems** inject rules into the LLM's context window but cannot enforce compliance. Cursor's `.cursor/rules/*.mdc` files, Windsurf's `.windsurf/rules/*.md` files, and Aider's `CONVENTIONS.md` all operate at this level. They guide behavior through prompt engineering — useful for coding style preferences but insufficient for security-critical validation. A convergence is emerging around **AGENTS.md** as a cross-tool standard (supported by VS Code, Windsurf, Aider, Zed, Warp), but the fundamental limitation remains: advisory rules can be ignored or circumvented.

**Deterministic systems** intercept execution programmatically and can block actions. CrewAI's `@before_tool_call` / `@after_tool_call` decorators return `False` to block execution. LangChain 1.0's middleware provides `before_model`, `wrap_model_call`, and `after_model` hooks with `HumanInTheLoopMiddleware` for approval gates. AutoGen's `MiddlewareAgent` can short-circuit with direct replies. MCP's approval policies (`require_approval`) and tool annotations flag destructive operations. These systems provide the enforcement layer needed for honest feedback loops.

For a Forgejo knowledge base, the practical recommendation is to **layer both paradigms**: use AGENTS.md for cross-agent convention sharing (what format claims should follow, what review criteria to apply), while enforcing compliance through deterministic hooks (pre-commit schema validation, Cedar policies blocking malformed commits, CI gates that reject PRs with invalid knowledge files).

## Forgejo provides every primitive for multi-agent PR orchestration

Forgejo's API and Actions system supports three architectural patterns for multi-agent knowledge base workflows, each with different tradeoffs.

**Pattern A: Webhook-driven agent pipeline.** Configure Forgejo webhooks for `pull_request` events (supporting `opened`, `reopened`, `synchronize`, `labeled`, `edited` types) that POST to an agent server. The agent reads changed files via `GET /repos/{owner}/{repo}/pulls/{index}/files`, validates content via `GET /repos/{owner}/{repo}/contents/{filepath}`, posts structured reviews via `POST /repos/{owner}/{repo}/pulls/{index}/reviews` (with `event: "APPROVED"`, `"COMMENT"`, or `"REQUEST_CHANGES"` and line-level comments), and sets commit status via `POST /repos/{owner}/{repo}/statuses/{sha}`. Webhook payloads are signed with **HMAC-SHA256** and include compatibility headers for GitHub, Gitea, and Gogs. The **5-second delivery timeout** means agent servers must respond quickly and process asynchronously.

**Pattern B: Forgejo Actions-driven agents.** Workflows in `.forgejo/workflows/*.yaml` use syntax intentionally similar to GitHub Actions. The `pull_request_target` trigger is critical — it runs in the context of the base branch, has **write permissions and access to secrets**, unlike `pull_request` from forks which is read-only. Each workflow run gets an automatic token (available as `${{ secrets.GITHUB_TOKEN }}`) with full read/write to the repository. The **anti-recursion rule** — changes made with this token don't trigger new workflows — prevents infinite loops but requires careful design for multi-step agent pipelines.

**Pattern C: Hybrid.** Forgejo Actions handles triage (labeling, basic schema validation), while webhooks notify an external orchestrator that dispatches specialized agents (claim validator, source checker, consistency analyzer) in parallel. Each agent posts independent reviews via the API. Branch protection rules require all agent status checks to pass plus human approval before merge. The commit status API (`POST /repos/{owner}/{repo}/statuses/{sha}` with states `pending`, `success`, `error`, `failure`) enables fine-grained quality gates.

Existing Forgejo integrations already demonstrate feasibility: **forgejo-mcp** provides an MCP server connecting AI assistants to Forgejo's full API, **auditlm** monitors PRs for @mentions and runs isolated AI code review with local LLMs, and **opencode-review-gitea** delivers line-level AI reviews triggered by `/oc` comments.

## Multi-agent git orchestration has reached production maturity

The pattern of Agent A proposing via PR and Agent B reviewing has moved from research concept to production system. **SWE-AF** (Agent Field) deploys **400-500+ agent instances** across planning, coding, reviewing, QA, and verification roles, scoring 95/100 on benchmarks versus 73 for single-agent Claude Code. Each agent operates in an isolated git worktree, with a merger agent integrating branches and a verifier agent checking acceptance criteria against the PRD. Critically, SWE-AF implements **continual learning**: conventions and failure patterns discovered early are injected into downstream agent instances.

**Cisco's multi-agent PR reviewer** demonstrates the specific reviewer architecture: static analysis and code review agents run in parallel, a cross-referencing pipeline (initializer → generator → reflector) iterates on findings, and a comment filterer consolidates before posting. Built on LangGraph, it includes evaluation tooling that replays PR history with "LLM-as-a-judge" scoring.

For adversarial review specifically, **BugBot** implements the most rigorous pattern: a self-referential execution loop where each iteration gets fresh context, picks new attack angles, and requires **file:line evidence** for every finding. Seven ODC trigger categories must each be tested, and **consensus voting** between independent agents auto-upgrades confidence when two agents flag the same issue.

The trust and reputation layer is emerging through **Mnemom**, which assigns agent trust ratings on a **0-1000 scale with AAA-through-CCC grades**. Team ratings weight five components: team coherence history (35%), aggregate member quality (25%), operational track record (20%), structural stability (10%), and assessment density (10%). Scores use **Ed25519 signatures and STARK zero-knowledge proofs**, with a GitHub Action (`mnemom/reputation-check@v1`) for CI gating on trust scores. This directly enables the **meta-monitoring** principle: persistent scores with weekly trend snapshots provide predictive guardrails from historical data.

## Validation tooling covers the full knowledge file lifecycle

For markdown/YAML knowledge claim files, a complete validation stack combines four layers operating at increasing semantic depth.

**Syntactic validation** uses the pre-commit framework (`.pre-commit-config.yaml`) orchestrating yamllint for YAML style, `check-yaml` for syntax, markdownlint-cli2 for markdown formatting (53+ configurable rules), and `trailing-whitespace` / `end-of-file-fixer` for hygiene. These run on every commit locally and in CI as a safety net against `--no-verify` bypasses.

**Schema validation** uses `check-jsonschema` to validate YAML files (including extracted frontmatter) against JSON Schema definitions. A claim schema can enforce required fields (`source`, `confidence`, `date`, `domain`), constrain confidence to 0-1 ranges, restrict domains to controlled vocabularies, and validate date formats. For markdown frontmatter specifically, `remark-lint-frontmatter-schema` validates against JSON Schema using ajv. **Yamale** (by 23andMe) offers an alternative with its own schema DSL and easy custom validator extensibility.

**Cross-reference validation** requires custom scripting: parse all knowledge files to build a claim ID index, verify that `supersedes`, `related_to`, and `contradicts` references point to existing claims, and validate bidirectional relationships. No off-the-shelf tool handles this for flat files, though SHACL handles it natively for RDF graphs.

**Semantic validation** through SHACL (W3C Shapes Constraint Language) becomes relevant if claims are converted to RDF. **pySHACL** validates graphs against shape constraints including property paths, cardinality, and transitive relationship chains. The conversion pipeline (parse YAML frontmatter → generate RDF triples → validate with SHACL shapes) adds complexity but enables powerful graph-level consistency checking that JSON Schema cannot achieve — detecting contradictions across claims, enforcing relationship integrity, and supporting RDFS/OWL reasoning before validation.

A recommended `.pre-commit-config.yaml` combines `pre-commit-hooks` (check-yaml, trailing-whitespace), `markdownlint-cli`, `yamllint`, `check-jsonschema` targeting `^claims/.*\.yaml`, and local hooks for frontmatter validation and cross-reference checking.

## Mapping the seven principles to concrete tooling

Each honest feedback loop principle maps directly to available tooling, with specific implementation recommendations for a Forgejo-based knowledge base.

**Architectural separation** requires that the entity evaluating claims is structurally independent from the entity producing them. Implement this with separate Forgejo bot accounts: a "writer-agent" that proposes claims via PR and a "reviewer-agent" that evaluates them. Sondera's Cedar policy engine enforces this at the infrastructure level — forbid rules prevent the writer-agent from merging its own PRs. Branch protection rules require reviewer-agent approval. The anti-recursion property of Forgejo's automatic token prevents circular triggers.

**Ground-truth anchoring** means claims must be validated against external reality. Implement PreToolUse hooks that require every claim to include a `source` field with a fetchable URL. A PostToolUse hook can verify source URLs are accessible and content-matches the claim (using an agent hook handler for semantic verification). Schema validation enforces `confidence` scores are present, and CI gates can reject claims with confidence above 0.9 that lack multiple independent sources.

**Adversarial probing** requires dedicated challenge of claims. Deploy a BugBot-style adversarial review agent triggered by `pull_request_target` events. This agent specifically attempts to find counterevidence, checks for logical inconsistencies, and applies the seven ODC trigger categories to knowledge claims. Consensus voting between independent review agents upgrades confidence in identified issues.

**Defense in depth** layers multiple independent validation mechanisms. The stack includes: pre-commit schema validation (local), Forgejo Actions CI validation (server-side), YARA signature scanning for known misinformation patterns, Cedar policy evaluation for structural constraints, LLM-based semantic review for content quality, and human approval as the final gate. Each layer catches different failure modes, and the deny-overrides semantics of Cedar ensure that any single layer's rejection blocks the merge.

**Constrained optimization** bounds what agents can do. Cedar policies constrain agent trajectory length (step-count limits), restrict which files agents can modify (information flow control), and block destructive operations. CrewAI-style tool call hooks can limit which external sources agents consult. JSON Schema constrains the structure of claim files to prevent scope creep. Forgejo branch protection prevents direct pushes to the main knowledge branch.

**Automatic error detection** runs without human triggering. Pre-commit hooks catch malformed files on every commit. Forgejo Actions run the full validation suite on every PR automatically. Staleness detection scripts flag claims whose `date` field exceeds a configurable age threshold. Cross-reference checking identifies orphaned or broken claim relationships. SHACL validation (if using RDF) detects graph-level inconsistencies automatically.

**Meta-monitoring** tracks the health of the feedback system itself. Mnemom's trust ratings provide per-agent quality tracking with cryptographic attestation. Audit logs from Sondera's harness record every agent action for trajectory analysis. Forgejo's webhook delivery logs and Actions run history provide infrastructure-level monitoring. A dedicated meta-monitoring agent can periodically analyze the ratio of rejected vs. accepted PRs per agent, detect degrading review quality, and flag when the adversarial probing agent hasn't found issues in suspiciously long periods — which itself may indicate the probing is failing.

## Conclusion

The tooling landscape for honest multiagent knowledge bases has crossed a critical threshold. Three developments make this practical now rather than theoretical: Sondera's demonstration that **deterministic Cedar/YARA policies below the LLM layer** provide unforgeable guardrails that prompt injection cannot circumvent; Claude Code's **15-event hook lifecycle with four handler types** (especially agent hooks that spawn subagents for multi-turn verification); and Mnemom's **cryptographic agent trust ratings** that enable the meta-monitoring principle through persistent, auditable reputation tracking.

The key architectural decision is choosing between Forgejo Actions-driven agents (simpler, fully self-hosted, limited by the anti-recursion rule) and webhook-driven external orchestration (more complex, supports true multi-agent pipelines with independent feedback loops). For a knowledge base implementing all seven principles, the hybrid pattern is strongest: Actions handles syntactic/schema validation as fast quality gates, while an external orchestrator dispatches specialized agents (adversarial prober, source verifier, consistency checker) that post independent reviews through the Forgejo API. The convergence around AGENTS.md as a cross-tool standard means these conventions can be shared across Claude Code, Cursor, and custom agents without tool-specific configuration — though the advisory nature of AGENTS.md means it must be paired with deterministic enforcement through hooks and CI gates.
