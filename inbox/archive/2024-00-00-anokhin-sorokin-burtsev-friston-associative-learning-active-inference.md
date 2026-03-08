---
type: source
title: "Associative Learning and Active Inference"
author: "Petr Anokhin, Artyom Sorokin, Mikhail Burtsev, Karl Friston"
url: https://doi.org/10.1162/neco_a_01711
date: 2024-01-01
domain: critical-systems
secondary_domains: [collective-intelligence]
format: paper
status: unprocessed
tags: [free-energy-principle, active-inference, associative-learning, rescorla-wagner, prediction-error, reinforcement-learning, blocking, overshadowing]
notes: "Demonstrates FEP as unifying framework for classical learning theories. Shows Rescorla-Wagner model (prediction error minimization) is a special case of free energy minimization. Maps blocking, overshadowing, latent inhibition onto active inference. Priority: medium — strengthens FEP foundations but less directly relevant to collective intelligence than other sources in the set."
linked_set: friston-fep-mar2026
---

# Associative Learning and Active Inference

## Core Argument
FEP can integrate and explain associative learning phenomena (Pavlovian/operant conditioning) that existing models like Rescorla-Wagner handle individually but fail to unify. Learning = free energy minimization. Prediction errors in conditioning are a special case of variational free energy. The paper demonstrates how blocking, overshadowing, and latent inhibition emerge naturally from active inference without needing ad hoc modifications.

## Key Concepts for Extraction

### FEP Subsumes Rescorla-Wagner
- Rescorla-Wagner model = minimization of prediction error between expected and actual US
- This is formally equivalent to minimizing a component of variational free energy
- FEP provides the broader framework; R-W is a specific instantiation

### Information-Theoretic Reframing of Learning
- Association formation depends on mutual information between CS and US, not just temporal pairing
- Entropy reduction is the formal measure of learning progress
- Contingency (information) matters more than contiguity (timing)

### Attention as Precision Weighting
- Blocking and overshadowing explained via precision (confidence) in predictions
- When CS1 already predicts US with high precision, CS2 gains no additional precision → blocking
- Mackintosh and Pearce-Hall models (seemingly contradictory) are reconciled under precision weighting

## Relevance to LivingIP
- Moderate. Strengthens the theoretical case that FEP is genuinely unifying (not just re-describing)
- The precision-weighting mechanism maps onto confidence calibration in the eval loop
- Information-theoretic learning maps onto how agents update beliefs based on evidence quality

## Full Content
Neural Computation 36, 2602-2635 (2024). 34 pages.
