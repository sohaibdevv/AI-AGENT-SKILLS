# AI Agent Skills — Claude Instructions

You are contributing to the AI Agent Skills repository. This repo contains skill modules for AI coding agents.

## What this repo is

A collection of structured workflow files (skills) that AI coding agents load to follow senior engineering practices. Skills are markdown files with YAML frontmatter, step-by-step processes, and verification requirements.

## Contribution rules

### Skill files must:
- Live at `skills/<name>/SKILL.md`
- Have YAML frontmatter with `name` and `description`
- Include: Overview, When to Use, Step-by-Step Process, Anti-Rationalizations, Red Flags, Verification Requirements
- Stay under 500 lines; extract supporting content to separate files if needed
- Be specific and actionable, not vague principles
- Include measurable exit criteria

### What to avoid:
- Vague guidance ("make sure it's secure")
- Duplication — reference other skills instead
- Aspirational content that agents can't execute
- Updating multiple skills when one would do

## Testing hooks
```bash
bash hooks/session-start-test.sh
```

## Key files
- `AGENTS.md` — Core execution model all agents must read
- `skills/using-agent-skills/SKILL.md` — Meta-skill for skill discovery
- `docs/skill-anatomy.md` — How to write a skill
