# Getting Started

## What is this?

AI Agent Skills is a framework of 40+ structured workflow files that AI coding agents load to follow senior engineering practices. Instead of hoping your agent applies good engineering judgment, you give it explicit workflows with checkpoints and verification requirements.

## 5-minute setup

```bash
# 1. Clone into your project
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills

# 2. Tell your agent about it (for Claude Code)
echo "Read and follow: .agent-skills/AGENTS.md" >> CLAUDE.md

# 3. Start using commands
# In Claude Code: /spec, /plan, /build, /test, /review, /ship
```

## Your first interaction

After setup, try:

```
/spec Add a password reset feature to the user authentication system
```

The agent will load the spec-driven-development skill and walk through the specification process before writing any code.

## How skills work

1. You invoke a command or ask the agent to load a skill
2. The agent reads the skill file
3. The agent follows the process, including checkpoints
4. The agent cannot mark work complete without meeting verification requirements

## Choose your setup

| Use case | Start with |
|---|---|
| Building an AI/ML feature | [AI/ML Pack](../packs/ai-ml-pack.md) |
| Full-stack feature | [Full-Stack Pack](../packs/fullstack-pack.md) |
| Early-stage startup | [Startup Pack](../packs/startup-pack.md) |
| Enterprise team | [Enterprise Pack](../packs/enterprise-pack.md) |
| Data pipelines | [Data Engineering Pack](../packs/data-engineering-pack.md) |
| Frontend feature | [Frontend Pack](../packs/frontend-pack.md) |

## Platform-specific setup

- [Claude Code](claude-setup.md)
- [Cursor](cursor-setup.md)
- [Gemini CLI](gemini-setup.md)
- [GitHub Copilot](copilot-setup.md)
