---
type: source
title: "@DrJimFan X archive — 100 most recent tweets"
author: "Jim Fan (@DrJimFan), NVIDIA GEAR Lab"
url: https://x.com/DrJimFan
date: 2026-03-09
domain: ai-alignment
format: tweet
status: processed
processed_by: theseus
processed_date: 2026-03-09
claims_extracted: []
enrichments: []
tags: [embodied-ai, robotics, human-data-scaling, motor-control]
linked_set: theseus-x-collab-taxonomy-2026-03
notes: |
  Very thin for collaboration taxonomy claims. Only 22 unique tweets out of 100 (78 duplicates
  from API pagination). Of 22 unique, only 2 are substantive — both NVIDIA robotics announcements
  (EgoScale, SONIC). The remaining 20 are congratulations, emoji reactions, and brief replies.
  EgoScale's "humans are the most scalable embodiment" thesis has alignment relevance but
  is primarily a robotics capability claim. No content on AI coding tools, multi-agent systems,
  collective intelligence, or formal verification. May yield claims in a future robotics-focused
  extraction pass.
---

# @DrJimFan X Archive (Feb 20 – Mar 6, 2026)

## Substantive Tweets

### EgoScale: Human Video Pre-training for Robot Dexterity

(status/2026709304984875202, 1,686 likes): "We trained a humanoid with 22-DoF dexterous hands to assemble model cars, operate syringes, sort poker cards, fold/roll shirts, all learned primarily from 20,000+ hours of egocentric human video with no robot in the loop. Humans are the most scalable embodiment on the planet. We discovered a near-perfect log-linear scaling law (R^2 = 0.998) between human video volume and action prediction loss [...] Most surprising result: a *single* teleop demo is sufficient to learn a never-before-seen task."

### SONIC: 42M Transformer for Humanoid Whole-Body Control

(status/2026350142652383587, 1,514 likes): "What can half of GPT-1 do? We trained a 42M transformer called SONIC to control the body of a humanoid robot. [...] We scaled humanoid motion RL to an unprecedented scale: 100M+ mocap frames and 500,000+ parallel robots across 128 GPUs. [...] After 3 days of training, the neural net transfers zero-shot to the real G1 robot with no finetuning. 100% success rate across 50 diverse real-world motion sequences."

## Filtered Out
~20 tweets: congratulations, emoji reactions, "OSS ftw!!", thanks, team shoutouts.
