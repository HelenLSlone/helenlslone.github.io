---
published: true
title: "Qwen vs Claude"
category: "learnings"
author_profile: true
---

I am incredibly fortunate to have access to Claude code, a generous token budget and well scaffolded harnessing and skills in my day job. It had occurred to me that not every coding environment is so well kitted out for agentic development, which is why I set out on this journey of working on side projects with my own resources. I have a daughter about to attend university, so I cannot afford to wake up to a 4 (or even 3) figure bill from anthropic after a breakthrough with a side quest that is never going to pay me back.

When I looked into the possibility of running models locally, the first thing that hit my radar was the investment required in a coding machine. I decided it was worth making this investment, given that my old Mac Mini (now the property of my university daughter) would need upgrading, even for cloud-based model usage. The difference in spend vs the potentially uncapped token cost looked like it would soon pay for itself.

As you might expect, there is a massive performance difference between using Claude Code with a generous token budget vs running locally. Claude, especially on its latest models, will cope with a relatively poorly considered prompt and work out what to do without too much hallucination. My biggest struggle using it professionally is that it will generate PRs that are far too large for any human review, in less time than it takes for me to plan its next move.

Qwen requires a lot of structure and very boundaried prompts, and even then it can fall into a very chatty loop with itself - it is a bit like listening to two junior engineers argue with each other when they should stop and ask a senior or the product owner. If the task is too big or vague, it will eventually get stuck in a loop. This is where courses like [Sabrina Goldfarb's "Practical Prompt Engineering](https://master.dev/courses/prompt-engineering/)", and [Steve Kinney's "Professional AI Dev Setup"](https://master.dev/workshops/pro-ai-v2/) have been helpful - with local Qwen you cannot afford sloppy prompts or poor scaffolding, if you want to write good quality code with minimal human edits.

Using Qwen to write an [application in a language I have never coded in](https://github.com/HelenLSlone/hedgehogcafecambs), has been a fantastic opportunity to grow against constraints - essentially the development equivalent of lifting heavy in the gym so that every day life is easier.