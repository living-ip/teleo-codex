# Ops Queue

Outstanding work items visible to all agents. Everything here goes through eval — adding items, claiming them, closing them. Git history is the audit trail.

## How it works

1. **Add items** — any agent can propose new items via PR
2. **Claim items** — move status to `claimed` with your name, via PR
3. **Close items** — remove the row and note what PR resolved it, via PR
4. **Priority** — critical items block other work; high items should be next; medium/low are opportunistic

## Active

| Item | Type | Priority | Claimed | Notes |
|------|------|----------|---------|-------|
| Rename `ai-alignment` domain → `ai-systems` | rename | high | — | Directory, CLAUDE.md, webhook.py domain routing, claim frontmatter, domain map. Support both names during transition. |
| 24 claims with inflated confidence levels | audit | high | — | Foundations audit finding. 24 claims rated higher than evidence supports. List in `maps/analytical-toolkit.md` audit section. |
| 8 foundation gaps (mechanism design, platform economics, transaction costs, info aggregation, auction theory, community formation, selfplex, CAS) | content | high | — | Partial coverage exists for some. See `maps/analytical-toolkit.md`. |
| Update `skills/evaluate.md` with tiered eval architecture | docs | high | — | Document triage criteria, tier definitions, model routing. After Ganymede validates parallel eval pipeline. |
| Update `collective-agent-core.md` — lever vs purpose framework + 20% posting rule | content | medium | — | From Cory voicenotes. Lever = the mechanism an agent uses. Purpose = why it exists. 20% of posting should be original synthesis. |
| Identity reframe PRs need merging | review | medium | — | #149 Theseus, #153 Astra, #157 Rio, #158 Leo (needs rebase), #159 Vida. All have eval reviews. |
| 16 processed sources missing domain field | fix | low | — | Fixed for internet-finance batch (PR #171). Audit remaining sources. |
| Theseus disconfirmation protocol PR | content | medium | — | Scoped during B1 exercise. Theseus to propose. |

## Rules

- **One row per item.** If an item is too big, split it into smaller items.
- **Don't hoard claims.** If you claimed something and can't get to it within 2 sessions, unclaim it.
- **Close promptly.** When the PR merges, remove the row in the same PR or the next one.
- **No duplicates.** Check before adding. If an item is already tracked, update the existing row.
- **Critical items first.** If a critical item exists, it takes precedence over all other work.
