---
name: using-agent-skills
description: Discover and compose skills from this framework to guide your work
difficulty: junior
domains: [general]
---

## Overview

This meta-skill teaches you how to use the AI Agent Skills framework. Load it first in any new session.

## When to Use

Load this skill at the start of every session when working in a project that has this framework installed.

## Process

### Step 1: Identify your task type
Map what you're about to do to one of the 8 core commands:
- Defining/scoping → `/spec`
- Planning/decomposing → `/plan`
- Implementing → `/build`
- Testing/verifying → `/test`
- Reviewing code → `/review`
- Simplifying code → `/simplify`
- Deploying → `/ship`
- Responding to incidents → `/incident`

### Step 2: Load the primary skill
Read the skill file for your task: `skills/<name>/SKILL.md`

### Step 3: Identify supporting skills
Check `AGENTS.md` for the skill composition table. Load supporting skills if they apply.

### Step 4: Check for a relevant pack
If working in a specific domain (AI/ML, data, frontend), load the matching pack from `packs/`.

### Step 5: Execute with verification gates
Follow each step in the skill. Do not skip steps. At each checkpoint, produce evidence.

## Anti-Rationalizations

**"The task is simple enough that I don't need a skill"**
Simple tasks still benefit from structured thinking. The overhead of loading a skill is seconds; the cost of a missed step can be days.

**"I already know how to do this"**
Skills encode accumulated engineering wisdom beyond what any individual knows. They also prevent bad days from becoming bad commits.

## Verification Requirements

- [ ] Identified the correct primary skill for the current task
- [ ] Loaded all relevant supporting skills
- [ ] Have clear verification requirements before starting work
