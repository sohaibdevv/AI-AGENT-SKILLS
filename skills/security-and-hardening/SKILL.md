---
name: security-and-hardening
description: Apply security controls, threat modeling, and hardening to code and infrastructure
difficulty: senior
domains: [general]
---

## Overview

Security is not a feature you add — it is a property you maintain. Most security failures are not sophisticated attacks; they are missing input validation, exposed secrets, misconfigured permissions, and unpatched dependencies. This skill systematically eliminates these before they reach production.

## When to Use

- Before merging any PR that touches auth, data storage, user input, or external APIs
- When adding a new endpoint, form, or data type
- When setting up or modifying infrastructure
- As part of the `/review` workflow

## Process

### Step 1: Threat model the change
Ask: what can an attacker do with this change? What data does it touch? What systems does it connect to? Who has access? Threat model in 10 minutes with STRIDE:
- **S**poofing — Can someone impersonate a legitimate user?
- **T**ampering — Can someone modify data they shouldn't?
- **R**epudiation — Can someone deny they took an action?
- **I**nformation Disclosure — Can someone read data they shouldn't?
- **D**enial of Service — Can someone block legitimate access?
- **E**levation of Privilege — Can someone gain permissions they shouldn't have?

### Step 2: Input validation
- Validate all inputs at the boundary (before processing or storage)
- Validate type, length, format, and range
- Reject invalid inputs — don't sanitize and continue
- Parameterize all database queries (no string concatenation)
- Encode all outputs for their context (HTML, SQL, shell, JSON)

### Step 3: Authentication and authorization
- Verify authentication on every request (don't cache auth state across requests)
- Check authorization on every resource access (not just at the route level)
- Use principle of least privilege: request only the permissions you need
- Implement rate limiting on auth endpoints
- Ensure session tokens are invalidated on logout

### Step 4: Secrets management
- No secrets in code, commits, or logs
- Use environment variables or a secrets manager
- Rotate secrets after any exposure (assume exposure if committed to git)
- Verify: `git log --all -p | grep -i "password\|secret\|token\|key"` — if anything shows, rotate immediately

### Step 5: Dependency audit
- Run `npm audit`, `pip-audit`, or equivalent
- Address all high/critical CVEs before merging
- Pin dependency versions; use lock files
- Review new dependencies before adding them

### Step 6: Data handling
- Encrypt sensitive data at rest and in transit
- Never log PII, passwords, tokens, or credit card numbers
- Apply data minimization: only collect what you need
- Implement proper deletion (GDPR right-to-erasure)
- Separate authentication tokens from data queries in logs

### Step 7: Error handling
- Never expose stack traces or internal details to users
- Log errors server-side with context; return generic messages to clients
- Don't reveal whether a user exists on login failure ("Invalid credentials" not "User not found")

### Step 8: Headers and transport
- Set security headers: CSP, HSTS, X-Frame-Options, X-Content-Type-Options
- TLS everywhere; no HTTP
- No sensitive data in URLs or query parameters

## Anti-Rationalizations

**"This is an internal API — we don't need auth"**
Internal APIs are reached by internal attackers and misconfigured external clients. Every API needs auth.

**"We'll add security hardening after launch"**
Security retrofitted onto an insecure design is more expensive and less effective than security built in from the start.

**"The secret is only in the git history, not the current code"**
Git history is accessible to everyone who can clone the repo. Rotate the secret now.

## Verification Requirements

- [ ] STRIDE threat model completed for the change
- [ ] All user inputs validated at the boundary
- [ ] All database queries parameterized
- [ ] No secrets in code or commit history
- [ ] Authorization checked on every resource access
- [ ] Dependency audit passed (no high/critical CVEs)
- [ ] No PII in logs
- [ ] Security headers configured
- [ ] Error messages don't expose internals
