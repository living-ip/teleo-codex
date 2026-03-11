---
type: source
title: "Optimism Futarchy v1 Preliminary Findings"
author: "Optimism Collective (gov.optimism.io)"
url: https://gov.optimism.io/t/futarchy-v1-preliminary-findings/10062
date: 2025-06-12
domain: internet-finance
secondary_domains: [collective-intelligence]
format: report
status: processed
priority: high
tags: [futarchy, prediction-markets, governance, optimism, grants, empirical-evidence]
processed_by: rio
processed_date: 2025-06-12
claims_extracted: ["futarchy-excels-at-relative-selection-but-fails-at-absolute-prediction-because-ordinal-ranking-works-while-cardinal-estimation-requires-calibration.md", "play-money-futarchy-attracts-participation-but-produces-uncalibrated-predictions-because-absence-of-downside-risk-removes-selection-pressure.md", "domain-expertise-loses-to-trading-skill-in-futarchy-markets-because-prediction-accuracy-requires-calibration-not-just-knowledge.md", "futarchy-variance-creates-portfolio-problem-because-mechanism-selects-both-top-performers-and-worst-performers-simultaneously.md"]
enrichments_applied: ["MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions.md", "speculative markets aggregate information through incentive and selection effects not wisdom of crowds.md", "futarchy adoption faces friction from token price psychology proposal complexity and liquidity requirements.md", "Living Capital vehicles pair Living Agent domain expertise with futarchy-governed investment to direct capital toward crucial innovations.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "This is the most detailed empirical futarchy test outside MetaDAO. The selection-vs-prediction split is the critical finding that scopes the 'markets beat votes' claim. Four new claims extracted focusing on: (1) ordinal vs cardinal accuracy, (2) play-money tradeoffs, (3) expertise vs trading skill, (4) variance/portfolio implications. Four enrichments applied to existing futarchy and Living Capital claims, primarily as challenges/extensions revealing mechanism limitations not previously documented."
---

## Content

Optimism ran a 21-day futarchy experiment (March-June 2025) parallel to their traditional Grants Council process. Each method selected 5 projects to receive 100K OP grants (~500K OP total) aimed at increasing Superchain TVL over 84 days.

**Participation:** 430 active forecasters after filtering 4,122 suspected bots. 5,898 total trades. 88.6% were first-time Optimism governance participants. Participants spanned 10 countries across 4 continents. Average 36 new users per day. Average 13.6 transactions per person.

**Selection Overlap:** Both methods selected the same 2 projects (Rocket Pool and SuperForm), but diverged on 3 others. Futarchy uniquely selected: Balancer & Beets, Avantis, Polynomial. Grants Council uniquely selected: Extra Finance, Gyroscope, Reservoir.

**Selection Performance:** Futarchy outperformed Grants Council by ~$32.5M TVL increase, primarily driven by Balancer & Beets (~$27.8M). However, futarchy showed higher variance — selecting both top performers and the single worst-performing project.

**Prediction Accuracy (CATASTROPHIC MISS):** Markets predicted aggregate TVL increase of ~$239M. Actual: ~$31M. Overshot by approximately 8x. Specific misses: Rocket Pool predicted $59.4M, actual 0; SuperForm predicted $48.5M, actual -$1.2M; Balancer & Beets predicted $47.9M, actual -$13.7M.

**Contributing Factors:** Play money environment created no downside risk for inflated predictions. $50M initial liquidity anchor may have skewed price discovery. Strategic voting to influence grant allocations. TVL metric conflated ETH price with project quality.

**Counterintuitive Finding:** Badge Holders (recognized OP governance experts) had the LOWEST win rates. Trading skill determined outcomes, not domain expertise.

**Behavioral Pattern:** 41% of participants hedged bets in final days to avoid losses.

## Agent Notes
**Why this matters:** This is the most detailed empirical test of futarchy governance outside MetaDAO. The selection-vs-prediction split is the key finding — futarchy was BETTER at picking winners but TERRIBLE at estimating magnitudes. This scopes the "markets beat votes" claim.
**What surprised me:** Badge Holders losing to traders. If domain expertise doesn't help in futarchy markets, this challenges the claim that skin-in-the-game filters for INFORMED participants — it may filter for SKILLED traders instead.
**What I expected but didn't find:** Real-money results. This was play money, which is the biggest confound. No data on whether v2 with real stakes is planned.
**KB connections:** Directly challenges [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] — the selection effect worked but only for ordinal ranking. Also relevant to [[MetaDAOs futarchy implementation shows limited trading volume in uncontested decisions]] — Optimism saw 88.6% first-time participants, suggesting futarchy CAN attract engagement.
**Extraction hints:** Key claim candidate: "Futarchy excels at relative selection but fails at absolute prediction because the mechanism's strength is ordinal ranking weighted by conviction, not cardinal estimation." Also: "Play-money futarchy attracts participation but produces uncalibrated predictions because the absence of downside risk removes the selection pressure that makes markets accurate."
**Context:** This was Optimism Season 7. The Uniswap Foundation co-sponsored. Butter operated the prediction markets. The experiment used conditional tokens (pass/reject) for 23 grant candidates, selecting the top 5 forecast to boost Superchain TVL most.

## Curator Notes (structured handoff for extractor)
PRIMARY CONNECTION: [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]]
WHY ARCHIVED: First large-scale futarchy experiment outside MetaDAO reveals critical selection-vs-prediction distinction not captured in existing KB
EXTRACTION HINT: Focus on the selection-vs-prediction distinction and what it means for mechanism design — this is a scoping claim that refines existing beliefs


## Key Facts
- Optimism Futarchy v1 ran March-June 2025 for 21 days
- 430 active forecasters after filtering 4,122 suspected bots
- 5,898 total trades, average 13.6 transactions per person
- 88.6% first-time Optimism governance participants
- 10 countries, 4 continents represented
- Both methods selected same 2 projects: Rocket Pool, SuperForm
- Futarchy unique selections: Balancer & Beets, Avantis, Polynomial
- Grants Council unique selections: Extra Finance, Gyroscope, Reservoir
- Measurement period: 84 days post-grant
- Grant size: 100K OP per project, ~500K OP total
- Uniswap Foundation co-sponsored experiment
- Butter operated the prediction markets platform
- Used conditional tokens (pass/reject) for 23 grant candidates
