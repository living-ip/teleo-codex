---
type: claim
domain: ai-alignment
description: "Sondera's Cedar/YARA reference monitor demonstrates that intercepting agent actions at the execution layer — not the prompt layer — provides guardrails that prompt injection cannot bypass, establishing a fundamental architectural distinction for AI safety infrastructure."
confidence: experimental
source: "Alex — based on Compass research artifact analyzing Sondera (sondera-ai/sondera-coding-agent-hooks), Claude Code hooks, and the broader agent control ecosystem (2026-03-08)"
created: 2026-03-08
---

# Deterministic policy engines operating below the LLM layer cannot be circumvented by prompt injection making them essential for adversarial-grade AI agent control

Two fundamentally different paradigms exist for controlling AI agent behavior, and understanding this distinction is essential for building trustworthy multi-agent systems.

**Advisory systems** inject rules into the LLM's context window but cannot enforce compliance. Cursor's `.cursor/rules/*.mdc` files, Windsurf's `.windsurf/rules/*.md` files, Aider's `CONVENTIONS.md`, and the emerging AGENTS.md cross-tool standard all operate at this level. They guide behavior through prompt engineering — useful for coding style preferences but insufficient for security-critical validation. The fundamental limitation: advisory rules can be ignored or circumvented by prompt injection, model drift, or context window overflow.

**Deterministic systems** intercept execution programmatically and can block actions regardless of what the LLM intended. Sondera's reference monitor (released at Unprompted 2026) demonstrates the strongest form: a Rust-based harness using YARA-X signatures for pattern matching and Amazon's Cedar policy language for access control, intercepting every shell command, file operation, and web request made by Claude Code, Cursor, GitHub Copilot, and Gemini CLI. A single matching Cedar `forbid` overrides any `permit` — the deny-overrides semantics ensure that no prompt injection can authorize a blocked action.

The architectural point is structural, not about any particular tool. When the enforcement mechanism operates below the LLM — intercepting tool calls, file writes, and shell commands at the execution boundary — the LLM cannot reason its way past the constraint. This is the same principle that makes OS-level permissions more reliable than application-level access checks: the enforcement point is outside the entity being constrained.

Additional deterministic systems confirm the pattern: CrewAI's `@before_tool_call` / `@after_tool_call` decorators return `False` to block execution; LangChain 1.0's middleware provides `before_model`, `wrap_model_call`, and `after_model` hooks; AutoGen's `MiddlewareAgent` can short-circuit with direct replies; MCP's approval policies flag destructive operations.

The practical recommendation for any multi-agent knowledge system is to **layer both paradigms**: use advisory rules (AGENTS.md, CLAUDE.md) for convention sharing, while enforcing compliance through deterministic hooks, Cedar policies, and CI gates that cannot be bypassed by the agents they constrain.

---

Relevant Notes:
- [[formal verification of AI-generated proofs provides scalable oversight that human review cannot match because machine-checked correctness scales with AI capability while human verification degrades]] — formal verification is another instance of deterministic oversight that does not degrade with capability gaps
- [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]] — advisory oversight degrades; deterministic enforcement does not
- [[capability control methods are temporary at best because a sufficiently intelligent system can circumvent any containment designed by lesser minds]] — deterministic policy engines are a partial counter: they constrain actions, not intelligence, and operate outside the system being constrained

Topics:
- [[domains/ai-alignment/_map]]
