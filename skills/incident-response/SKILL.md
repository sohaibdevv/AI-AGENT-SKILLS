---
name: incident-response
description: Structured incident response: detect, communicate, mitigate, resolve, and prevent recurrence
difficulty: senior
domains: [general]
---

## Overview

Incidents are inevitable. How you respond determines whether they are learning opportunities or recurring nightmares. This skill gives you a structured process from first alert to prevention of recurrence.

## When to Use

- When an alert fires indicating user impact
- When a deployment causes degraded service
- When you discover a data issue in production
- After any unplanned outage, even brief

## Process

### Phase 1: DETECT (0–5 minutes)

**Step 1: Acknowledge the alert**
Acknowledge in your alerting system within 5 minutes. This signals you're on it and stops duplicate escalations.

**Step 2: Assess severity**
- **P0** - Complete service outage, data loss, security breach. Page everyone.
- **P1** - Significant degradation affecting many users. Page the team.
- **P2** - Partial degradation, workaround exists. Handle during business hours.
- **P3** - Minor issue, users unaffected or workaround obvious. Normal ticket.

**Step 3: Declare the incident and open a channel**
For P0/P1: open an incident channel (#incident-YYYY-MM-DD-brief-description). All communication goes there. Appoint an Incident Commander (IC).

### Phase 2: COMMUNICATE (5–15 minutes)

**Step 4: Post a status update**
Within 15 minutes of detection, post to the status page:
"We are investigating reports of [symptom]. We will provide an update in 30 minutes."
Do not wait until you have a fix. Users need to know you know.

**Step 5: Brief stakeholders**
Notify: on-call manager, customer-facing teams, affected customers (for P0/P1). Use the incident channel as the single source of truth.

### Phase 3: MITIGATE (15 minutes – resolution)

**Step 6: Stop the bleeding first**
Mitigation before diagnosis. Options:
- Roll back the last deployment
- Disable the feature flag
- Scale up capacity
- Redirect traffic away from the failing component

Don't spend time diagnosing the root cause while users are impacted. Mitigate first.

**Step 7: Diagnose**
Once impact is reduced, find the root cause:
- What changed recently? (Deployments, config changes, traffic spikes)
- What do the metrics show? (Error rate, latency, saturation)
- What do the logs show? (First error, error pattern, affected user IDs)
- What do the traces show? (Where in the call chain is the failure?)

**Step 8: Implement the fix**
Implement the minimal fix. This is not the time for refactoring.

### Phase 4: RESOLVE (at mitigation/fix)

**Step 9: Confirm resolution**
Verify: error rate back to baseline, latency back to baseline, no new error types in logs, affected users can complete their tasks.

**Step 10: Update status page**
Post: "The issue has been resolved. Affected users can [action]. We will publish a post-mortem within 48 hours."

### Phase 5: LEARN (within 48 hours)

**Step 11: Write the post-mortem**
Structure:
- **Summary**: what happened, duration, user impact
- **Timeline**: minute-by-minute from first symptom to resolution
- **Root cause**: the underlying cause (not just the immediate trigger)
- **Contributing factors**: what made this worse or harder to detect
- **What went well**: don't only document failures
- **Action items**: specific tasks with owners and due dates

**Step 12: Blameless post-mortem**
Focus on systems and processes, not individuals. "The deployment pipeline allowed a bad config to reach production" not "Alice pushed bad config."

## Anti-Rationalizations

**"We'll communicate once we have a fix"**
Users need to know you know. An hour of silence is worse than an honest "we're investigating."

**"We know the root cause - no need for a post-mortem"**
Post-mortems are not just for finding root causes. They identify contributing factors, test your detection and response, and create shared understanding. Skip them and the same incident recurs.

## Verification Requirements

- [ ] Incident acknowledged within 5 minutes of alert
- [ ] Severity assessed and appropriate people notified
- [ ] Status page updated within 15 minutes
- [ ] Mitigation performed before full diagnosis
- [ ] Resolution confirmed with metrics, not just a fix deployment
- [ ] Post-mortem written within 48 hours
- [ ] Action items have owners and due dates
