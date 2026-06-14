# Gemini CLI Setup

## Installation

```bash
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills
```

## Configuration

Create `.gemini/system-prompt.md` (or append to existing):

```markdown
## Agent Skills Framework

You operate with the AI Agent Skills framework. Before starting work, read and follow: .agent-skills/AGENTS.md

When the user invokes a command, load the corresponding skill:
- /spec  → .agent-skills/skills/spec-driven-development/SKILL.md
- /plan  → .agent-skills/skills/planning-and-task-breakdown/SKILL.md
- /build → .agent-skills/skills/incremental-implementation/SKILL.md
- /test  → .agent-skills/skills/test-driven-development/SKILL.md
- /review → .agent-skills/agents/code-reviewer.md
- /ship  → .agent-skills/skills/deployment-strategy/SKILL.md
```

## TOML format (alternative)

Create `.gemini/skills.toml`:

```toml
[agent_skills]
framework = ".agent-skills/AGENTS.md"

[commands]
spec = ".agent-skills/.claude/commands/spec.md"
plan = ".agent-skills/.claude/commands/plan.md"
build = ".agent-skills/.claude/commands/build.md"
test = ".agent-skills/.claude/commands/test.md"
review = ".agent-skills/.claude/commands/review.md"
ship = ".agent-skills/.claude/commands/ship.md"
```
