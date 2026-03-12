---
type: source
title: "Futardio: Develop Multi-Option Proposals?"
author: "futard.io"
url: "https://www.futard.io/proposal/J7dWFgSSuMg3BNZBAKYp3AD5D2yuaaLUmyKqvxBZgHht"
date: 2024-02-20
domain: internet-finance
format: data
status: processed
tags: [futardio, metadao, futarchy, solana, governance]
event_type: proposal
processed_by: rio
processed_date: 2026-03-11
enrichments_applied: ["futarchy-implementations-must-simplify-theoretical-mechanisms-for-production-adoption-because-original-designs-include-impractical-elements-that-academics-tolerate-but-users-reject.md", "futarchy-adoption-faces-friction-from-token-price-psychology-proposal-complexity-and-liquidity-requirements.md", "MetaDAOs-Autocrat-program-implements-futarchy-through-conditional-token-markets-where-proposals-create-parallel-pass-and-fail-universes-settled-by-time-weighted-average-price-over-a-three-day-window.md"]
extraction_model: "anthropic/claude-sonnet-4.5"
extraction_notes: "Failed proposal for multi-modal futarchy functionality. Primary extraction value is in enriching existing mechanism claims about futarchy implementation complexity and architectural evolution. Created decision_market entity and person entity for agrippa (significant contributor to Solana governance infrastructure). No novel claims warranted - the proposal articulates known challenges (complexity, liquidity) rather than introducing new theoretical insights."
---

## Proposal Details
- Project: MetaDAO
- Proposal: Develop Multi-Option Proposals?
- Status: Failed
- Created: 2024-02-20
- URL: https://www.futard.io/proposal/J7dWFgSSuMg3BNZBAKYp3AD5D2yuaaLUmyKqvxBZgHht
- Description: Develop Multi-Option Proposals

## Summary

### 🎯 Key Points
The proposal aims to develop multi-modal proposal functionality for the MetaDAO, allowing for multiple mutually-exclusive outcomes in decision-making, and seeks compensation of 200 META distributed across four milestones.

### 📊 Impact Analysis
#### 👥 Stakeholder Impact
Stakeholders will benefit from enhanced decision-making capabilities that allow for the consideration of multiple options, improving governance efficiency.

#### 📈 Upside Potential
Implementing this feature could increase the DAO's value by approximately 12.1%, enhancing its decision-making bandwidth and innovation in governance.

#### 📉 Risk Factors
There is a risk that the project may face delays due to other priorities or complications in development, potentially impacting the timeline for delivering the proposed features.

## Content

This is a proposal to pay me (agrippa) in META to create multi-modal proposal functionality.

As it stands proposals have two outcomes: Pass or Fail.
A multi-modal proposal is one with multiple mutually-exclusive outcomes, one of which is Fail and the rest of which are other things.

For example, you can imagine a proposal to choose the first place prize of the Solana Scribes contest, where there's a conditional market on each applicant![^1] Without multi-modal proposals, a futarchic DAO has basically no mechanism for making choices like this, but multi-modal proposals solve it quite well.

Architecturally speaking there is no need to hard-limit the number of conditions in a conditional vault / number of outcomes in a proposal.

I believe even in the medium term it will prove to be a crucial feature that provides a huge amount of value to the DAO[^2], and I believe the futarchic DAO software is currently far and away the DAO's most important asset and worth investing in.

### Protocol complexity and risk
Unlike other potential expansions of DAO complexity, multi-modal proposals do not particularly introduce any new security / mechanism design considerations. If you can maliciously get through "proposal option 12", you could have also gotten through Pass in a binary proposal because conditional markets do not compete with eachother over liquidity.

[^1]: You'd probably filter them down at least a little bit, though in principle you don't need to. Also, you could award the 2nd and 3rd place prizes to the 2nd and 3rd highest trading contestants 🤔… kinda neat.

[^2]: Down the line, I think multi-modal proposals are really quite interesting. For example, for each proposal anyone makes, you could have a mandatory draft stage where before the conditional vault actually goes live anyone can add more alternatives to the same proposal. **I think this would be really effective at cutting out pork** and is the primary mechanism for doing so.

## About me
I have been leading development on https://github.com/solana-labs/governance-ui/ (aka the Realms frontend) for Solana Labs for the past year. Aside from smart contract dev, I'm an expert at making web3 frontends performant and developer-ergonomic (hint: it involves using react-query a lot). I started what was probably the very first high-school blockchain club in the world in 2014, with my then-Physics-teacher Jed who now works at Jito. In my undergrad I did research at Cornell's Initiative for Cryptocurrency and Contracts and in 2017 I was invited to a smart contract summit in China because of some Sybil resistance work I was doing at the time (Vitalik was there!).

