# Skill Anatomy Reference

Every skill in this framework follows the same structure. This document explains each section and how to write a high-quality skill.

## Full Template

```markdown
---
name: kebab-case-name
description: One sentence describing what this skill enables an agent to do (start with a verb)
difficulty: junior | senior | staff
domains: [web, mobile, data, ai-ml, infrastructure, general]
---

## Overview

1-3 sentences: Why this skill exists. What problem it solves. What goes wrong without it.

## When to Use

Specific, observable conditions that should trigger loading this skill. Be precise.
Example: "Before implementing any new feature or significant change" not "When coding"

## Process

### Step 1: [Imperative verb phrase]
Concrete action. What to do, not what to think about.

### Step 2: [Imperative verb phrase]
...

(3–12 steps typical)

## Anti-Rationalizations

Common shortcuts agents attempt and why they're wrong.

**"[Exact rationalization an agent would use]"**
[Short, direct rebuttal - 1-3 sentences]

**"[Another rationalization]"**
[Rebuttal]

## Red Flags

Signs this skill is being misapplied:
- [Observable bad state]
- [Observable bad state]

## Verification Requirements

Checkboxes an agent must complete before marking work done.
These must be observable and specific, not aspirational.

- [ ] [Observable state or output]
- [ ] [Observable state or output]
```

## Writing guidelines

### Steps must be actions
Good: "Write a failing test that captures one behavior"
Bad: "Think about testing"
Bad: "Ensure testing is thorough"

### Anti-rationalizations must quote the rationalization
Good: **"This is too small to need a spec"**
Bad: **"Agents skip specs"**

Quote the exact internal monologue you're countering.

### Verification requirements must be checkable
Good: `[ ] All database queries parameterized (confirmed by grep for string concatenation in query construction)`
Bad: `[ ] Code is secure`

### Length limits
- Skill file: ≤ 500 lines
- Each step: ≤ 5 sentences
- Overview: ≤ 3 sentences

If a skill is growing beyond 500 lines, extract supporting content to a separate reference file.

## Difficulty levels

- **junior** - Any engineer can apply this without domain expertise
- **senior** - Requires understanding of engineering trade-offs
- **staff** - Requires system-level thinking and knowledge of failure modes at scale

## Domains

Assign all that apply:
- `general` - Applies to any software project
- `web` - Web applications (browser-side)
- `mobile` - iOS/Android
- `data` - Data pipelines, ETL, analytics
- `ai-ml` - Machine learning, LLMs, AI systems
- `infrastructure` - Cloud infrastructure, IaC, operations
