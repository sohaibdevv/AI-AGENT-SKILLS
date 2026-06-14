# Contributing to AI Agent Skills

Thank you for contributing. This guide explains how to add or improve skills.

## What makes a good skill

A skill must be:

- **Specific** — Actionable steps an agent can execute, not vague principles
- **Verifiable** — Clear exit criteria with measurable evidence
- **Grounded** — Based on real engineering practice that has been proven in production
- **Minimal** — No duplication. Reference other skills instead of copying content
- **Anti-shortcut** — Include documented rebuttals to common rationalizations for skipping the process

## Skill anatomy

```markdown
---
name: skill-name
description: One sentence describing what this skill enables an agent to do
difficulty: junior | senior | staff
domains: [web, mobile, data, ai-ml, infrastructure, general]
---

## Overview

Why this skill exists and what problem it solves.

## When to Use

Specific conditions that should trigger loading this skill.

## Process

### Step 1: [Name]
...

### Step 2: [Name]
...

## Anti-Rationalizations

Common shortcuts agents attempt, and why they're wrong:

**"This is too small to need [step]"**
[Rebuttal]

## Red Flags

Signs this skill is being misapplied:
- ...

## Verification Requirements

Before marking this work complete:
- [ ] ...
- [ ] ...
```

## Adding a new skill

1. Create `skills/<kebab-case-name>/SKILL.md`
2. Follow the anatomy above
3. Add it to the table in `README.md`
4. If it has a command, add it to `AGENTS.md` and `.claude/commands/`
5. Run `bash hooks/session-start-test.sh` to verify hooks still work
6. Open a PR with title: `feat(skill): add <skill-name>`

## Improving existing skills

- For small clarifications: edit in place, explain in the PR description
- For structural changes: discuss in an issue first
- Never make a skill longer without making it more actionable

## Skill packs

Packs are curated bundles in `packs/`. A pack file lists which skills to load and in what order for a given context. To add a pack:

1. Create `packs/<pack-name>.md`
2. Add it to the packs table in `README.md`

## Agent personas

Personas live in `agents/`. A persona is a specialist agent configuration (system prompt style instructions) for focused review work. To add a persona:

1. Create `agents/<role>.md`
2. Give it: Role definition, Evaluation dimensions, Output format, Example invocation

## Pull request checklist

- [ ] Skill follows the anatomy template
- [ ] Added to README.md table
- [ ] No content duplicated from other skills (reference instead)
- [ ] Includes Anti-Rationalizations section
- [ ] Includes measurable Verification Requirements
- [ ] `bash hooks/session-start-test.sh` passes

## Code of Conduct

Be kind. Focus on engineering merit. All contributors welcome.
