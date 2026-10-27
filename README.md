# feynman-sync

A skill for Claude (and other agents that read `SKILL.md` skills) in which the AI keeps a living, top-down document
explaining a project's core reasoning in plain language. The AI writes it; you read it and push back. Both of you end up understanding the project
better, and the project stops drifting.

## The name

The Feynman method: you understand something only when you can explain it simply, and the attempt to explain is what exposes the
gaps. The goal here is deep understanding of the project, not repeating it back; the explanation has to hold together end to end,
and where it can't, the understanding wasn't there yet. "Sync" is what it's for: keeping you and the AI on the same page about the
project, with the doc as the page.

## Why

Long projects with an AI collaborator fail in quiet ways:

- **Confident errors survive in chat.** A claim that sounds right in conversation often falls apart when it has to cohere with
  everything else on one page.
- **Reasoning gets lost.** Context is compacted, sessions are handed off, and the "why" behind decisions is the first thing to go.
- **Loose ends evaporate.** Ideas raised in chat and never filed are forgotten by both sides.

A Feynman doc fixes these by making the AI explain the whole framework, simply and top down, and keep that explanation current.

## Two students

The Feynman method has two students: the one who explains, who finds the gaps in their own understanding while trying to make
it simple, and the one who listens, who learns and pushes back where the explanation doesn't hold.

Here the AI explains. Its grasp of your project is tested on the page instead of assumed. You listen: you learn the parts you
haven't worked through yourself, and your challenges are the strongest check on the AI.

This is different from skills that use the Feynman technique to teach you a topic, or that explain an AI's work to you. The goal
here is shared, verified understanding of a project you are building together.

## What the doc looks like

Shaped to the project, but usually:

1. The question and its framing, in a few sentences
2. Terms and notation, defined once
3. The argument, top down: for each rule, assumption or design choice, why it is needed, where it fails, and how much that matters
4. Evidence next to the claims it supports or refutes
5. Open questions and next experiments, so nothing lives only in chat
6. Sources

It is kept separate from status or handoff notes. Those record what happened and what to do next; the Feynman doc records why
the current position is the right one.

## How the AI keeps it

- Folds settled conclusions into the doc in the same turn they are settled, within the requested maintenance scope
- Restructures rather than appends, and re-derives sections instead of copying stale text forward
- Marks claims as measured, argued, or intuition, and flags citations recalled from memory as unverified
- Keeps it legible: short paragraphs, tables and one realistic example per point
- Chooses detail to serve the explanation, including implementation details when they help you understand behavior, reasoning,
  tradeoffs, or failure modes; omits incidental mechanics that don't contribute
- Keeps one shared doc with a single entry point and linked supporting sections, leaving "superseded by" pointers to older ones
- Keeps scripts for any generated figures in the project, reusing existing tools so figures can be rebuilt
- Walks the argument top down when asked whether the doc is up to date, and fixes what no longer holds

## Install

The skill itself is the folder `skills/feynman-sync/` (`SKILL.md`, plus optional Codex metadata in `agents/openai.yaml`).

**Claude Code:** copy or symlink `skills/feynman-sync` into `~/.claude/skills/` (all projects) or `.claude/skills/` in a
project. The repo is also laid out as a Claude Code plugin (`.claude-plugin/plugin.json`).

**Codex:** copy or symlink `skills/feynman-sync` into `~/.agents/skills/` (all projects) or `.agents/skills/` in a repo.

**Claude apps:** run `scripts/build_skill.sh` and upload `dist/feynman-sync.skill`, where your plan allows custom skills.

## Using it

The skill activates during sustained work on a system, model or body of reasoning with interacting concepts, assumptions,
dependencies or consequential design choices. The AI maintains a human-readable explanation as part of that work, regardless
of its confidence or whether it thinks you need an explanation, and without waiting for an explicit request. The length of a task alone
does not qualify: routine proofreading, shopping and one-off deliverables ordinarily stay outside it unless the work develops an
underlying system or reusable method. The AI reuses and updates one concise doc proportionately. You can also ask directly:

- "Start a Feynman doc for this project."
- "We settled that; put it in the doc."
- "Is the doc up to date? Walk through it top down."
- "Merge these two write-ups into one doc."

One durable shared doc supports three modes:

- **Prepare/update:** The AI writes a coherent, grounded explanation you can read on your own, with no live session required.
- **Discuss:** You lead the Q&A as you read. The AI answers directly and folds useful clarifications into the doc within the
  requested maintenance scope, without quizzes or a prescribed sequence.
- **Tutor:** When you explicitly ask for a guided walkthrough, the AI uses examples and comprehension checks, waits for your
  response before continuing, and adapts to your questions and understanding.

Asynchronous reading and Q&A are the usual path. You do not need to choose a mode label, and ordinary questions do not start
a tutoring session.

Consequential claims are checked against relevant sources, with freshness and implemented versus proposed behavior made
explicit. For research or design choices, the doc also asks what evidence would show the direction is wrong. Document work
does not itself authorize experiments or changes to project behavior.

The AI must never put secrets, credentials, private personal details or confidential values in teaching documents. It uses generic
placeholders or clearly synthetic examples instead of reproducing sensitive source material for completeness. It keeps source
links and labels free of secrets or identifying details, omitting or generalizing references that cannot be made safe.
