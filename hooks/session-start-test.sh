#!/bin/bash
# Test the session-start hook

echo "Testing session-start hook..."

# Test 1: Hook runs without error
bash "$(dirname "$0")/session-start.sh" > /tmp/hook-output.txt 2>&1
if [ $? -eq 0 ]; then
  echo "✓ Hook exits successfully"
else
  echo "✗ Hook failed with exit code $?"
  cat /tmp/hook-output.txt
  exit 1
fi

# Test 2: Output contains expected content
if grep -q "AI AGENT SKILLS" /tmp/hook-output.txt; then
  echo "✓ Hook output contains framework header"
else
  echo "✗ Hook output missing framework header"
  cat /tmp/hook-output.txt
  exit 1
fi

# Test 3: Works without jq
PATH_WITHOUT_JQ=$(echo $PATH | tr ':' '\n' | grep -v "$(which jq | xargs dirname)" | tr '\n' ':')
PATH="$PATH_WITHOUT_JQ" bash "$(dirname "$0")/session-start.sh" > /tmp/hook-output-nojq.txt 2>&1
if [ $? -eq 0 ]; then
  echo "✓ Hook works without jq"
else
  echo "✗ Hook failed without jq"
  cat /tmp/hook-output-nojq.txt
  exit 1
fi

# Test 4: All SKILL.md files are valid markdown (have frontmatter)
SKILLS_DIR="$(dirname "$0")/../skills"
MISSING_FRONTMATTER=0
for skill in "$SKILLS_DIR"/*/SKILL.md; do
  if ! head -1 "$skill" | grep -q "^---$"; then
    echo "✗ Missing frontmatter: $skill"
    MISSING_FRONTMATTER=1
  fi
done
if [ $MISSING_FRONTMATTER -eq 0 ]; then
  echo "✓ All skill files have frontmatter"
fi

echo ""
echo "All tests passed."
