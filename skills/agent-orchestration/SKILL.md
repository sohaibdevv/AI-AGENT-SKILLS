---
name: agent-orchestration
description: Design multi-agent systems with robust tool interfaces, state management, and failure handling
difficulty: staff
domains: [ai-ml]
---

## Overview

Multi-agent systems fail loudly or silently. Loudly: an agent calls a tool that doesn't exist. Silently: an agent completes with a subtly wrong result and the orchestrator never notices. This skill designs agent systems that are auditable, recoverable, and deterministic about what succeeded and what failed.

## When to Use

- Before designing any system with more than one AI agent
- When building tool interfaces for agents
- When debugging agent behavior that is unpredictable or hard to reproduce
- Before deploying an agent to handle user-facing tasks

## Process

### Step 1: Define the task boundary
Agents work best on well-scoped tasks with clear completion criteria. Avoid: "make the application better." Use: "fix all TypeScript type errors in src/components/." Ambiguous tasks produce ambiguous results.

### Step 2: Design the tool interface first
Tools are the agent's API to the world. Each tool must have:
- A precise, unambiguous name
- A description that tells the agent WHEN to use it (not just what it does)
- Strongly-typed input schema (JSON Schema)
- Well-defined output schema
- Error behavior documented

### Step 3: Implement tool observability
Every tool call must be logged: which tool, what inputs, what outputs, how long it took, did it succeed. This is non-negotiable - you cannot debug an agent you cannot observe.

### Step 4: Design for idempotency
Tools that create or modify state must be idempotent where possible. If an agent retries a tool call (due to failure), the second call must not create duplicate state.

### Step 5: Plan the agent loop
Define: what does the agent do on each step? How does it decide it's done? What is the maximum number of steps? (Always set a maximum - unbounded loops are production incidents.)

### Step 6: Define the handoff protocol
If multiple agents coordinate: define exactly what one agent passes to the next. Use structured data, not natural language, for inter-agent communication. Natural language is lossy.

### Step 7: Design failure handling
For each tool:
- What if the tool returns an error?
- What if the tool times out?
- What if the tool returns unexpected output?

Define: retry strategy, escalation path, graceful degradation. "The agent will figure it out" is not a failure handling strategy.

### Step 8: Implement human-in-the-loop checkpoints
For consequential actions (deleting data, sending emails, making payments): require human approval. Implement a confirmation step before execution.

### Step 9: Evaluate the agent on a test harness
Build a test harness that: replays tasks, verifies outputs, measures success rate, tracks which tools were called and in what order. Run it in CI.

### Step 10: Production safeguards
- Rate limiting on tool calls (prevent runaway loops)
- Cost monitoring (LLM tokens, API calls)
- Audit log of every action taken
- Kill switch to halt agent mid-run
- Output review before surfacing to users

## Anti-Rationalizations

**"The agent is smart enough to handle edge cases"**
The agent has never seen your edge cases. Write tests for them.

**"We don't need a maximum step limit"**
You always need a maximum step limit. Agents enter failure loops. Budget limits save you.

**"Human-in-the-loop slows things down"**
For irreversible actions: slowing down is the feature, not a bug.

## Red Flags

- No audit log of agent actions
- No maximum step limit
- Natural language inter-agent communication
- No test harness for the agent
- Irreversible actions without human approval
- Tool descriptions that describe what a tool does but not when to use it

## Verification Requirements

- [ ] All tools have precise names, typed inputs, and documented error behavior
- [ ] All tool calls are logged
- [ ] Maximum step limit set and enforced
- [ ] Inter-agent communication uses structured data
- [ ] Failure handling defined for each tool
- [ ] Human approval required for irreversible actions
- [ ] Agent evaluated on a test harness with 20+ tasks
- [ ] Production safeguards (rate limiting, kill switch, cost monitoring) in place
