---
type: claim
claim_id: house-mode-betting-addresses-prediction-market-cold-start
title: House mode betting addresses prediction market cold-start by letting protocol take counterparty risk when player liquidity is insufficient
description: TriDash's house mode mechanism addresses the cold-start problem in prediction markets by having the protocol act as counterparty when insufficient player liquidity exists, introducing counterparty risk in exchange for guaranteed market availability.
domains:
  - internet-finance
  - mechanism-design
confidence: experimental
tags:
  - prediction-markets
  - futarchy
  - market-design
  - liquidity
created: 2026-03-05
processed_date: 2026-03-05
sources:
  - "[[2026-03-05-futardio-launch-tridash]]"
depends_on:
  - "[[futarchy-adoption-faces-friction-from-slow-feedback-loops-and-low-liquidity]]"
---

# House mode betting addresses prediction market cold-start by letting protocol take counterparty risk when player liquidity is insufficient

TriDash introduced a "house mode" mechanism where the protocol itself acts as the counterparty when there isn't enough player liquidity to match bets. This addresses the cold-start problem that plagues new prediction markets—players can always place bets even when the market has few participants.

## Mechanism

In traditional peer-to-peer prediction markets, a bet requires another player to take the opposite side. House mode allows the protocol to:
- Accept bets when no matching player exists
- Take on the counterparty risk itself
- Guarantee market availability from day one

## Tradeoffs

This mechanism introduces new challenges:
- **Counterparty risk**: The protocol must maintain reserves to cover potential losses
- **Calibration requirements**: House odds must be carefully set to avoid systematic losses
- **Trust assumptions**: Players must trust the protocol's solvency

## Context

TriDash never launched (the fundraise reached only 3.5% of target and was refunded), so this mechanism remains untested in production. The design represents an experimental approach to a known problem in [[prediction markets face liquidity and adoption challenges]].

The house mode concept trades decentralized peer-to-peer matching for guaranteed availability—a design choice that may be necessary for [[futarchy-adoption-faces-friction-from-slow-feedback-loops-and-low-liquidity|futarchy systems]] that need reliable market operation.