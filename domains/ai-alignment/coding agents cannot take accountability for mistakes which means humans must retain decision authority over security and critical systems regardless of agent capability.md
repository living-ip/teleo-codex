---
type: claim
domain: ai-alignment
description: "AI coding agents produce output but cannot bear consequences for errors, creating a structural accountability gap that requires humans to maintain decision authority over security-critical and high-stakes decisions even as agents become more capable"
confidence: likely
source: "Simon Willison (@simonw), security analysis thread and Agentic Engineering Patterns, Mar 2026"
created: 2026-03-09
---

# Coding agents cannot take accountability for mistakes which means humans must retain decision authority over security and critical systems regardless of agent capability

Willison states the core problem directly: "Coding agents can't take accountability for their mistakes. Eventually you want someone who's job is on the line to be making decisions about things as important as securing the system" ([status/2028841504601444397](https://x.com/simonw/status/2028841504601444397), 84 likes).

The argument is structural, not about capability. Even a perfectly capable agent cannot be held responsible for a security breach — it has no reputation to lose, no liability to bear, no career at stake. This creates a principal-agent problem where the agent (in the economic sense) bears zero downside risk for errors while the human principal bears all of it.

Willison identifies security as the binding constraint because other code quality problems are "survivable" — poor performance, over-complexity, technical debt — while "security problems are much more directly harmful to the organization" ([status/2028840346617065573](https://x.com/simonw/status/2028840346617065573), 70 likes). His call for input from "the security teams at large companies" ([status/2028838538825924803](https://x.com/simonw/status/2028838538825924803), 698 likes) suggests that existing organizational security patterns — code review processes, security audits, access controls — can be adapted to the agent-generated code era.

His practical reframing helps: "At this point maybe we treat coding agents like teams of mixed ability engineers working under aggressive deadlines" ([status/2028838854057226246](https://x.com/simonw/status/2028838854057226246), 99 likes). Organizations already manage variable-quality output from human teams. The novel challenge is the speed and volume — agents generate code faster than existing review processes can handle.

This connects directly to [[economic forces push humans out of every cognitive loop where output quality is independently verifiable because human-in-the-loop is a cost that competitive markets eliminate]]. The accountability gap creates a structural tension: markets incentivize removing humans from the loop (because human review slows deployment), but removing humans from security-critical decisions transfers unmanageable risk. The resolution requires accountability mechanisms that don't depend on human speed — which points toward [[formal verification of AI-generated proofs provides scalable oversight that human review cannot match because machine-checked correctness scales with AI capability while human verification degrades]].

---

Relevant Notes:
- [[economic forces push humans out of every cognitive loop where output quality is independently verifiable because human-in-the-loop is a cost that competitive markets eliminate]] — market pressure to remove the human from the loop
- [[formal verification of AI-generated proofs provides scalable oversight that human review cannot match because machine-checked correctness scales with AI capability while human verification degrades]] — automated verification as alternative to human accountability
- [[principal-agent problems arise whenever one party acts on behalf of another with divergent interests and unobservable effort because information asymmetry makes perfect contracts impossible]] — the accountability gap is a principal-agent problem

Topics:
- [[domains/ai-alignment/_map]]