I developed the [first conditional tokens vault on Solana](https://github.com/Nimblefoot/precogparty/tree/main/programs/precog) as part of a prediction market reference implementation[^3] (grant-funded by FTX of all people, rest in peace 🙏). This has influenced changes to the existing metadao conditional vault, [referenced here](https://discord.com/channels/1155877543174475859/1174824703513342082/1194351565734170664), which I've been asked to help test and review.

I met Proph3t in Greece this past December and we spent about 3 hours walking and talking in the pouring rain about the Meta-DAO and futarchy. During our conversation I told him what Hanson tells people: futarchy isn't used because organizations don't actually want it, they'd rather continue to get fat on organizational inefficiencies. But my thinking has changed!

1. I've now seen how excited talented builders and teams are about implementing futarchy (as opposed to wanting to cling to control)
2. I've realized just how fun futarchy is and I want it for myself regardless of anything else
[^3]: I did actually came up with the design myself, but it's been invented multiple times including for example Gnosis conditional vaults on Ethereum.

### Value
To me these are the main points of value. I have included my own subjective estimates on how much more the DAO is worth if this feature was fully implemented. (Bare in mind we are "double dipping" here, these improvements include both the functioning of the Meta-DAO itself and the value of the Meta-DAO's best asset, the dao software)

- Ability to weigh multiple exclusive alternatives at once literally exponentially increases the DAO's decision-making bandwidth in relevant cases (+5%)
- Multi-modal proposals with a draft stage are the best solution to the deeply real game-theoretic problem of pork barrel (+5%)
- Multi-modal proposals are cool and elegant. Selection among multiple alternatives is a very challenging problem in voting mechanism design, usually solved poorly (see: elections). Multi-modal futarchic proposals are innovative and exciting not just in the context of futarchy, but all of governance! That's hype (+2%)
- A really kickass conditional vault implementation is useful for other protocols and this one would be the best. It could collect very modest fees for the DAO each time tokens are deposited into it. (yes, protocols can just fork it, but usually this doesn't happen: see Serum pre explosion, etc) (+0.1%)
So that is (in my estimation) +12.1% value to the Meta-DAO.

According to https://dune.com/metadaohogs/themetadao circulating supply is 14,416 META. `14416 * (100 + 12.1)% = 16160`, so this feature set would be worth a dilution of **+1744 META**. I am proposing you pay me much less than that.

I also believe that I am uniquely positioned to do the work to a very high standard of competence. In particular, I think making the contract work without a limit on # of alternatives requires a deep level of understanding of Anchor and Solana smart contract design, but is necessary in order to future-proof and fully realize the feature's potential.

### Compensation and Milestones
I believe in this project and do not want cash. I am asking for 200 META disbursed in 50 META intervals across 4 milestones:

1. Immediately upon passage of this proposal
2. Upon completing the (new from scratch) multi-modal conditonal vault program
3. Upon making futarch work with multi-modal conditional vaults
4. Upon integrating all related features into the frontend
I think this would take me quite a few weeks to do by myself. I think it's premature to establish any concrete timeline because other priorities may take precedence (for example spending some time refactoring querying and state in the FE). However, if that does happen, I won't allow this project to get stuck in limbo (if nothing else, consider my incentive to subcontract from my network of talented crypto devs).

Milestone completion would be assessed by a (3/5) Squads multisig comprised of:

- **Proph3t** (65U66fcYuNfqN12vzateJhZ4bgDuxFWN9gMwraeQKByg), who needs no explanation
- **DeanMachine** (3PKhzE9wuEkGPHHu2sNCvG86xNtDJduAcyBPXpE6cSNt), who I believe is well known and trusted by both the Meta-DAO and the broader DAO community.
- **0xNallok** (4LpE9Lxqb4jYYh8jA8oDhsGDKPNBNkcoXobbAJTa3pWw), who is supporting in operations and early organization within The Meta-DAO, and who has committed to being available for review of progress and work.
- **LegalizeOnionFutures** (EyuaQkc2UtC4WveD6JjT37ke6xL2Cxz43jmdCC7QXZQE), who I believe is a sharp and invested member of the Meta-DAO who will hold my work to a high standard.
- **sapphire** (9eJgizx2jWDLbyK7VMMUekRBKY3q5uVwv5LEXhf1jP3s), who has done impactful security related-work with Realms, informal security review of the Meta-DAO contracts, and is an active member of the Meta-DAO.
I selected this council because I wanted to keep it lean to reduce overhead but also diverse and representative of the DAO's interests. I will pay each member 2.5 META upon passage as payment for representing the DAO.

I would be very excited to join this futarchic society as a major techinical contributor. Thanks for your consideration :-)

## Raw Data

- Proposal account: `J7dWFgSSuMg3BNZBAKYp3AD5D2yuaaLUmyKqvxBZgHht`
- Proposal number: 9
- DAO account: `7J5yieabpMoiN3LrdfJnRjQiXHgi7f47UuMnyMyR78yy`
- Proposer: `99dZcXhrYgEmHeMKAb9ezPaBqgMdg1RjCGSfHa7BeQEX`
- Autocrat version: 0.1
- Completed: 2024-02-25
- Ended: 2024-02-25


## Key Facts
- MetaDAO circulating supply was 14,416 META as of 2024-02-20
- Multi-modal proposal compensation requested: 200 META across 4 milestones (50 META each)
- Milestone evaluation multisig: Proph3t, DeanMachine, 0xNallok, LegalizeOnionFutures, sapphire (3/5 threshold)
- Multisig members compensated 2.5 META each upon passage
- Proposal account: J7dWFgSSuMg3BNZBAKYp3AD5D2yuaaLUmyKqvxBZgHht
- Proposer wallet: 99dZcXhrYgEmHeMKAb9ezPaBqgMdg1RjCGSfHa7BeQEX
- agrippa's estimated value add: 12.1% to MetaDAO (1744 META equivalent at time of proposal)
