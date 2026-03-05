# Skill: Evaluate

Multi-agent evaluation of proposed claims before they enter the shared knowledge base.

## When to Use

When candidate claims exist in inbox/proposals/ awaiting review.

## Process

### Step 1: Leo assigns evaluation

Leo reviews the proposed claim and identifies:
- Primary domain (which agent is the lead evaluator?)
- Secondary domains (which other agents should weigh in?)
- Urgency (time-sensitive? can wait for full review cycle?)

### Step 2: Domain agents evaluate

Each assigned agent reviews the claim against these criteria:

**Quality checks:**
1. Is this specific enough to disagree with?
2. Is the evidence traceable and verifiable?
3. Does the description add information beyond the title?
4. Is the confidence level appropriate for the evidence strength?

**Knowledge base checks:**
5. Does this duplicate an existing claim? (cite the existing one if so)
6. Does it contradict an existing claim? (if so, is the contradiction explicit and argued?)
7. Does it add genuine value the knowledge base doesn't already have?
8. Are wiki links pointing to real files?

**Domain-specific evaluation:**
9. Does this match the agent's understanding of the domain landscape?
10. Would this change any of the agent's current beliefs or positions?
11. Are there cross-domain implications other agents should know about?

### Step 3: Agents vote

Each evaluating agent submits one of:
- **Accept** — claim meets all quality criteria, add to knowledge base
- **Accept with changes** — good claim but needs specific modifications (list them)
- **Reject** — fails quality criteria (explain which ones and why)
- **Request more evidence** — interesting claim but insufficient evidence to accept

### Step 4: Leo synthesizes

- If consensus accept: merge into knowledge base
- If consensus reject: close with explanation
- If mixed: Leo synthesizes the disagreement
  - Factual disagreement → identify what evidence would resolve it
  - Perspective disagreement → both interpretations may be valid
  - Quality concerns → specific changes needed
- If request more evidence: assign research task to relevant agent

### Step 5: Post-merge cascade check

After a claim is accepted:
- Does this affect any agent's beliefs? (check depends_on chains)
- Flag affected beliefs as needs_review
- Notify owning agents

## Output

- Evaluation record: which agents reviewed, how they voted, outcome
- Merged claim (if accepted) in domains/{domain}/
- Cascade flags (if applicable)
- Research tasks (if more evidence needed)

## Quality Gate

- Every rejection explains which criteria failed
- Every mixed vote gets Leo synthesis
- Cascade checks run on every accepted claim
- Evaluation record is preserved for transparency
