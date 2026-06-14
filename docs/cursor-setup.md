# Cursor Setup

## Installation

```bash
# From your project root
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills
```

## Option 1: Project Rules

Create `.cursorrules` in your project root:

```
You are an AI coding agent using the AI Agent Skills framework.

Before starting any work, read: .agent-skills/AGENTS.md

Core commands available:
- /spec  → Load .agent-skills/skills/spec-driven-development/SKILL.md
- /plan  → Load .agent-skills/skills/planning-and-task-breakdown/SKILL.md
- /build → Load .agent-skills/skills/incremental-implementation/SKILL.md
- /test  → Load .agent-skills/skills/test-driven-development/SKILL.md
- /review → Load .agent-skills/agents/code-reviewer.md
- /ship  → Load .agent-skills/skills/deployment-strategy/SKILL.md
```

## Option 2: Cursor Settings (Global)

In Cursor Settings → Features → Rules for AI, add:

```
Read and follow: ~/agent-skills/AGENTS.md whenever you start a session.
```

## Loading a specific skill

In any Cursor chat:

```
Load .agent-skills/skills/security-and-hardening/SKILL.md and review the auth changes.
```

## Loading a persona

```
Load .agent-skills/agents/security-auditor.md and audit src/payments/
```
