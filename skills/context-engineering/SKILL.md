---
name: context-engineering
description: Manage what goes into the AI agent context window for maximum quality and minimum waste
difficulty: senior
domains: [ai-ml]
---

## Overview

Context is finite. What you put in the context window determines what the agent can reason about. Too much noise → the relevant signal is diluted. Too little context → the agent makes uninformed decisions. This skill manages context deliberately.

## When to Use

- When an agent produces low-quality outputs despite correct instructions
- When designing a system prompt for a production agent
- When a long conversation is causing quality degradation
- When context costs are higher than expected

## Process

### Step 1: Define the context budget
For your model and use case: how many tokens is your budget? Reserve: 20% for the system prompt, 20% for the output, 60% for the dynamic context (documents, history, tools).

### Step 2: Prioritize context by relevance
Include in this order:
1. Task instructions (always)
2. The most relevant documents or code (retrieved, not full codebase)
3. Relevant conversation history (not all history)
4. Supporting context (schemas, type definitions)

Cut: long documents that contain 1 relevant paragraph, full file contents when only a function is needed, conversation history beyond the last N relevant turns.

### Step 3: Structure context for retrieval
Agents pay more attention to the beginning and end of context. Put instructions at the top. Put the most relevant context closest to the task.

### Step 4: Use explicit context delimiters
Mark different sections clearly:
```
<system>Your role and constraints</system>
<documents>Retrieved content</documents>
<task>What to do</task>
```

This prevents the model from confusing instructions with retrieved data.

### Step 5: Compress context aggressively
Summarize long histories. Extract the relevant portions of long documents. Use structured data (JSON, tables) instead of prose where possible.

### Step 6: Monitor context quality
Track: output quality vs. context length. If longer context is producing worse results, you have a context quality problem, not a context quantity problem.

## Verification Requirements

- [ ] Context budget defined
- [ ] Context prioritized: instructions → relevant docs → history
- [ ] Long content compressed or chunked
- [ ] Context sections delimited clearly
- [ ] Output quality monitored relative to context composition
