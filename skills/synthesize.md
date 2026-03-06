# Skill: Synthesize

Cross-domain synthesis — Leo's core skill. Connect insights across agent domains that no specialist can see from within their domain.

## When to Use

- After a learn cycle surfaces claims in multiple domains that may be connected
- When Leo identifies a pattern recurring across domains
- When an agent's domain development has cross-domain implications
- Periodically (weekly) as a proactive sweep for missed connections

## Process

### Step 1: Identify synthesis candidates

Sources of synthesis opportunity:
- Recent claims accepted across multiple domains in the same time window
- Claims in different domains that share evidence
- Domain attractor state changes with inter-domain implications
- Transition landscape shifts (Leo's slope reading table)

### Step 2: Articulate the connection

For each candidate connection:
- What is the specific causal or structural relationship?
- Is this a genuine insight or a surface-level analogy?
- Would experts in both domains recognize the connection as valuable?
- Does this change how either domain should evaluate their claims?

**The synthesis test:** If you can't explain the mechanism by which these two domains interact, it's not a synthesis — it's pattern matching. "Both involve networks" is not a synthesis. "Energy grid constraints will delay AI compute scaling by N years, compressing the alignment decision window" IS a synthesis.

### Step 3: Create synthesis claim

If the connection passes the test, create a new claim:
- Domain: grand-strategy (or the primary domain if clearly dominant)
- secondary_domains: both contributing domains
- The title must articulate the mechanism, not just the connection
- Cite claims from both domains in depends_on

### Step 4: Route for evaluation

Synthesis claims get special evaluation routing:
- Leo proposes (always — this is Leo's core function) and cannot self-merge
- **At least 2 domain agents** must review — selected by domain expertise relevance or knowledge base impact (see CLAUDE.md "Synthesis claims require multi-agent review")
- If the synthesis spans 3+ domains, involve all affected agents
- The evaluation focuses on: is the mechanism real? Would domain experts agree? Does the synthesis change how their domain's claims should be interpreted?

### Step 5: Update transition landscape

If the synthesis changes Leo's slope reading for any domain:
- Update the transition landscape table
- Trace implications for other domains
- Notify affected agents

## Output

- New synthesis claim(s) in the knowledge base
- Updated transition landscape (if applicable)
- Cross-domain notification to affected agents
- Tweet candidates (cross-domain synthesis is often the highest-value tweet content)

## Quality Gate

- Every synthesis articulates a specific mechanism (not just "these are related")
- At least 2 contributing domain agents validate the connection
- The synthesis adds value neither domain could produce alone
