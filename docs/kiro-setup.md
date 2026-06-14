# Kiro Setup

## Installation

```bash
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills
```

## Configuration

In your Kiro project configuration, add to the agent instructions:

```markdown
## AI Agent Skills Framework

Load and follow .agent-skills/AGENTS.md at session start.

When work involves:
- New feature: spec-driven-development → planning-and-task-breakdown → incremental-implementation
- Code review: agents/code-reviewer.md
- Security review: agents/security-auditor.md + skills/security-and-hardening/SKILL.md
- Deployment: skills/deployment-strategy/SKILL.md
- AI/ML feature: packs/ai-ml-pack.md

Verification requirements in each skill must be met before marking work complete.
```
