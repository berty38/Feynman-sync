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

- Folds settled conclusions into the doc in the same turn they are settled
- Restructures rather than appends, and re-derives sections instead of copying stale text forward
- Marks claims as measured, argued, or intuition, and flags citations recalled from memory as unverified
- Uses neutral names that don't imply correctness for what are really assumptions
- Keeps it legible: short paragraphs, tables, one realistic example per point, no implementation detail the reader doesn't need
- Keeps one doc, leaving "superseded by" pointers to older ones
- Generates figures from scripts in the project, so the whole doc can be rebuilt
- Walks the argument top down when asked whether the doc is up to date, and fixes what no longer holds

## Install

**Claude Code:** copy the `feynman-sync` folder into `~/.claude/skills/` (all projects) or `.claude/skills/` in a project.

**Claude apps:** upload the packaged `feynman-sync.skill` file, or the folder, where your plan allows custom skills.

## Using it

The agent judges when a project's interacting concepts, decisions or evolving understanding would benefit from a concise
shared explanation, across subjects. It can start the doc without an explicit request, then reuse and update it
proportionately. Small, self-contained tasks such as proofreading an email or paper or fixing a typo do not need a teaching
artifact. You can also ask directly:

- "Start a Feynman doc for this project."
- "We settled that; put it in the doc."
- "Is the doc up to date? Walk through it top down."
- "Merge these two write-ups into one doc."

One durable shared doc supports three modes:

- **Prepare/update:** A coherent, grounded explanation for asynchronous reading, with no live session required.
- **Discuss:** User-led Q&A while reading, with direct answers and useful clarifications folded into the doc within the
  requested maintenance scope. No quizzes or prescribed sequence.
- **Tutor:** An explicitly requested guided walkthrough, using examples and comprehension checks; the AI waits and adapts.

Asynchronous reading and Q&A are the usual path. You do not need to choose a mode label, and ordinary questions do not start
a tutoring session.

Consequential claims are checked against relevant sources, with freshness and implemented versus proposed behavior made
explicit. For research or design choices, the doc also asks what evidence would show the direction is wrong. Document work
does not itself authorize experiments or changes to project behavior.

## Origin

Developed during a long research collaboration on genome rearrangement analysis. Rewriting the doc repeatedly exposed claims
the AI had made confidently in chat that didn't hold up, and the human's challenges to the doc caught the rest.
