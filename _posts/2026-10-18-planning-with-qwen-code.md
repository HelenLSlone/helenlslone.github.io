---
published: true
title: "Planning with QWEN code"
category: "learnings"
---

After fiddling around with Qwen and Aider yesterday, I decided to take a fresh approach and use QWEN code. This was a lot more straightforward than I had expected, so I was able to start working on a [plan for the hedgehog cafe project](https://helenlslone.github.io/learnings/2026/10/18/planning-with-qwen-code.html). I started by using the [/grill-me skill](https://www.aihero.dev/skills-grill-me):

`/grill me - I want a plan to implement the mermaid diagram given here. I would like to implement this flow in stages, and for each stage, I would like to start with a mock, and check this works before plugging everything in. Each stage should validate it's output before moving to the next. Do not implement anything. Only propose a plan. Ask me any questions you have one at a time, and once we hae reached a shared understanding, save the plan as an .md file`


This produced a [reasonable first draft](https://github.com/HelenLSlone/hedgehogcafecambs/blob/dad25b05f91ecf4862c87564d03c1611f5a1bed4/plans/Plan.v1.md), but, unsurprisingly, given the level of detail it was given to begin with, the plan had quite a few holes. So I cleared my context and gave it this prompt:

`You are an adversarial red team agent. Your job is to review this plan (link to plan) and challenge every detail of this plan. Make a list of your questions / changes but do not make any changes or ask any questions until your review is complete. Once you have completed your review, propose each change / ask each question one at a time.`

This produced a [much better version of the plan](https://github.com/HelenLSlone/hedgehogcafecambs/blob/e3ae38c801c59e2f951785af499087a7758d90b0/plans/Plan.v1.md).