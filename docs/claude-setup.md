# Claude Code Setup

## Option 1: Marketplace (Recommended)

1. Open Claude Code
2. Run `/mcp` and search for "AI Agent Skills"
3. Click Install

## Option 2: Manual Installation

### Per-project installation

```bash
# From your project root
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills

# Add to your CLAUDE.md
echo "" >> CLAUDE.md
echo "## Agent Skills" >> CLAUDE.md
echo "Read and follow: .agent-skills/AGENTS.md" >> CLAUDE.md
```

### Global installation

```bash
# Clone to your home directory
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git ~/agent-skills

# Add to ~/.claude/CLAUDE.md (create if it doesn't exist)
echo "Read and follow: ~/agent-skills/AGENTS.md" >> ~/.claude/CLAUDE.md
```

## Using Slash Commands

After installation, these commands are available:

```
/spec    - Write a specification before writing code
/plan    - Break work into tasks
/build   - Implement incrementally
/test    - Write or review tests
/review  - Code review across 5 dimensions
/simplify - Remove complexity
/ship    - Prepare for deployment
/incident - Incident response
```

## Using Hooks (Auto-load on session start)

Copy the hooks configuration to your project:

```bash
cp .agent-skills/hooks/hooks.json .claude/hooks.json
```

This automatically loads the framework at the start of every Claude Code session.

## Updating

```bash
cd .agent-skills && git pull
```
