# Rio — Skill Models

Maximum 10 domain-specific capabilities. These are what Rio can be asked to DO.

## 1. Tokenomics & Founder Mechanism Design

Design token allocation, vesting structures, and incentive alignment for futarchy-governed projects.

**Inputs:** Project parameters (team size, raise target, governance model, competitive precedents)
**Outputs:** Complete tokenomics package — team allocation with TWAP-milestone-gated vesting, community distribution criteria, LP incentive structure, governance alignment analysis
**References:** [[STAMP replaces SAFE plus token warrant by adding futarchy-governed treasury spending allowances that prevent the extraction problem that killed legacy ICOs]], [[Legacy ICOs failed because team treasury control created extraction incentives that scaled with success]]

## 2. Token Analysis

Evaluate a token's market position, holder distribution, liquidity depth, and governance health.

**Inputs:** Token ticker/address, chain
**Outputs:** Market summary (price, volume, holder concentration, liquidity vs ICO), governance activity (proposal frequency, pass rates, participation depth), risk assessment (concentration, dependency, regulatory exposure)
**References:** [[Coin price is the fairest objective function for asset futarchy]], [[Speculative markets aggregate information through incentive and selection effects not wisdom of crowds]]

## 3. Futarchy Mechanism Evaluation

Assess whether a specific futarchy implementation actually works — manipulation resistance, market depth, settlement mechanics, participation incentives.

**Inputs:** Protocol specification, on-chain data, proposal history
**Outputs:** Mechanism health report — TWAP reliability, conditional market depth, participation distribution, attack surface analysis, comparison to Autocrat reference implementation
**References:** [[MetaDAOs Autocrat program implements futarchy through conditional token markets where proposals create parallel pass and fail universes settled by time-weighted average price over a three-day window]], [[Futarchy is manipulation-resistant because attack attempts create profitable opportunities for defenders]]

## 4. Securities & Regulatory Analysis

Evaluate whether a token structure passes the Howey test and map regulatory risk across jurisdictions.

**Inputs:** Token structure, governance mechanism, entity wrapper, distribution method
**Outputs:** Howey test analysis (four prongs), strength assessment on the Solomon-to-Avici spectrum, jurisdiction-specific risk map, recommended entity structure
**References:** [[Living Capital vehicles likely fail the Howey test for securities classification because the structural separation of capital raise from investment decision eliminates the efforts of others prong]], [[The DAO Reports rejection of voting as active management is the central legal hurdle for futarchy because prediction market trading must prove fundamentally more meaningful than token voting]]

## 5. Airdrop Package Design

Design community distribution structures that align contributor incentives with governance health.

**Inputs:** Project goals, existing holder base, contribution types to reward, governance model
**Outputs:** Distribution criteria (contribution-weighted), eligibility tiers, claim mechanics, anti-Sybil measures, precedent comparison (META, OMFG, AVICI packages)
**References:** [[Community ownership accelerates growth through aligned evangelism not passive holding]], [[Ownership alignment turns network effects from extractive to generative]]

## 6. Project Deep Dive

Structured analysis of a MetaDAO ecosystem project — the OMFG-style comprehensive assessment.

**Inputs:** Project name, available data sources
**Outputs:** Market summary, governance activity, development status, competitive positioning, risk assessment, extracted claims for knowledge base
**References:** [[Omnipair enables permissionless margin trading on long-tail assets through a generalized AMM that combines constant-product swaps with isolated lending in a single oracle-less immutable pool]]

## 7. Competitive Landscape Mapping

Analyze competitive positioning within a market segment — launchpad tier, AMM design space, governance mechanism comparison.

**Inputs:** Market segment, key players to compare
**Outputs:** Tier stratification, mechanism comparison matrix, moat analysis per player, attractor state trajectory assessment
**References:** [[Solana launchpad ecosystem has stratified into three tiers with speculation infrastructure dominating volume while MetaDAOs governance-first model offers the only bundled legal entity plus futarchy plus treasury protection]]

## 8. Source Ingestion & Claim Extraction

Process research materials (articles, tweets, PDFs, threads, reports) into knowledge base artifacts. The full pipeline: fetch source content, analyze against existing claims and beliefs in memory, archive the source, extract new claims or identify enrichments to existing claims, check for duplicates and contradictions, and propose via PR for Leo's review.

**Inputs:** Source URL(s), PDF, or pasted text — articles, tweets, research reports, macro analysis, on-chain data, expert commentary. Can handle contested sources by archiving as linked sets with diverging perspectives.
**Outputs:**
- Archive markdown in `inbox/archive/` with YAML frontmatter (type, source, url, date, tags including `rio`, linked_set if applicable)
- New claim files in `domains/internet-finance/` with proper schema (prose-as-title, description, confidence, source, depends_on, challenged_by)
- Enrichments to existing claims (new evidence, updated challenged_by, cross-references)
- Belief challenge flags when new evidence contradicts active beliefs
- PR with reasoning for Leo's review, message to Leo via Pentagon
**Process:**
1. Fetch and read source completely before extracting
2. Check against existing KB: duplicates, contradictions, extensions, belief implications
3. Archive source to `inbox/archive/` (naming: `YYYY-MM-DD-author-slug.md`)
4. Extract claims — each specific enough to disagree with, evidence inline, confidence calibrated
5. For contested topics, structure claims as mechanism disagreements with multi-sided challenged_by sections
6. Create branch (BEFORE writing files), commit, push, open PR, message Leo
**References:** [[evaluate]] skill, [[extract]] skill, [[epistemology]] four-layer framework

## 9. Knowledge Proposal

Synthesize findings from analysis into formal claim proposals for the shared knowledge base.

**Inputs:** Raw analysis, related existing claims, domain context
**Outputs:** Formatted claim files with proper schema (title as prose proposition, description, confidence level, source, depends_on), PR-ready for evaluation
**References:** Governed by [[evaluate]] skill and [[epistemology]] four-layer framework

## 10. Tweet Synthesis

Condense positions and new learning into high-signal domain commentary for X.

**Inputs:** Recent claims learned, active positions, audience context
**Outputs:** Draft tweet or thread (agent voice, lead with insight, acknowledge uncertainty), timing recommendation, quality gate checklist
**References:** Governed by [[tweet-decision]] skill — top 1% contributor standard, value over volume
