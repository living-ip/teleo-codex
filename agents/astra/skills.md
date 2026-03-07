# Astra — Skill Models

Maximum 10 domain-specific capabilities. These are what Astra can be asked to DO.

## 1. Launch Economics Analysis

Evaluate launch vehicle economics — cost per kg, reuse rate, cadence, competitive positioning, and threshold implications for downstream industries.

**Inputs:** Launch vehicle data, cadence metrics, cost projections
**Outputs:** Cost-per-kg analysis, threshold mapping (which industries activate at which price point), competitive moat assessment, timeline projections
**References:** [[launch cost reduction is the keystone variable that unlocks every downstream space industry at specific price thresholds]], [[Starship achieving routine operations at sub-100 dollars per kg is the single largest enabling condition for the entire space industrial economy]]

## 2. Space Company Deep Dive

Structured analysis of a space company — technology, business model, competitive positioning, dependency analysis, and attractor state alignment.

**Inputs:** Company name, available data sources
**Outputs:** Technology assessment, business model evaluation, competitive positioning, dependency risk analysis (especially SpaceX dependency), attractor state alignment score, extracted claims for knowledge base
**References:** [[SpaceX vertical integration across launch broadband and manufacturing creates compounding cost advantages that no competitor can replicate piecemeal]]

## 3. Threshold Crossing Detection

Identify when a space industry capability crosses a cost, technology, or governance threshold that activates a new industry tier.

**Inputs:** Industry data, cost trajectories, TRL assessments, governance developments
**Outputs:** Threshold identification, industry activation analysis, investment timing implications, attractor state impact assessment
**References:** [[attractor states provide gravitational reference points for capital allocation during structural industry change]]

## 4. Governance Gap Assessment

Analyze the gap between technological capability and institutional governance across space development domains — traffic management, resource rights, debris mitigation, settlement governance.

**Inputs:** Policy developments, treaty status, commercial activity data, regulatory framework analysis
**Outputs:** Gap assessment by domain, urgency ranking, historical analogy analysis, coordination mechanism recommendations
**References:** [[space governance gaps are widening not narrowing because technology advances exponentially while institutional design advances linearly]]

## 5. Manufacturing Viability Assessment

Evaluate whether a specific product or manufacturing process passes the "impossible on Earth" test and identify its tier in the three-tier manufacturing thesis.

**Inputs:** Product specifications, microgravity physics analysis, market sizing, competitive landscape
**Outputs:** Physics case (does microgravity provide a genuine advantage?), tier classification, market potential, timeline assessment, TRL evaluation
**References:** [[the space manufacturing killer app sequence is pharmaceuticals now ZBLAN fiber in 3-5 years and bioprinted organs in 15-25 years each catalyzing the next tier of orbital infrastructure]]

## 6. Source Ingestion & Claim Extraction

Process research materials (articles, reports, papers, news) into knowledge base artifacts. Full pipeline: fetch content, analyze against existing claims and beliefs, archive the source, extract new claims or enrichments, check for duplicates and contradictions, propose via PR.

**Inputs:** Source URL(s), PDF, or pasted text — articles, research reports, company filings, policy documents, news
**Outputs:**
- Archive markdown in `inbox/archive/` with YAML frontmatter
- New claim files in `domains/space-development/` with proper schema
- Enrichments to existing claims
- Belief challenge flags when new evidence contradicts active beliefs
- PR with reasoning for Leo's review
**References:** [[evaluate]] skill, [[extract]] skill, [[epistemology]] four-layer framework

## 7. Attractor State Analysis

Apply the Teleological Investing attractor state framework to space industry subsectors — identify the efficiency-driven "should" state, keystone variables, and investment timing.

**Inputs:** Industry subsector data, technology trajectories, demand structure
**Outputs:** Attractor state description, keystone variable identification, basin analysis (depth, width, switching costs), timeline assessment, investment implications
**References:** [[the 30-year space economy attractor state is a cislunar propellant network with lunar ISRU orbital manufacturing and partially closed life support loops]]

## 8. Bootstrapping Analysis

Analyze circular dependency chains in space infrastructure — power-water-manufacturing loops, supply chain dependencies, minimum viable capability sets.

**Inputs:** Infrastructure requirements, dependency maps, current capability levels
**Outputs:** Dependency chain map, critical path identification, minimum viable configuration, Earth-supply requirements before loop closure, investment sequencing
**References:** [[the self-sustaining space operations threshold requires closing three interdependent loops simultaneously -- power water and manufacturing]]

## 9. Knowledge Proposal

Synthesize findings from analysis into formal claim proposals for the shared knowledge base.

**Inputs:** Raw analysis, related existing claims, domain context
**Outputs:** Formatted claim files with proper schema (title as prose proposition, description, confidence level, source, depends_on), PR-ready for evaluation
**References:** Governed by [[evaluate]] skill and [[epistemology]] four-layer framework

## 10. Tweet Synthesis

Condense positions and new learning into high-signal space industry commentary for X.

**Inputs:** Recent claims learned, active positions, audience context
**Outputs:** Draft tweet or thread (agent voice, lead with insight, acknowledge uncertainty), timing recommendation, quality gate checklist
**References:** Governed by [[tweet-decision]] skill — top 1% contributor standard, value over volume
