# Accessibility Checklist (WCAG 2.2 AA)

Use during UI review. For the full process, see `skills/accessibility-engineering/SKILL.md`.

## Semantic HTML
- [ ] Buttons used for actions, links used for navigation
- [ ] Headings in correct order (h1 → h2 → h3, no skips)
- [ ] Form inputs have associated `<label>` elements
- [ ] Lists use `<ul>`, `<ol>`, `<dl>` (not `<div>` with bullet styling)
- [ ] Tables have `<caption>` and `<th scope>` for headers
- [ ] Landmark regions: `<nav>`, `<main>`, `<header>`, `<footer>`, `<aside>`

## Keyboard Navigation
- [ ] All interactive elements reachable by Tab
- [ ] All interactive elements activatable by Enter/Space
- [ ] Tab order follows visual/logical flow
- [ ] Visible focus indicator (`:focus-visible` styled)
- [ ] No keyboard traps (except modals, which trap until closed)
- [ ] Modal dialogs trap focus; close button accessible by keyboard; focus returns to trigger on close

## Screen Reader
- [ ] Tested with VoiceOver (macOS) or NVDA (Windows)
- [ ] All images have descriptive `alt` text (decorative: `alt=""`)
- [ ] Icon buttons have accessible names (`aria-label` or visually hidden text)
- [ ] Dynamic updates announced (`aria-live` regions)
- [ ] Errors associated with form fields (via `aria-describedby` or `aria-errormessage`)
- [ ] Loading states communicated (spinner has label)

## Color and Visual
- [ ] Text contrast ≥ 4.5:1 (normal text), ≥ 3:1 (large text ≥ 18pt or 14pt bold)
- [ ] UI components and focus indicators: ≥ 3:1 contrast against adjacent colors
- [ ] Information not conveyed by color alone (add icon, pattern, or text)
- [ ] Content readable in Windows High Contrast mode

## Motion
- [ ] `prefers-reduced-motion` media query respected
- [ ] No content flashing > 3 times per second

## Media
- [ ] Videos have captions
- [ ] Videos with meaningful visual content have audio descriptions or transcripts
- [ ] Audio content has transcripts

## Automated
- [ ] axe-core / Lighthouse accessibility audit passes in CI
- [ ] Zero automated violations (not "only minor ones")
