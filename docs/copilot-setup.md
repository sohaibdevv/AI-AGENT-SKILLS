# GitHub Copilot Setup

## Installation

```bash
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills
```

## Configuration

Create `.github/copilot-instructions.md`:

```markdown
## AI Agent Skills Framework

You operate with the AI Agent Skills framework.

Before starting any work, read: .agent-skills/AGENTS.md

When the user asks you to:
- Write a spec: load .agent-skills/skills/spec-driven-development/SKILL.md
- Plan work: load .agent-skills/skills/planning-and-task-breakdown/SKILL.md
- Implement: load .agent-skills/skills/incremental-implementation/SKILL.md
- Write tests: load .agent-skills/skills/test-driven-development/SKILL.md
- Review code: load .agent-skills/agents/code-reviewer.md
- Do a security review: load .agent-skills/agents/security-auditor.md
- Deploy: load .agent-skills/skills/deployment-strategy/SKILL.md

Always follow the verification requirements at the end of each skill before declaring work complete.
```
