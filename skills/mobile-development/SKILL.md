---
name: mobile-development
description: Build iOS/Android apps that are performant, offline-capable, accessible, and battery-efficient
difficulty: senior
domains: [mobile]
---

## Overview

Mobile apps have unique constraints: unreliable networks, limited battery, strict platform guidelines, and app store review. This skill applies mobile-specific engineering discipline.

## When to Use

- Before implementing a new mobile feature
- When an app is slow, crashes, or drains battery
- Before submitting to the app store

## Process

### Step 1: Design for offline-first
Assume the network is unavailable. Design data flows that work offline and sync when connectivity returns. Use optimistic UI updates.

### Step 2: Main thread discipline
- No I/O on the main thread
- No heavy computation on the main thread
- Profile with Instruments (iOS) or Android Profiler for frame drops

Target: 60fps during all user interactions.

### Step 3: Memory management
- No strong reference cycles (iOS: use weak/unowned)
- Instrument for memory leaks before release
- Release large resources when the app backgrounds

### Step 4: Battery efficiency
- Minimize background work
- Batch network requests
- Use push over polling
- Reduce GPS/sensor usage frequency when precision isn't needed

### Step 5: App size
- Analyze app size before each release
- Use on-demand resources for large assets
- Target: < 30MB download for initial install

### Step 6: Crash rate
- Integrate crash reporting from day one (Crashlytics, Sentry)
- Fix crashes before shipping new features
- Target: < 0.1% crash-free sessions

### Step 7: Accessibility
- Dynamic Type support (iOS) / font scaling (Android)
- VoiceOver (iOS) / TalkBack (Android) tested
- Touch targets ≥ 44pt × 44pt
- Color contrast meets WCAG AA

### Step 8: App store compliance
- Review App Store / Play Store guidelines for relevant categories before implementing
- Test on oldest supported OS version
- Implement required privacy labels/permissions honestly

## Verification Requirements

- [ ] Offline state handled gracefully
- [ ] No I/O or heavy computation on main thread
- [ ] Profiled: 60fps during interactions
- [ ] Crash reporting integrated
- [ ] Accessibility tested with platform screen reader
- [ ] App size within budget
- [ ] Tested on oldest supported OS version
