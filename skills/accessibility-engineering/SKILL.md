---
name: accessibility-engineering
description: Build UIs that work for all users including keyboard navigation, screen readers, and WCAG 2.2
difficulty: senior
domains: [web, mobile]
---

## Overview

Accessibility is not a checklist — it is a commitment to not excluding users. 1 in 4 adults has some form of disability. Inaccessible software is defective software. This skill bakes accessibility in during development, not as a retrofit.

## When to Use

- Before implementing any UI component
- Before any UI is marked complete
- As part of the `/review` workflow for frontend changes

## Process

### Step 1: Semantic HTML first
Use the right HTML elements before reaching for ARIA:
- Buttons for actions (`<button>`), links for navigation (`<a href>`)
- Headings for document structure (`<h1>`–`<h6>` in correct order)
- Lists for lists (`<ul>`, `<ol>`)
- Form labels associated with inputs (`<label for>`)
- Landmark regions (`<nav>`, `<main>`, `<header>`, `<footer>`, `<aside>`)

ARIA only when native semantics are insufficient.

### Step 2: Keyboard navigation
Every interactive element must be:
- Reachable by Tab
- Activatable by Enter/Space
- Part of a logical tab order
- Visually focused (`:focus-visible` style)
- Not trapped in a dead end (modals must trap focus; must release on close)

Test: complete the key user journeys using only the keyboard.

### Step 3: Screen reader testing
Test with at least one screen reader:
- VoiceOver (macOS/iOS) + Safari
- NVDA or JAWS (Windows) + Chrome
- TalkBack (Android)

Verify: can a screen reader user complete the same tasks as a sighted user?

### Step 4: Color and contrast
- Text contrast ratio: ≥ 4.5:1 for normal text, ≥ 3:1 for large text (WCAG AA)
- Do not convey information by color alone (use icons, patterns, text)
- Test in grayscale mode

### Step 5: Dynamic content
- Announce dynamic updates with `aria-live` regions
- Focus management after navigation (move focus to new content)
- Loading states must be communicated to screen readers
- Errors must be associated with their form fields

### Step 6: Images and media
- All meaningful images have descriptive `alt` text
- Decorative images have `alt=""`
- Videos have captions and transcripts
- Audio content has transcripts

### Step 7: Motion and animation
- Respect `prefers-reduced-motion`
- No flashing content above 3Hz (seizure risk)
- Animation should not distract or interfere with content

### Step 8: Automated testing
Run axe-core, Lighthouse, or WAVE on every page. Automate in CI. These catch ~30–40% of accessibility issues.

## Verification Requirements

- [ ] Semantic HTML used (not `<div>` for everything)
- [ ] All user journeys completable by keyboard only
- [ ] Tested with a screen reader
- [ ] Color contrast ratios meet WCAG AA
- [ ] Dynamic updates announced
- [ ] All images have appropriate alt text
- [ ] Reduced motion respected
- [ ] Automated accessibility tests pass in CI
