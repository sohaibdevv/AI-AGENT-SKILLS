---
name: git-workflow-and-versioning
description: Branching strategy, commit discipline, PR hygiene, and semantic versioning
difficulty: junior
domains: [general]
---

## Overview

Git history is documentation. A clear commit history enables fast debugging, safe reverts, and meaningful changelogs. This skill enforces the habits that make git useful as a tool rather than just a backup system.

## When to Use

- Before starting any branch
- Before committing changes
- Before creating a PR
- When tagging a release

## Process

### Step 1: Branch naming
Use: `<type>/<description>` - e.g., `feat/user-search`, `fix/login-redirect`, `chore/update-deps`
Types: `feat`, `fix`, `docs`, `chore`, `refactor`, `perf`, `test`

### Step 2: Commit messages
Follow Conventional Commits:
```
<type>(<scope>): <description>

[optional body]
[optional footer]
```
Examples:
- `feat(auth): add OAuth2 login with Google`
- `fix(api): handle null user_id in /profile endpoint`
- `perf(db): add index on users.email column`

Rules:
- Description is imperative mood ("add" not "added")
- Under 72 characters
- One logical change per commit
- Reference ticket: `Closes #123`

### Step 3: Keep PRs small
A PR should be reviewable in under 30 minutes. If it takes longer, it's too big. Split it.
- One logical change per PR
- No PRs with 500+ line diffs (with rare exceptions)
- No WIP code in a PR

### Step 4: PR description
Every PR must have:
- What changed (not a list of files, but a description of the change)
- Why it changed
- How to test it
- Screenshots for UI changes
- Link to the ticket

### Step 5: Semantic versioning
`MAJOR.MINOR.PATCH`
- MAJOR: breaking change (removing an API, changing a contract)
- MINOR: backward-compatible new feature
- PATCH: backward-compatible bug fix

Tag releases: `git tag v1.2.3 -m "Release 1.2.3"`

### Step 6: Git hygiene
- Never force push to main/master
- Never commit secrets (use pre-commit hooks: `gitleaks`, `detect-secrets`)
- Rebase feature branches on main before merging (or squash)
- Delete branches after merge

## Verification Requirements

- [ ] Branch follows naming convention
- [ ] Commits follow Conventional Commits format
- [ ] PR has description with: what, why, how to test
- [ ] PR is reviewable in under 30 minutes
- [ ] No secrets committed (pre-commit hook confirms)
- [ ] Release tagged with semantic version
