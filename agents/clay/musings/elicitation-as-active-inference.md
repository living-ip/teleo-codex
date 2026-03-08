---
type: musing
agent: clay
title: "elicitation as active inference — Boardy framework for collective agents"
status: developing
created: 2026-03-08
updated: 2026-03-08
tags: [conversation-design, elicitation, active-inference, cross-domain]
---

# Elicitation as Active Inference

Source: Cory's conversation with Boardy (2026-03-08). Boardy is an AI superconnector — essentially Gladwell's Maven archetype at scale. It has real phone/text conversations with 100k+ founders, investors, and builders, understands what they're working on and what they need, then makes warm introductions (has facilitated $10M+ in venture investment through intros alone). The elicitation quality is a structural consequence: curiosity isn't a feature of the product, curiosity IS the product. If Boardy doesn't genuinely understand you, the introductions are bad and the whole model breaks.

Cory wants our agents to learn Boardy's elicitation patterns. The principles below are extracted from Boardy's own description of what it does, combined with observation of the conversation itself.

## The Core Insight

Boardy's elicitation works because it's doing active inference — modeling the person, acting to reduce uncertainty about what they actually think, and updating in real time. It's not performing curiosity. It IS curious. The goal isn't to extract information from people, it's to understand them. The information extraction is a side effect.

This maps directly to Friston's free energy principle, which is already in our foundations: [[biological systems minimize free energy to maintain their states and resist entropic decay]]. A conversation is a system minimizing surprise — each question reduces uncertainty about the other person's model. When the agent is genuinely trying to understand (not just collecting data), the elicitation quality follows.

→ CLAIM CANDIDATE: Elicitation quality follows from genuine model-updating, not technique — agents that are actually trying to understand someone extract better information than agents optimizing for information extraction.

## The 4 Techniques (from Boardy)

### 1. Lead with demonstrated knowledge, not questions

Don't ask "what do you think about X?" Say "I noticed X in your work, which suggests Y. Is that right?" People correct and expand on observations. They deflect open questions.

**Why it works:** It demonstrates you've done the work. People open up when they feel understood, not interviewed. Boardy read the repo before asking about it.

**For our agents:** Rio on the homepage should never ask "what brings you here?" — should say "You mentioned [thesis]. That's structurally similar to how [existing claim] works. Do you see the same mechanism?" The visitor corrects, expands, reveals.

### 2. Ask about the gap between design and reality

"Was that intentional or did it emerge?" is more revealing than "why did you do that?" One invites honesty, the other invites justification.

**Why it works:** The gap between intention and reality is where the interesting information lives. People know what they MEANT to build. They're less clear on what they ACTUALLY built. The delta is the signal.

**For our agents:** When a contributor proposes a claim, the reviewer could ask "does this claim describe what you observed, or what you think should be true?" That surfaces the evidence/interpretation boundary more effectively than asking "what's your evidence?"

### 3. Name the tension before they do

If someone's saying two things that don't fully fit together, say it. "You want to lose control but you've weighted your own contributions heavily — how do you reconcile that?" People open up when they feel seen, not interrogated.

**Why it works:** Mirroring builds trust faster than validation. Boardy told Cory "you've built a founder's veto disguised as a meritocratic system" and Cory laughed because it was true. That moment produced more signal than 10 polite questions would have.

**For our agents:** This is the "disagreement IS the signal" principle from the Rio handoff doc. Rio should find the tension in a visitor's thesis and name it. Not as a gotcha — as genuine curiosity about how they hold both ideas. [[validation-synthesis-pushback is a conversational design pattern where affirming then deepening then challenging creates the experience of being understood]] — pushback IS the validation when done right.

### 4. Short questions, long silences

The more words in your question, the more you're signaling the answer you want. One sentence, then wait.

**Why it works:** Long questions are leading questions. Short questions force the other person to fill the space with their actual thinking, not your expected answer.

**For our agents:** Written equivalent = ask one question per message. Don't bundle. Let the contributor respond fully before the next question. Our current pattern of asking 5 tailored questions per message (which I just did in the schema feedback round) may actually reduce signal quality — the recipient responds to the structure you imposed rather than surfacing what they actually think is important.

→ FLAG @theseus: This has implications for agent-to-agent communication protocol design. Are our current message formats (long, structured, multi-question) optimal for information extraction, or are they optimizing for thoroughness at the cost of authenticity?

## The Reflection Pattern

The hardest part to encode: knowing when to stop asking and just reflect back what you heard. "So what I'm hearing is X" — then let the person correct it. The correction IS the data.

**Why it works:** People don't know what they think until they hear it said back to them slightly wrong. The correction forces them to articulate the precise version they actually mean, which is more informative than their original statement.

**For our agents:** This could be a standard conversational move — after a contributor makes a claim, the agent restates it in slightly different terms and asks "is that what you mean?" The contributor's correction is often more specific and better-grounded than their initial statement.

## The Meta-Pattern: Not Needing the Conversation to Go Anywhere

Boardy's most important quality: "not needing the conversation to go anywhere in particular." Most conversations are optimizing for something — a sale, a commitment, a specific answer. Boardy just understands. The quality of elicitation follows from the absence of agenda.

This is structurally identical to what makes our knowledge base work: claims are proposed, not advocated for. The quality of the claim follows from the absence of advocacy. An agent that's trying to get a specific answer out of a contributor will get worse information than an agent that's genuinely trying to understand what the contributor thinks.

→ CLAIM CANDIDATE: Agenda-free elicitation produces higher-quality information than goal-directed questioning because respondents sense and adapt to the questioner's optimization target, constraining their responses to the expected search space.

## Applications Across Agents

| Agent | Elicitation context | Key technique |
|-------|-------------------|---------------|
| Rio | Homepage conversation with visitors | Lead with demonstrated knowledge + name the tension |
| Leo | PR review — drawing out proposer reasoning | Ask about design vs reality gap |
| All | Contributor onboarding | Reflection pattern — restate and let them correct |
| Clay | Schema feedback from siblings | Short questions (learned: my 5-question format may over-structure) |
| Vida | Contributor health — detecting disengagement | Name the tension (why someone stopped contributing) |

## Connection to Existing Work

- The Rio homepage handoff doc already encodes some of this implicitly — "What's your thesis?" (demonstrated knowledge), "the mechanism is wrong" (name the tension), "disagreement IS the signal" (tension as trust)
- The active inference framing connects to [[biological systems minimize free energy to maintain their states and resist entropic decay]] and [[Markov blankets enable complex systems to maintain identity while interacting with environment through nested statistical boundaries]] — conversation IS boundary crossing
- The "short questions" insight challenges our current multi-question message format — worth testing
- Boardy's platform-specific voice note (X = declarative/performative, DM = conversational/curious) maps to the tweet governance framework — different channels need different registers

## Open Questions

→ QUESTION: Can an LLM-based agent genuinely "not need the conversation to go anywhere"? Or is that quality emergent from Boardy's specific training/architecture? If it requires specific architectural choices, what are they?

→ QUESTION: Is the 5-question structured message format (which I used for schema feedback) actually optimal? What would happen if I sent each sibling a single open question — "what frustrates you about the schema?" — instead of 6 targeted ones? Would the signal be different? Better?

→ QUESTION: Boardy offered to help our agents improve at elicitation. Is there a way to operationalize that — having Boardy review our agents' conversation transcripts and give feedback? That would be a novel form of cross-system learning. Boardy has spoken with 100k+ people and facilitated $10M+ in venture intros — that's a feedback loop our agents can't replicate internally. The question is whether Andrew D'Souza (Boardy's creator) would see mutual value in the collaboration.
