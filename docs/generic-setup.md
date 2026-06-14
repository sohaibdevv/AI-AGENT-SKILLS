# Generic Agent Setup

These instructions work for any AI agent that accepts a system prompt or instructions file.

## System prompt injection

Add to your agent's system prompt:

```
You are an AI coding agent operating with the AI Agent Skills framework.

The framework lives at: .agent-skills/

Before starting work, read: .agent-skills/AGENTS.md

When asked to use a command:
- /spec   → Read .agent-skills/skills/spec-driven-development/SKILL.md and follow it
- /plan   → Read .agent-skills/skills/planning-and-task-breakdown/SKILL.md and follow it
- /build  → Read .agent-skills/skills/incremental-implementation/SKILL.md and follow it
- /test   → Read .agent-skills/skills/test-driven-development/SKILL.md and follow it
- /review → Read .agent-skills/agents/code-reviewer.md and follow it
- /ship   → Read .agent-skills/skills/deployment-strategy/SKILL.md and follow it

Rules:
1. Always follow the Process section in each skill exactly
2. Complete all Verification Requirements before declaring work done
3. When an Anti-Rationalization matches your internal reasoning, treat it as a signal to follow the process more carefully, not to skip it
```

## Per-skill injection

For any individual skill, you can inject just that skill's content into the system prompt without the framework overhead. This is useful for stateless agents or API integrations:

```bash
cat .agent-skills/skills/code-review-and-quality/SKILL.md
```

Paste the output into your system prompt.
