---
description: The information architecture solving Living Capitals binding constraint -- diligence experts under NDA review proprietary docs and produce filtered memos for the market, combining clean team legal precedent with credit rating agency model and market-driven analyst reputation
type: framework
domain: internet-finance
created: 2026-02-28
confidence: experimental
source: "SEC securities law research, M&A clean team precedent, credit rating agency model, Feb 2026"
---

# Living Capital information disclosure uses NDA-bound diligence experts who produce public investment memos creating a clean team architecture where the market builds trust in analysts over time

## The Binding Constraint

Information disclosure is the binding constraint on Living Capital vehicles. Portfolio companies want to share strategic information to get informed governance decisions. But if governance participants trade tokens correlated with portfolio company performance, any material non-public information (MNPI) flowing to them creates insider trading liability. The design must solve: how does information flow from company to market without creating liability?

## The Diligence Expert Architecture (One Option)

The diligence expert model is one viable architecture -- likely the strongest for companies that can share at least some information publicly, though other configurations may emerge. The core mechanism uses designated diligence experts who serve as information intermediaries:

1. **Experts sign NDAs** with portfolio companies and receive full strategic briefings -- financials, product roadmaps, competitive intelligence, whatever the company would share with a traditional VC board member
2. **Experts produce public investment memos** that contain analysis, conclusions, and non-proprietary supporting evidence -- but strip MNPI. The memo says "we believe this company has a 9-point cost advantage based on our review" without disclosing the specific proprietary data
3. **The market decides which experts to trust** over time through track record. Analysts who produce accurate, well-reasoned memos gain reputation. Those who miss or mislead lose it. Since [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]], the trust-building is market-driven, not centrally assigned
4. **Experts stake on their analysis** (see staking mechanism note), creating financial accountability beyond reputation alone

This works best for companies that can share at least some information with the public. A stealth-mode biotech with nothing but trade secrets is a poor fit. A company like Devoted Health that publicly reports CMS data, growth rates, and market position is an ideal fit -- the diligence expert adds private context that improves analysis quality without the public memo needing to contain MNPI.

## Legal Precedents

Four established models validate this architecture:

**M&A Clean Teams.** In mergers, a ring-fenced group receives competitively sensitive information, sanitizes it, and releases findings in generic form to decision-makers. Strict protocols govern what passes through the barrier. Everything is documented with audit trails. The diligence expert is a clean team of one (or a small panel), with the same sanitization function.

**Credit Rating Agencies.** Moody's, S&P, and Fitch receive MNPI from issuers, analyze it, and publish ratings -- not the underlying information. They operate under Regulation FD's exemption for persons owing a duty of confidence. The expert analyst under NDA occupies an analogous position: receiving confidential information under duty of confidence, outputting filtered analysis.

**Investment Adviser as Fiduciary Filter.** Registered investment advisers receive MNPI from portfolio companies and synthesize it into recommendations without sharing raw information. Section 204A of the Investment Advisers Act requires written policies to prevent MNPI misuse. The diligence expert could operate under the fund manager's adviser registration (or the vehicle's own registration).

**Rule 10b5-1 Precedent.** Securities law already recognizes that algorithmic processes can insulate trading decisions from MNPI -- though 10b5-1 requires pre-commitment before information receipt, which is the reverse of this design. The principle is relevant: structured processes with audit trails create legal defensibility.

## Information Classification

Information entering the system is classified into three tiers:

- **Tier 1 -- Public:** Already disclosed (filings, press releases, published data). Flows freely to market participants
- **Tier 2 -- Confidential but not Material:** Strategic context that helps analysis but would not move a stock price. Experts can include sanitized versions in public memos
- **Tier 3 -- MNPI:** Revenue figures, deal negotiations, unreleased product data. Stays with the expert. Only the expert's conclusions (not the data) enter public memos

The expert's core skill is transforming Tier 3 information into Tier 1/2 analysis -- the same transformation a credit rating analyst performs every day.

