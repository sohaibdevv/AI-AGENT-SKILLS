---
name: frontend-engineering
description: Build UIs that are fast, accessible, maintainable, and tested
difficulty: senior
domains: [web]
---

## Overview

Frontend engineering is full-stack engineering from the network edge to the pixel. Performance, accessibility, maintainability, and security are all first-class concerns - not features to add later.

## When to Use

- Before implementing a new UI feature
- Before a frontend component is marked complete
- As part of the `/review` workflow for frontend PRs

## Process

### Step 1: Define the UI states
Every component has states: loading, empty, error, populated, and edge cases. Define and implement all of them before calling it done.

### Step 2: Accessibility first
See `accessibility-engineering` skill. Apply before visual polish.

### Step 3: Performance budget
Define before building:
- Largest Contentful Paint (LCP) target: < 2.5s
- Cumulative Layout Shift (CLS) target: < 0.1
- First Input Delay (FID) / INP target: < 200ms
- Bundle size budget for new routes

Measure with Lighthouse on a representative device.

### Step 4: Component design
- Components are pure functions of their props/state
- No side effects in render
- Extract business logic from UI components
- Co-locate styles with components

### Step 5: State management
Prefer: local state → lifted state → context → global store (in that order). Only reach for global state when local state genuinely doesn't work.

### Step 6: Error boundaries
Wrap sections of the UI in error boundaries. A crash in one section should not take down the whole page.

### Step 7: Testing
- Unit test business logic extracted from components
- Component tests for component behavior (not implementation)
- E2E tests for critical user journeys

### Step 8: Security
- Sanitize all user-generated HTML rendered to the DOM
- No dangerouslySetInnerHTML or equivalent without sanitization
- Content Security Policy headers configured

## Verification Requirements

- [ ] All UI states implemented (loading, empty, error, populated)
- [ ] Accessibility requirements met (see accessibility-engineering)
- [ ] Lighthouse performance score ≥ 90
- [ ] Error boundaries in place
- [ ] Critical journeys covered by E2E tests
- [ ] No XSS vulnerabilities in dynamic HTML rendering
