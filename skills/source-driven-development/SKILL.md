---
name: source-driven-development
description: Ground implementation in authoritative sources — specs, RFC, official docs — not assumptions
difficulty: senior
domains: [general]
---

## Overview

Assumptions are expensive. This skill requires every non-obvious implementation decision to be traceable to an authoritative source: the spec, the RFC, the official documentation, the ticket. Without a source, it's a guess.

## When to Use

- When implementing a standard or protocol (OAuth, HTTP, JWT, etc.)
- When integrating with a third-party API
- When the implementation relies on undocumented behavior
- When "I think this is how it works" appears in your reasoning

## Process

### Step 1: Identify what you're implementing
What standard, protocol, API, or requirement are you implementing? What is the authoritative source?

### Step 2: Read the source before writing code
For protocols: read the RFC. For APIs: read the official API documentation (not a blog post). For requirements: re-read the spec.

### Step 3: Cite the source in the implementation
For non-obvious behavior: add a comment citing the source. Example:
```python
# Per RFC 7519 Section 4.1.4, exp claim is NumericDate (seconds since epoch)
# https://datatracker.ietf.org/doc/html/rfc7519#section-4.1.4
```

### Step 4: Identify the gaps
What does the source not specify? These are places where you must make explicit decisions. Document them as decisions, not silently.

### Step 5: Validate against the source
After implementation: validate your implementation against the authoritative source. For protocols: test against a reference implementation.

## Verification Requirements

- [ ] Authoritative source identified and read before implementation
- [ ] Non-obvious behavior cites the source
- [ ] Gaps from the source documented as explicit decisions
- [ ] Implementation validated against the source
