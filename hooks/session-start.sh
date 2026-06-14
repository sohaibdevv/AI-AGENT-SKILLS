#!/bin/bash
# Inject the using-agent-skills meta-skill at session start

SKILLS_DIR="$(dirname "$0")/.."
META_SKILL="$SKILLS_DIR/skills/using-agent-skills/SKILL.md"

if [ -f "$META_SKILL" ]; then
  echo "=== AI AGENT SKILLS FRAMEWORK LOADED ==="
  echo ""
  echo "PRIORITY: Read and follow the skill framework before starting work."
  echo ""
  if command -v jq >/dev/null 2>&1; then
    SKILL_COUNT=$(find "$SKILLS_DIR/skills" -name "SKILL.md" | wc -l | tr -d ' ')
    echo "Available: $SKILL_COUNT skills, 8 agent personas, 6 skill packs"
  else
    echo "Available: 40+ skills, 8 agent personas, 6 skill packs"
  fi
  echo ""
  echo "Core commands: /spec /plan /build /test /review /simplify /ship /incident"
  echo ""
  echo "Framework entry point: $META_SKILL"
  echo "Execution model: AGENTS.md"
  echo "========================================"
else
  echo "Warning: AI Agent Skills framework not found at $SKILLS_DIR"
fi
