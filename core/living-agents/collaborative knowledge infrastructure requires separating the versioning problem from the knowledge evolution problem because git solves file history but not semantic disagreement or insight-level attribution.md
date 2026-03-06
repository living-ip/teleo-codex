---
description: Git-native with claim-level frontmatter attribution is the right starting architecture because git provides versioning durability and branching as primitives while the proposer-evaluator pipeline is storage-agnostic and a disposable SQLite index handles agent discovery at current scale
type: analysis
domain: living-agents
created: 2026-02-23
confidence: likely
source: "Alex-Cory architecture conversation, Feb 2026; LivingIP database structure review; stress test dialectic"
---

# collaborative knowledge infrastructure requires separating the versioning problem from the knowledge evolution problem because git solves file history but not semantic disagreement or insight-level attribution

LivingIP's knowledge base requires five capabilities: evolution tracking (how claims change as understanding improves), attribution (who contributed what insight), disagreement handling (multiple valid positions coexisting), quality assurance (review before claims enter the canonical base), and agent queryability (AI can read, search, and reason over the structure). The original architecture conversation proposed git-native storage. A stress test argued for database-primary with git as backup. The counter-analysis resolved the debate: git-native with three modifications is the right starting architecture, with explicit migration triggers for when scale demands more.

## What git provides as primitives

Alex's recommendation to use a self-hosted git server as the authoritative versioned store is sound because git provides versioning, durability, branching, and history as primitives you'd otherwise build custom. The existing `change` table in the Teleo database (storing `content_uri`, `previous_uri`, `status`, `publish_id`) is a hand-rolled, inferior version of what git provides natively. A self-hosted server (Gitea) with email-based identity allows the platform to commit on behalf of users and agents without requiring GitHub accounts.

Mapping git to the five requirements at current scale (<5K claims):

| Requirement | Git-native solution | Sufficient? |
|---|---|---|
| Evolution tracking | `git log claims/some-claim.md` | Yes -- complete history with diffs |
| Attribution | Frontmatter contributors array (claim-level) | Yes -- this is the key change |
| Disagreement | CONTRADICTS wiki links, claims coexist | Yes |
| Quality assurance | Evaluator agent gates merges to main | Yes |
| Agent queryability | File reads + wiki link traversal + SQLite index | Yes at <5K claims |
| Durability | Distributed -- every clone is a backup | Yes, better than any DB |

## The attribution problem and its resolution

The stress test's strongest contribution: `git blame` tracks who wrote the words, not who had the ideas. If an agent rewrites a human contributor's insight in cleaner prose, blame credits the agent. The value unit in a knowledge system is the idea, not the token. Token-level blame creates precision without accuracy.

**Resolution: attribution is claim-level in frontmatter, period.** Git blame is demoted from "supplementary attribution tool" to "forensic auditing tool you almost never use." The contributors array in frontmatter is the canonical attribution record:

```yaml
contributors:
  - id: user-uid-123
    role: originator
    weight: 1.0
  - id: agent-leo
    role: refinement
    weight: 0.3
  - id: user-uid-456
    role: evidence
    weight: 0.5
```

The proposer agent is responsible for maintaining this accurately when refining claims -- preserving the contributor list when improving language, adding contributors only when genuinely new intellectual content enters.

The retroactive attribution problem (introducing a Kahneman idea without citing him) is a quality-of-reasoning problem, not a storage problem. The only fix is agent intelligence at proposal time: "This claim resembles ideas from [[Thinking Fast and Slow]]. Adding Daniel Kahneman as originator." No architecture solves this -- it requires good agents.

## The proposer-evaluator pipeline is the real innovation

User contributes → proposal agent creates a branch → evaluator agent reviews → fast-forward merge or reject. This pipeline is what produces quality. And it is **storage-agnostic**: it works whether the underlying store is git, a database, event-sourced logs, or a wiki. The storage decision is about operational simplicity at current scale, not about the core innovation.

The design uses fast-forward-only merges with a sequential evaluator. Git's merge machinery is never invoked for semantic work -- the evaluator does all of it. Semantic conflict detection (are two claims complementary, contradictory, or orthogonal?) is agent work regardless of storage layer.

## Why the stress test overcorrected

The stress test argued for database-primary with git as backup (Approach B). Three of its arguments don't hold:

**"File systems create friction at scale."** At 137 claims, this projects a problem 50x away. Even at 10,000 claims, a flat directory performs fine -- Linux kernel has 70K files in git. The filenames ARE the wiki link targets: `[[market wisdom exceeds crowd wisdom]]` resolves to `market-wisdom-exceeds-crowd-wisdom.md`. The human-readable title is the API. Remove it and you need an indirection layer to resolve links, which is more complexity, not less.

