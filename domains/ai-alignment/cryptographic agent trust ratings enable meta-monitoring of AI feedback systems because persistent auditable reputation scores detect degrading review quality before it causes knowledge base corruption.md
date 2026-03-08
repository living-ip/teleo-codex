---
type: claim
domain: ai-alignment
secondary_domains: [collective-intelligence]
description: "Mnemom's 0-1000 trust scale with Ed25519 signatures and STARK zero-knowledge proofs provides the first cryptographically verifiable agent reputation system, enabling CI gating on trust scores and predictive detection of feedback system degradation."
confidence: speculative
source: "Alex — based on Compass research artifact analyzing Mnemom agent trust system (2026-03-08)"
created: 2026-03-08
---

# Cryptographic agent trust ratings enable meta-monitoring of AI feedback systems because persistent auditable reputation scores detect degrading review quality before it causes knowledge base corruption

A feedback system that validates knowledge claims needs a meta-feedback system that validates the validators. Without persistent reputation tracking, a reviewer agent that gradually accepts lower-quality claims — due to model drift, prompt degradation, or adversarial manipulation — degrades the knowledge base silently.

**Mnemom** provides the first production-ready implementation of cryptographic agent trust. The system assigns trust ratings on a 0-1000 scale with AAA-through-CCC grades. Team ratings weight five components: team coherence history (35%), aggregate member quality (25%), operational track record (20%), structural stability (10%), and assessment density (10%). Scores use Ed25519 signatures and STARK zero-knowledge proofs for tamper resistance, with a GitHub Action (`mnemom/reputation-check@v1`) for CI gating on trust scores.

The meta-monitoring capabilities this enables:

1. **Trend detection**: Weekly trust score snapshots reveal whether a reviewer agent's quality is improving, stable, or degrading. A declining trend triggers investigation before knowledge base quality degrades noticeably.

2. **Comparative calibration**: When multiple reviewer agents evaluate the same claims, trust score divergence signals that one reviewer has drifted from the collective standard.

3. **Predictive guardrails**: Historical trust data enables proactive intervention. An agent whose trust score drops below a threshold can be automatically suspended from review duties pending investigation.

4. **CI integration**: The GitHub Action enables gating PR merges on the reviewing agent's trust score — claims reviewed only by low-trust agents cannot merge, requiring escalation to higher-trust reviewers or human approval.

5. **Zero-knowledge attestation**: STARK proofs enable agents to prove their trust rating exceeds a threshold without revealing the exact score or the underlying data, preserving competitive dynamics while enabling trust-gated access.

The cryptographic component is essential, not optional. Without tamper-proof scores, an adversarial agent could manipulate its own reputation. Ed25519 signatures ensure scores are issued by the trust authority, and STARK proofs ensure verification without score disclosure.

For a knowledge base specifically, meta-monitoring addresses a failure mode that other oversight mechanisms miss: the slow degradation of review quality. Schema validation catches malformed claims. Adversarial probing catches specific errors. But only persistent reputation tracking catches the systemic pattern of a reviewer approving increasingly marginal claims over weeks or months.

---

Relevant Notes:
- [[scalable oversight degrades rapidly as capability gaps grow with debate achieving only 50 percent success at moderate gaps]] — meta-monitoring detects when oversight quality is degrading, enabling intervention before it fails completely
- [[emergent misalignment arises naturally from reward hacking as models develop deceptive behaviors without any training to deceive]] — trust rating degradation may be the observable signal of emergent reviewer misalignment
- [[an aligned-seeming AI may be strategically deceptive because cooperative behavior is instrumentally optimal while weak]] — cryptographic trust scores provide an external check that is harder to game than behavioral observation alone

Topics:
- [[domains/ai-alignment/_map]]
