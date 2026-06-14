---
name: api-and-interface-design
description: Design APIs that are stable, ergonomic, and evolvable
difficulty: senior
domains: [general]
---

## Overview

APIs are promises. Once published, they are hard to break without breaking callers. This skill designs APIs that are easy to use correctly, hard to use incorrectly, and evolvable without breaking changes.

## When to Use

- Before designing a new API endpoint, SDK, or library interface
- Before publishing an API to external consumers
- When an existing API is causing confusion or misuse

## Process

### Step 1: Design the API for the caller, not the implementation
Your internal data model should not dictate your API shape. Design for the use case: what does the caller need to do? What information do they have? What do they want back?

### Step 2: Consistency over cleverness
Naming, parameter order, error formats, and response shapes should be consistent across the entire API. Consistency is worth more than local elegance.

### Step 3: Make the happy path obvious
A caller should be able to guess how to use the API without reading the documentation for the common cases. Reserve documentation for edge cases.

### Step 4: Make errors informative
Every error must tell the caller: what went wrong, which field caused it (for validation errors), what they can do to fix it. "Bad request" is not an error message.

### Step 5: Version from day one
Build versioning into the API from the first version: `/v1/users`, not `/users`. Retrofitting versioning is painful.

### Step 6: Design for evolution
- Additive changes are backward compatible (add fields, add endpoints)
- Destructive changes break callers (remove fields, rename fields, change types)
- Use deprecation periods before removing anything
- Make optional fields optional, not required

### Step 7: Define the contract
Document: authentication method, rate limits, request/response schema, error codes, pagination pattern, time formats, ID formats.

### Step 8: Respect Hyrum's Law
"With a sufficient number of users of an API, it does not matter what you promise in the contract: all observable behaviors of your system will be depended on by somebody." Design carefully; change carefully.

## Verification Requirements

- [ ] API designed from the caller's perspective (not the data model's)
- [ ] Naming and patterns are consistent with the rest of the API
- [ ] Errors include: what, which field, how to fix
- [ ] Versioning included
- [ ] Contract documented: schema, errors, rate limits
- [ ] Backward compatibility considered for every change
