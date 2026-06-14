# OpenCode Setup

## Installation

```bash
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills

# Create symlink for OpenCode discovery
ln -s .agent-skills/skills .opencode/skills
```

## Configuration

Create `.opencode/instructions.md`:

```markdown
## AI Agent Skills Framework

Follow .agent-skills/AGENTS.md before starting work.

Use the skills in .opencode/skills/ (symlinked from .agent-skills/skills/) to guide all significant work.
```
