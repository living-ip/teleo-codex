---
type: source
title: "Active Inference on Discrete State-Spaces: A Synthesis"
author: "Lancelot Da Costa, Thomas Parr, Noor Sajid, Sebastijan Veselic, Victorita Neacsu, Karl Friston"
url: https://www.sciencedirect.com/science/article/pii/S0022249620300857
date: 2020-12-01
domain: ai-alignment
secondary_domains: [critical-systems]
format: paper
status: unprocessed
priority: medium
tags: [active-inference, tutorial, discrete-state-space, expected-free-energy, variational-free-energy, planning, decision-making]
---

## Content

Published in Journal of Mathematical Psychology, December 2020. Also on arXiv: https://arxiv.org/abs/2001.07203

### Key Arguments

1. **Variational free energy (past) vs Expected free energy (future)**: Active inference postulates that intelligent agents optimize two complementary objective functions:
   - **Variational free energy**: Measures the fit between an internal model and past sensory observations (retrospective inference)
   - **Expected free energy**: Scores possible future courses of action in relation to prior preferences (prospective planning)

2. **EFE subsumes existing constructs**: The expected free energy subsumes many existing constructs in science and engineering — it can be shown to include information gain, KL-control, risk-sensitivity, and expected utility as special cases.

3. **Comprehensive tutorial**: Provides an accessible synthesis of the discrete-state formulation, covering perception, action, planning, decision-making, and learning — all unified under the free energy principle.

4. **Most likely courses of action minimize EFE**: "The most likely courses of action taken by those systems are those which minimise expected free energy."

## Agent Notes

**Why this matters:** This is the technical reference paper for implementing active inference in discrete systems (which our claim graph effectively is). Claims are discrete states. Confidence levels are discrete. Research directions are discrete policies. This paper provides the mathematical foundation for scoring research directions by expected free energy.

**What surprised me:** That EFE subsumes so many existing frameworks — information gain, expected utility, risk-sensitivity. This means active inference doesn't replace our existing intuitions about what makes good research; it unifies them under a single objective function.

**KB connections:**
- [[biological systems minimize free energy to maintain their states and resist entropic decay]] — this is the technical formalization
- [[structured exploration protocols reduce human intervention by 6x]] — the Residue prompt as an informal EFE-minimizing protocol

**Operationalization angle:**
1. **Claim graph as discrete state-space**: Our KB can be modeled as a discrete state-space where each state is a configuration of claims, confidence levels, and wiki links. Research actions move between states by adding/enriching claims.
2. **Research direction as policy selection**: Each possible research direction (source to read, domain to explore) is a "policy" in active inference terms. The optimal policy minimizes EFE — balancing information gain (epistemic value) with preference alignment (pragmatic value).

**Extraction hints:**
- CLAIM: Active inference unifies perception, action, planning, and learning under a single objective function (free energy minimization) where the expected free energy of future actions subsumes information gain, expected utility, and risk-sensitivity as special cases

## Curator Notes

PRIMARY CONNECTION: "biological systems minimize free energy to maintain their states and resist entropic decay"
WHY ARCHIVED: Technical reference for discrete-state active inference — provides the mathematical foundation for implementing EFE-based research direction selection in our architecture
EXTRACTION HINT: Focus on the VFE/EFE distinction and the unification of existing constructs — these provide the formal backing for our informal protocols
