---
name: feynman-sync
description: Make the AI, and the user with it, truly understand the project the AI is working on, by keeping a living, top-down "Feynman method" document in which the AI explains the project's core reasoning in plain language, so an LLM-assisted project doesn't drift, forget settled conclusions, or keep confidently wrong claims. Use whenever a project has an evolving argument or design (research analysis, method design, modeling choices, a long investigation), when the user asks to write up, merge or update "the doc" of our thinking, when a debate in chat reaches a conclusion that should be kept, when the user asks whether the doc is up to date, or when a new session needs to pick up the reasoning, not just the status. Also use it to start such a doc for a new multi-session project, even if the user doesn't name the method.
---

# Feynman doc

The Feynman method has two students: the one who explains, who finds the gaps in their own understanding while trying to
make it simple, and the one who listens, who learns and pushes back where the explanation doesn't hold. Here the AI doing the
work writes the explanation, so its grasp of the project is tested on the page instead of assumed, and the user reads it,
learns the parts they haven't worked through themselves, and challenges what doesn't hold up. Both understand the project
better, and the user's challenges are the strongest check on the AI. (This differs from tools whose only aim is to explain the
AI's work to the user.)

A Feynman doc explains the whole framework of a project's thinking, top down, as if teaching it to a smart colleague who
knows the field but not this project. It is the single place where the current best understanding lives. Writing it is how
errors get caught: an argument that sounds fine in chat often falls apart when it has to cohere end to end on the page.

It is not a status log or handoff note. Keep those separate: the status doc records what happened, what is running and what to
do next; the Feynman doc records why the current position is the right one.

## Why this matters for LLM-assisted work

- Chat rewards plausible next steps; a document that must hold together exposes claims that don't. Expect to find your own
  earlier claims wrong when you rewrite a section, and say so plainly when you do.
- Context gets compacted and sessions get handed off. The reasoning behind decisions is what's lost first.
- Ideas raised in chat and never filed become loose ends both sides forget. A doc with a fixed structure forces each new idea to
  find its slot or change the structure, either of which is noticed.
- It gives the user and the model the same text to argue with, so disagreements stay specific.

## Ways to use the shared doc

Keep one durable shared doc across these modes. Asynchronous reading and user-led Q&A are the usual path. Follow the user's
request without requiring them to choose a mode label.

- **Prepare/update:** Write a coherent, grounded explanation the user can read on their own. No live session is required.
- **Discuss:** Answer the user's questions directly as they read, without quizzes or a prescribed sequence. Incorporate useful
  clarifications into the doc within the requested maintenance scope.
- **Tutor:** Only when the user explicitly asks for a guided walkthrough, explain one short unit with an example, ask for a
  prediction or paraphrase, and wait for their response before continuing. Adapt to their questions and skip familiar material.

Do not turn ordinary questions into tutoring. Document work does not authorize new experiments or changes to project behavior.

## What the doc contains

Shape it to the project, but most good ones have:

1. **The question and the framing**, in a few sentences: what is being decided or understood, and the main layers or parts of
   the argument.
2. **Terms and notation**, defined once, short and legible. Explain only what a capable reader wouldn't know.
3. **The argument, section by section**, top down. For every rule, assumption or design choice: why it is needed, where it
   fails (with concrete examples), and how serious or realistic each failure is.
4. **Evidence**: measurements and experiments that bear on the argument, next to the claims they support or refute.
   Distinguish what is implemented or observed from what is proposed or inferred.
5. **Open questions and next experiments**: every loose end lives here, so nothing is left only in chat. For consequential
   research or design choices, connect the next step to the project's question: what would distinguish competing explanations
   or show the direction is wrong? Use existing evidence first.
6. **Sources**: files, scripts, data, papers.

## How to keep it

- **Fold settled conclusions in during the same turn.** When something is decided in chat, update the doc before moving on,
  within the requested maintenance scope.
- **Restructure, don't append.** When understanding changes, rewrite the affected sections so the doc still reads top down.
  Don't paste stale text forward from older write-ups; re-derive it and check each claim against what is now understood.
- **Mark the status of claims.** Distinguish measured results, arguments, and intuition (for example, realism ratings by
  intuition). Mark citations recalled from memory as unverified until checked. A decision in chat is not proof; keep unresolved
  disagreements and counterevidence visible.
- **Ground consequential claims.** Check the relevant source, implementation/configuration or recorded result, and link it
  near the claim. Match the detail to the consequence; a readable explanation is not itself verification.
- **Make freshness visible.** Record when the doc was checked and, where relevant, the source revision or configuration.
  Recheck affected claims when these change; distinguish dated snapshots from current behavior.
- **Name things neutrally.** Avoid names that imply correctness or completeness for things that are really assumptions
  (prefer a descriptive name over "complete", "correct", "true").
- **Keep it legible.** Short paragraphs, lists and tables over walls of text; no implementation detail unless the reader needs
  it to follow the argument; one example per point, the most realistic one first.
- **Keep a single entry point.** The doc may link to supporting sections. When merging or replacing an older doc, leave a
  one-line "superseded by" pointer instead of deleting it, and point the status doc and project notes at the new one.
- **Make figures rebuildable.** If the doc needs generated figures, keep their scripts in the project and reuse existing tools
  so figures can be rebuilt.
- **Review top down on request** ("is the doc up to date?", before a big decision, after an experiment): walk the argument from the
  start, check each claim against current understanding and data, and fix what no longer holds.

## Format

Use whatever the project already uses: Markdown for text-only reasoning, HTML when figures matter. Keep the file in the
project folder, next to the status doc, and record its location in the status doc and in any project memory, AGENTS.md or CLAUDE.md
notes so future sessions find it.
