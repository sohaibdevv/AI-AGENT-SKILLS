---
name: idea-refine
description: Sharpen a vague idea into a buildable, scoped proposal
difficulty: junior
domains: [general]
---

## Overview

Most ideas arrive as fuzzy intuitions. This skill converts them into crisp, buildable proposals with clear scope, constraints, and success criteria — before anyone writes a spec or a line of code.

## When to Use

- Before writing a spec for something you've only talked about
- When a request feels vague or underspecified
- When you're unsure if you're solving the right problem
- Before a technical design discussion

## Process

### Step 1: State the problem, not the solution
Write one sentence describing the problem being solved. Not the feature — the problem. Example: "Users can't find past orders because search only covers the last 30 days."

### Step 2: Identify who has the problem
Name the specific user persona or system component affected. Vague problems have vague solutions.

### Step 3: Measure the current pain
Quantify where possible: "affects 20% of active users," "adds 3 minutes to the workflow," "causes 12 support tickets/week." If you can't measure it, question whether it's a real problem.

### Step 4: List candidate solutions
Write 3 different ways to solve the problem at different points on the effort/impact curve. This prevents anchoring on the first idea.

### Step 5: Score and select
For each solution: estimate effort (S/M/L), impact (low/medium/high), and risk (low/medium/high). Select the option with the best ratio for the current context.

### Step 6: Define the out-of-scope boundary
Explicitly state what this proposal does NOT include. Scope creep starts here if you don't.

### Step 7: State the success metric
One measurable outcome that proves the problem is solved. Not "users like it" — "search result relevance score improves by 15% on the benchmark dataset."

## Anti-Rationalizations

**"We know what we want to build — let's just build it"**
The thing you want to build is a solution. Before committing to a solution, confirm you've correctly understood the problem.

**"We don't have data on this yet"**
Absence of data is a finding. Document your assumptions and validate them in the first iteration.

## Verification Requirements

- [ ] Problem statement is one sentence and problem-focused (not solution-focused)
- [ ] Affected user or system is named
- [ ] At least 2 candidate solutions were considered
- [ ] Out-of-scope items are explicitly listed
- [ ] Success metric is measurable
