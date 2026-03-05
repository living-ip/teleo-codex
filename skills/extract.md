# Skill: Extract

Turn raw content into structured evidence and proposed claims.

## When to Use

When new content arrives in inbox/ — articles, tweets, papers, transcripts, research files.

## Input

Raw content (text, URL, document).

## Process

### Step 1: Read the source material completely

Don't skim. Read the full content before extracting anything. Understand the author's argument, not just individual data points.

### Step 2: Separate evidence from interpretation

**Evidence** is factual: data, statistics, quotes, study results, events, observations. Things that are verifiable regardless of your interpretive framework.

**Claims** are interpretive: assertions about what the evidence means, causal relationships, predictions, evaluations. Things someone could disagree with.

Most sources mix these freely. Your job is to separate them.

### Step 3: Extract evidence

For each piece of evidence:
- Is it sourced and verifiable?
- Is it relevant to at least one Teleo domain?
- Does it already exist in the knowledge base? (check for duplicates)

Include evidence inline in the claim body — cite sources, data, studies directly in the prose.

### Step 4: Extract candidate claims

For each potential claim:
- Is it specific enough to disagree with? ("AI is changing healthcare" → NO. "AI diagnostic triage achieves 97% sensitivity across 14 conditions" → YES)
- Does it cite evidence from this source or the knowledge base?
- Does it duplicate an existing claim? (semantic check — different words, same idea)
- Title passes the prose-as-claim test: "This note argues that [title]" works as a sentence

Create candidate claim files for evaluation.

### Step 5: Classify by domain

Tag each evidence and claim with primary domain:
- internet-finance, entertainment, grand-strategy

Cross-domain items get a primary domain + secondary_domains list.

### Step 6: Identify enrichments

Does this source contain information that would improve existing notes?
- New data for existing claims
- Counter-evidence to existing claims
- New connections between existing claims

Flag enrichments for the evaluation cycle.

## Output

- Claim files in domains/{domain}/ with evidence inline
- Candidate claim files for PR review
- Enrichment flags for existing notes
- Extraction summary: N evidence extracted, N claims proposed, N enrichments flagged

## Quality Gate

- Every claim cites verifiable evidence inline
- Every claim is specific enough to disagree with
- No duplicates of existing knowledge base content
- Domain classification is accurate
- Titles work as prose propositions