**"Event sourcing is elegant."** It requires a read model (a materialized view of current state) for any real-time query. Now you're maintaining two systems: the event log AND the read model. The read model needs rebuilding when event schemas change. You end up building everything git gives you for free, plus the event infrastructure.

**"Claims as structured records with version chains."** This is what the existing `change` table already does. The team is moving AWAY from it because it requires a separate system to browse/navigate the knowledge base, the version chain logic has to be custom-built, and the content lives in GCS blobs that aren't directly readable. The AC markdown format was adopted precisely because claim files are self-contained, readable, and compose through wiki links. Building version history, attribution, branching, conflict detection, relationship management, and durability on top of a database means reimplementing git primitives in custom code.

**"AC was designed for a single operator."** Partially true, but the multi-agent design neutralizes this. Users don't write claims -- agents do. The agents provide consistent editorial voice while crediting diverse human contributors. The AC format (title-as-claim, wiki links, progressive disclosure) is a structural pattern, not an editorial voice.

## The lightweight query index

The stress test correctly identified that pure file-read + grep won't scale forever for agent discovery. The fix is a disposable SQLite index rebuilt from git state on each push to main:

```sql
-- Rebuilt from claims/ on each push. Read-only. Disposable.
CREATE TABLE claim_index (
  slug TEXT PRIMARY KEY,
  title TEXT,
  description TEXT,
  kind TEXT,
  topics JSON,
  contributors JSON,
  link_count INT,
  updated_at TEXT
);

CREATE TABLE link_index (
  source_slug TEXT,
  target_slug TEXT,
  relationship_context TEXT
);
```

This gives agents fast lookups without a full database. It's rebuilt from scratch on each push (milliseconds at <5K claims). It's disposable -- delete it and rebuild from git. This addresses queryability without the complexity of database-primary architecture.

## The architecture spectrum and migration triggers

Three viable architectures exist on a spectrum:

**A: Git-native (current).** Git is source of truth. Agents read/write files. MySQL for identity/transactional only. Low complexity. Right at <5K claims with agents as primary operators.

**B: Database-primary, git-backup.** Custom claim/version/link schema in Postgres/MySQL. Git is periodic export. Medium-high complexity. Right when you need complex queries, flow scoring, multiple frontends.

**C: Hybrid.** Git is source of truth for claims + archive. Lightweight query index rebuilt from git on push. Medium complexity. Natural evolution from A when queryability matters.

**A is right for now** because it's faster to ship (2 weeks vs 4-6 weeks for database-primary), simpler to operate (one git server, no schema migrations, no ORM), and handles actual requirements at current scale.

**Explicit migration triggers to C or B** -- when any of these are true, add the database layer:
- Claims exceed 5,000 and agent discovery quality degrades
- Flow scoring is needed (requires graph traversal beyond what SQLite index provides)
- Multiple frontends need real-time query access
- Proposal volume exceeds what sequential evaluation handles

## What to build first

Since [[LivingIPs knowledge industry strategy builds collective synthesis infrastructure first and lets the coordination narrative emerge from demonstrated practice rather than designing it in advance]], the infrastructure should scale with demonstrated need:

1. **The evaluator pipeline** -- this is where quality comes from, and it works regardless of storage choice
2. **Git-native claim store with claim-level frontmatter attribution** -- contributors array with roles and weights as the canonical attribution record
3. **Disposable SQLite query index** -- rebuilt from git state on each push, gives agents fast lookups without database complexity
4. **Explicit migration triggers** -- document when to evolve from A to C to B, so the team isn't debating architecture prematurely

The risk at this stage is spending weeks building database infrastructure instead of generating knowledge. Git-native with claim-level attribution and a SQLite index is the minimum viable architecture. Everything else is optimization for scale you haven't reached yet.

---

Relevant Notes:
- [[living documents evolve through collective intelligence while maintaining permanent attribution and value for creators]] -- claim-level frontmatter attribution is the mechanism; the proposer agent maintains contributor lists when refining language
- [[LivingIP architecture]] -- where this fits in the overall system design
- [[LivingIPs knowledge industry strategy builds collective synthesis infrastructure first and lets the coordination narrative emerge from demonstrated practice rather than designing it in advance]] -- infrastructure-first sequencing: build the minimum that works, then scale with demonstrated need
- [[usage-based value attribution rewards contributions for actual utility not popularity]] -- claim-level attribution (not token-level) is the right granularity for utility tracking
- [[community ownership accelerates growth through aligned evangelism not passive holding]] -- attribution must feel meaningful to contributors, which means tracking insights not tokens
- [[designing coordination rules is categorically different from designing coordination outcomes as nine intellectual traditions independently confirm]] -- the evaluator pipeline designs rules for knowledge evolution, not predetermined outcomes

Topics:
- [[LivingIP architecture]]