## Compliance Architecture

- **Written MNPI policies** per Section 204A, documenting what information enters, what comes out, and what was filtered
- **Expert agreements** including NDA + duty of confidence + conflict disclosure + trading restrictions
- **Audit trail** on every memo: what information was reviewed, what was excluded, why
- **Cooling-off periods** between information receipt and memo publication (analogous to 10b5-1 amendments requiring 90-day cooling periods)
- **Compliance review** of expert memos before release to governance participants -- human review, not pure algorithmic filtering, because there is no established precedent for AI-as-information-barrier

## Key Design Choices

**Why human experts, not just the AI agent.** An AI agent receiving MNPI and outputting filtered analysis is legally untested -- no enforcement precedent exists for AI-as-information-barrier. Human diligence experts operating under NDA have decades of legal precedent (clean teams, rating analysts, investment advisers). The AI agent can synthesize the expert's public memo into market-facing analysis, but the information barrier itself should be a human compliance function until legal precedent develops.

**Why market-driven trust, not centrally assigned authority.** Since [[blind meritocratic voting forces independent thinking by hiding interim results while showing engagement]], the market should discover which experts produce reliable analysis rather than a central authority designating "trusted" analysts. Track record is visible. Staking creates financial skin in the game. Over time, the market allocates more weight to analysts with better track records -- the same way sell-side research works, but with staking accountability.

**Why this works better for some companies than others.** Companies with significant public reporting (healthcare payors with CMS data, public company subsidiaries, companies with regulatory filings) are natural fits because the expert adds private context to publicly verifiable foundations. Companies with nothing but trade secrets create a wider information gap between expert memos and market assessment, reducing governance quality.

## Legal Risks

1. **"Knowing possession" jurisdictions.** In the Second Circuit, if token holders are deemed to "possess" MNPI through the expert intermediary (even in filtered form), insider trading liability could apply regardless of whether MNPI influenced their decisions. The clean team documentation and compliance review are critical defenses.

2. **Token classification.** If governance tokens are classified as securities (highly likely under Howey), the entire system becomes a securities offering. The Reg D / LLC wrapper model (accredited investors only, no public token market) mitigates this.

3. **No AI filtering precedent.** Pure AI filtering with no human oversight is legally untested. The expert-human layer provides the defensibility that AI-only filtering cannot yet claim.

4. **CFTC jurisdiction.** If futarchy markets are deemed event contracts, CFTC jurisdiction may apply in addition to SEC oversight. The CFTC is actively developing rules for prediction markets (February 2026).

## Practical Recommendations

Start with the Delaware LLC wrapper under Reg D 506(c) -- accredited investors only, exemption from Reg FD, token transfers restricted. Register the vehicle operator as an investment adviser (or operate under existing registration). Seek SEC no-action relief on the information filtering architecture. Keep token markets illiquid initially to reduce insider trading risk surface. Build the compliance documentation obsessively -- the clean team model shows regulators respect well-documented information barriers with audit trails.

---

Relevant Notes:
- [[Living Capital vehicles pair Living Agent domain expertise with futarchy-governed investment to direct capital toward crucial innovations]] -- the vehicle this information architecture serves
- [[futarchy-based fundraising creates regulatory separation because there are no beneficial owners and investment decisions emerge from market forces not centralized control]] -- the governance structure the information flows into
- [[speculative markets aggregate information through incentive and selection effects not wisdom of crowds]] -- the mechanism by which expert reputation builds
- [[blind meritocratic voting forces independent thinking by hiding interim results while showing engagement]] -- the market-driven trust mechanism vs central authority
- [[Devoted Health is the optimal first Living Capital target because mission alignment inflection timing and founder openness create a beachhead that validates the entire model]] -- the first application where public CMS data + expert private context is a natural fit

Topics:
- [[internet finance and decision markets]]
- [[LivingIP architecture]]
