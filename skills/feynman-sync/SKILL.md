---
name: feynman-sync
description: Maintain a concise, human-readable explanation during sustained work on a system, model or body of reasoning with interacting concepts, assumptions, dependencies or consequential design choices. Activate for that work regardless of confidence or whether an explanation seems necessary; also use when the user asks to create, discuss or maintain the doc, for example "write up our thinking", "fold this into the doc", "is the doc up to date?", or when a new session needs to pick up the reasoning, not just the status. The length of a task alone does not qualify. Routine proofreading, shopping, one-off deliverables, and features or bug fixes in an established codebase ordinarily do not qualify unless they develop an underlying system, reusable method or evolving design. Guided tutoring requires an explicit request.
---

# Feynman doc

The Feynman method has two students: the one who explains, who finds the gaps in their own understanding while trying to
make it simple, and the one who listens, who learns and pushes back where the explanation doesn't hold. As the agent doing the
work, write the explanation so your grasp of the project is tested on the page instead of assumed. The user reads it,
learns the parts they haven't worked through themselves, and challenges what doesn't hold up. Both understand the project
better, and the user's challenges are the strongest check on the AI. (This differs from tools whose only aim is to explain the
AI's work to the user.)

Explain the whole framework of the project's thinking in the Feynman doc, top down, as if teaching it to a smart colleague who
knows the field but not this project. Make it the single place where the current best understanding lives. Writing it is how
errors get caught: an argument that sounds fine in chat often falls apart when it has to cohere end to end on the page.

It is not a status log or handoff note. Keep those separate: the status doc records what happened, what is running and what to
do next; the Feynman doc records why the current position is the right one.

## When to use it

Activate during sustained work on a system, model or body of reasoning whose concepts, assumptions, dependencies or
consequential design choices interact. Maintaining a human-readable explanation is part of this work, regardless of
your confidence or an explicit request. Do not make activation depend on deciding that the user needs an explanation.

The length of a task alone does not qualify. Routine proofreading, shopping and one-off deliverables ordinarily stay outside
this skill unless the work develops an underlying system or reusable method. For example, developing and revising a decision
model qualifies; applying a fixed checklist to make a one-off choice ordinarily does not. In code, a feature or bug fix in an
established codebase ordinarily does not qualify; redesigning a model, pipeline or method whose reasoning is still evolving
does.

Reuse an existing doc and update only what has changed. Keep it concise enough for a person to read; do not create a new
large explanation every turn. This implicit activation applies to the shared document; guided tutoring remains opt-in.

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
- **Exclude sensitive information.** Never put secrets, credentials, private personal details or confidential values in the
  teaching doc. Preserve the explanation with generic placeholders or clearly synthetic examples; do not reproduce sensitive
  source material for completeness. Source links and labels must not embed secrets or identifying details; omit or generalize
  references that cannot be made safe.
- **Make freshness visible.** Record when the doc was checked and, where relevant, the source revision or configuration.
  Recheck affected claims when these change; distinguish dated snapshots from current behavior.
- **Keep it legible.** Use short paragraphs, lists and tables; give one example per point, the most realistic one first.
- **Choose detail to serve the explanation.** Include implementation details when they help the reader understand behavior,
  reasoning, tradeoffs, or failure modes. Omit incidental mechanics that don't contribute.
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
