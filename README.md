<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0f0c29,50:302b63,100:24243e&height=220&section=header&text=AI%20AGENT%20SKILLS&fontSize=65&fontColor=ffffff&animation=twinkling&fontAlignY=38&desc=The%20most%20complete%20skill%20framework%20for%20AI%20coding%20agents&descAlignY=60&descColor=a0aec0&descSize=18" width="100%" />

<br/>

[![Typing SVG](https://readme-typing-svg.demolab.com?font=Fira+Code&weight=600&size=24&pause=1200&color=7C3AED&center=true&vCenter=true&multiline=false&width=700&height=50&lines=40%2B+skills.+8+platforms.+Zero+shortcuts.;Turn+your+AI+agent+into+a+senior+engineer.;AI%2FML+%E2%80%A2+Data+%E2%80%A2+Frontend+%E2%80%A2+Backend+%E2%80%A2+DevOps;Write+specs+first.+Test+everything.+Ship+safely.)](https://git.io/typing-svg)

<br/>

<a href="LICENSE"><img src="https://img.shields.io/badge/License-MIT-f59e0b?style=for-the-badge&logo=opensourceinitiative&logoColor=white" /></a>
<a href="skills/"><img src="https://img.shields.io/badge/Skills-40%2B-7c3aed?style=for-the-badge&logo=bookstack&logoColor=white" /></a>
<a href="agents/"><img src="https://img.shields.io/badge/Agent_Personas-8-06b6d4?style=for-the-badge&logo=robot&logoColor=white" /></a>
<a href="packs/"><img src="https://img.shields.io/badge/Skill_Packs-6-10b981?style=for-the-badge&logo=layers&logoColor=white" /></a>
<a href="docs/"><img src="https://img.shields.io/badge/Platforms-8-ef4444?style=for-the-badge&logo=buffer&logoColor=white" /></a>
<a href="https://github.com/sohaibdevv/AI-AGENT-SKILLS/stargazers"><img src="https://img.shields.io/github/stars/sohaibdevv/AI-AGENT-SKILLS?style=for-the-badge&logo=starship&color=fbbf24&logoColor=white" /></a>
<a href="CONTRIBUTING.md"><img src="https://img.shields.io/badge/PRs-Welcome-22c55e?style=for-the-badge&logo=github&logoColor=white" /></a>

<br/><br/>

</div>

---

<div align="center">

## The Problem

</div>

AI coding agents are powerful. They can write code faster than any human.

But left to their own judgment, they also:

- Skip writing specs because "the task is obvious"
- Skip tests because "I'll add them later"
- Deploy without a rollback plan because "it's a small change"
- Ship ML models without safety evaluation because "the numbers look good"
- Build data pipelines without quality gates because "the source is reliable"
- Ignore accessibility because "we'll fix that before launch"

**The result is fast code that fails slowly.**

AI Agent Skills solves this by giving agents the same disciplined workflows senior engineers use — with explicit steps, anti-shortcut enforcement, and evidence-based verification gates that cannot be bypassed.

---

<div align="center">

## What Is This?

</div>

**AI Agent Skills** is a framework of 40+ structured workflow files — called skills — that AI coding agents load before doing work.

Each skill encodes how a senior engineer approaches a specific task: not just what to do, but **in what order**, **what to verify at each step**, **what shortcuts to refuse**, and **what evidence to produce** before calling the work done.

```
Without skills:   Agent writes code → maybe tests → ships
With skills:      Agent reads spec → writes tests → implements → verifies → ships with rollback plan
```

The framework covers every phase of software development — and uniquely extends into **AI/ML engineering**, **data pipelines**, **agent orchestration**, **mobile development**, and **incident response** — domains that no other skill framework addresses.

---

<div align="center">

## ⚡ 60-Second Setup

</div>

```bash
# Step 1: Clone into your project
git clone https://github.com/sohaibdevv/AI-AGENT-SKILLS.git .agent-skills

# Step 2: Tell your agent about it
echo "Read and follow: .agent-skills/AGENTS.md" >> CLAUDE.md

# Step 3: Use commands in any session
# /spec   → Write a spec before writing code
# /plan   → Break work into atomic tasks
# /build  → Implement in vertical slices
# /test   → Evidence-based testing
# /review → 5-dimensional code review
# /simplify → Remove complexity safely
# /ship   → Deploy with rollback plan
# /incident → Structured incident response
```

> **Other platforms:** [Claude Code](docs/claude-setup.md) · [Cursor](docs/cursor-setup.md) · [Gemini CLI](docs/gemini-setup.md) · [GitHub Copilot](docs/copilot-setup.md) · [Windsurf](docs/windsurf-setup.md) · [Kiro](docs/kiro-setup.md) · [OpenCode](docs/opencode-setup.md) · [Any Agent](docs/generic-setup.md)

---

<div align="center">

## 🏗️ Framework Architecture

</div>

```
AI-AGENT-SKILLS/
│
├── AGENTS.md                    ← Core execution model (read this first)
│
├── skills/                      ← 37 skill modules
│   ├── [define]   idea-refine, spec-driven-development, requirements-analysis
│   ├── [plan]     planning-and-task-breakdown, architecture-design, risk-assessment
│   ├── [build]    incremental-implementation, test-driven-development, api-and-interface-design
│   │              frontend-engineering, backend-engineering, database-design
│   │              ai-ml-engineering, data-pipeline-engineering, mobile-development
│   │              infrastructure-as-code, microservices-design, prompt-engineering
│   │              rag-system-design, agent-orchestration, context-engineering
│   │              source-driven-development, doubt-driven-development
│   ├── [verify]   code-review-and-quality, security-and-hardening, performance-optimization
│   │              accessibility-engineering, observability-and-monitoring
│   │              debugging-and-error-recovery, llm-evaluation
│   ├── [ship]     git-workflow-and-versioning, ci-cd-and-automation, deployment-strategy
│   │              incident-response, documentation-and-adrs
│   └── [meta]     using-agent-skills, code-simplification, doubt-driven-development
│
├── agents/                      ← 8 specialist personas
│   ├── code-reviewer.md         ← Staff engineer, 5-dimension review
│   ├── security-auditor.md      ← STRIDE + OWASP
│   ├── test-engineer.md         ← Coverage quality + test design
│   ├── performance-engineer.md  ← Profile-first optimization
│   ├── ml-engineer.md           ← Model training + safety
│   ├── data-engineer.md         ← Pipelines + quality + lineage
│   ├── devops-engineer.md       ← IaC + CI/CD + reliability
│   └── tech-writer.md           ← READMEs + ADRs + API docs
│
├── packs/                       ← 6 curated domain bundles
│   ├── ai-ml-pack.md
│   ├── data-engineering-pack.md
│   ├── fullstack-pack.md
│   ├── frontend-pack.md
│   ├── startup-pack.md
│   └── enterprise-pack.md
│
├── references/                  ← Quick-reference checklists
│   ├── security-checklist.md
│   ├── ai-safety-checklist.md
│   ├── performance-checklist.md
│   ├── accessibility-checklist.md
│   └── testing-patterns.md
│
├── .claude/commands/            ← Slash commands for Claude Code
└── docs/                        ← Platform setup guides
```

---

<div align="center">

## 🎯 The 8 Core Commands

</div>

<details open>
<summary><strong>Click to expand command reference</strong></summary>

<br/>

| Command | Phase | Skill Loaded | What It Enforces |
|:--|:--|:--|:--|
| `/spec` | Define | spec-driven-development | Spec written before any code |
| `/plan` | Plan | planning-and-task-breakdown | Atomic tasks, critical path, 20% buffer |
| `/build` | Build | incremental-implementation | Vertical slices, walking skeleton first |
| `/test` | Verify | test-driven-development | Failing test before implementation |
| `/review` | Review | code-reviewer agent | Correctness · Security · Performance · Readability · Architecture |
| `/simplify` | Review | code-simplification | Chesterton's Fence before every removal |
| `/ship` | Ship | deployment-strategy | Rollback procedure written before deploy starts |
| `/incident` | Respond | incident-response | Mitigate first · Diagnose second · Post-mortem required |

</details>

---

<div align="center">

## 📚 Complete Skill Library

</div>

<details>
<summary><h3>🎯 Define Phase — 3 Skills</h3></summary>

<br/>

### [idea-refine](skills/idea-refine/SKILL.md)
Sharpens a vague idea into a buildable, scoped proposal before writing a spec or a line of code.

**Key steps:** State the problem (not the solution) → Identify who has the problem → Measure the pain → List 3 candidate solutions → Score and select → Define out-of-scope → Define the success metric

**Anti-rationalization it prevents:**
> *"We know what we want to build — let's just build it"*

---

### [spec-driven-development](skills/spec-driven-development/SKILL.md)
Forces a written specification before any implementation code. A spec reveals ambiguities that would otherwise become bugs.

**Key steps:** Capture raw requirement → Stakeholders and success criteria → Functional requirements → Non-functional requirements → Data model → Interface contract → Open questions → Get sign-off

**Anti-rationalization it prevents:**
> *"This feature is obvious — I don't need to write it down"*

---

### [requirements-analysis](skills/requirements-analysis/SKILL.md)
Converts stakeholder requests into verified, unambiguous, testable requirements. Identifies conflicts and gaps before they become expensive bugs.

**Key steps:** Collect all sources → Categorize (functional/non-functional/constraints/assumptions) → Eliminate ambiguity → Resolve conflicts → Validate completeness → MoSCoW prioritization → Traceability matrix

**Anti-rationalization it prevents:**
> *"We can figure out edge cases as we go"*

</details>

<details>
<summary><h3>📋 Plan Phase — 3 Skills</h3></summary>

<br/>

### [planning-and-task-breakdown](skills/planning-and-task-breakdown/SKILL.md)
Decomposes work into atomic, independently verifiable tasks. Prevents the "everything at once" trap that leads to big-bang, unshippable branches.

**Key steps:** Vertical slices → `[Verb] [Object] [Constraint]` format → 2-day rule → Define done → Map dependencies → Identify critical path → Add 20% buffer → Sequence risky tasks first

**Anti-rationalization it prevents:**
> *"These tasks are too small to track"*

---

### [architecture-design](skills/architecture-design/SKILL.md)
Makes decisions that are hard to reverse — explicit, documented, and traceable to requirements. Every decision has an ADR.

**Key steps:** Establish constraints → Rank quality attributes → Define component boundaries → Map data flow → Choose sync vs async → Design for failure → Write ADRs → Map to requirements

**Anti-rationalization it prevents:**
> *"Microservices are more scalable"* · *"We don't need an ADR for this"*

---

### [risk-assessment](skills/risk-assessment/SKILL.md)
Makes technical and delivery risk explicit before it becomes an incident. Includes a pre-mortem to surface unknown unknowns.

**Key steps:** List all risks → Score (likelihood × impact) → Classify (known/known, known/unknown, unknown/unknown) → Design mitigations → Run a pre-mortem → Define go/no-go criteria

</details>

<details>
<summary><h3>🔨 Build Phase — 16 Skills</h3></summary>

<br/>

### [incremental-implementation](skills/incremental-implementation/SKILL.md)
Ships working vertical slices instead of big-bang implementations. Every commit leaves the system deployable.

---

### [test-driven-development](skills/test-driven-development/SKILL.md)
Write tests before code. TDD is not about testing — it's about design. The test suite is proof of correctness, not evidence of effort.

---

### [api-and-interface-design](skills/api-and-interface-design/SKILL.md)
APIs are promises. Design them for the caller, not the implementation. Version from day one. Respect Hyrum's Law.

---

### [frontend-engineering](skills/frontend-engineering/SKILL.md)
Build UIs that implement all states (loading, empty, error, populated), are accessible, perform within budget, and have error boundaries.

---

### [backend-engineering](skills/backend-engineering/SKILL.md)
Design services with explicit contracts, failure handling on all outbound calls, input validation at the boundary, and graceful shutdown.

---

### [database-design](skills/database-design/SKILL.md)
Design schemas for the queries, not just the data. Backward-compatible migrations. Indexes verified with EXPLAIN. Migrations tested at production scale.

---

### ⭐ [ai-ml-engineering](skills/ai-ml-engineering/SKILL.md)
The most comprehensive ML engineering skill in any framework. Covers the full lifecycle with safety baked in.

**What makes it unique:** Data leakage detection · Reproducible training pipelines · Evaluation harness built *before* training · Safety evaluation (prompt injection, jailbreak, hallucination) · Staged rollout with distribution shift monitoring

**Anti-rationalization it prevents:**
> *"The eval numbers look good"* · *"We'll add safety checks after launch"*

---

### ⭐ [data-pipeline-engineering](skills/data-pipeline-engineering/SKILL.md)
Data pipelines fail silently. This skill adds quality gates, data contracts, lineage tracking, and idempotency to every pipeline.

**What makes it unique:** Contract validation at ingestion · Quality gates before writes · Dead letter queue for bad data · Lineage for GDPR compliance · Late-arriving data strategy

**Anti-rationalization it prevents:**
> *"The source is reliable — we don't need contract validation"*

---

### ⭐ [mobile-development](skills/mobile-development/SKILL.md)
Mobile-specific constraints: offline-first design, main thread discipline, battery efficiency, crash rate targets, app store compliance.

---

### ⭐ [infrastructure-as-code](skills/infrastructure-as-code/SKILL.md)
All infrastructure is version-controlled code with the same discipline as application code: plan review, blast radius analysis, staged apply, drift detection.

**Anti-rationalization it prevents:**
> *"It's a small change — I'll do it in the console"*

---

### ⭐ [microservices-design](skills/microservices-design/SKILL.md)
Justifies the split before making it. Service boundaries by business capability. Async-first communication. No shared databases.

---

### ⭐ [prompt-engineering](skills/prompt-engineering/SKILL.md)
Prompts are code. Version them. Test them. Validate their output format. Run regression tests in CI. Test for prompt injection.

**Anti-rationalization it prevents:**
> *"Prompt engineering is just natural language — I don't need to test it"*

---

### ⭐ [rag-system-design](skills/rag-system-design/SKILL.md)
Build RAG systems with rigorous evaluation at every layer: retrieval accuracy, faithfulness, answer relevance, and production staleness monitoring.

**Key metrics:** Recall@5 > 0.80 before moving to generation · Faithfulness scoring · Context relevance evaluation

---

### ⭐ [agent-orchestration](skills/agent-orchestration/SKILL.md)
Multi-agent systems need typed tool interfaces, audit logs, maximum step limits, structured inter-agent communication, and human approval for irreversible actions.

**Anti-rationalization it prevents:**
> *"The agent is smart enough to handle edge cases"* · *"We don't need a maximum step limit"*

---

### [context-engineering](skills/context-engineering/SKILL.md)
Manage the context window deliberately: budget, priority order, compression, and quality monitoring.

---

### [source-driven-development](skills/source-driven-development/SKILL.md)
Every non-obvious implementation decision must be traceable to an authoritative source (RFC, official docs, spec). No assumptions without sources.

</details>

<details>
<summary><h3>🔍 Verify Phase — 7 Skills</h3></summary>

<br/>

### [code-review-and-quality](skills/code-review-and-quality/SKILL.md)
Staff-engineer-level review across five dimensions: Correctness · Security · Performance · Readability · Architecture.

Blocking criteria: security vulnerabilities, correctness failures in the happy path, missing tests for new behavior.

---

### [security-and-hardening](skills/security-and-hardening/SKILL.md)
STRIDE threat modeling · Input validation · Auth/authz · Secrets management · Dependency audit · Data protection · Security headers.

**Key rule:** No secrets in code, commits, or logs. Verify with `git log --all -p | grep -i "secret\|password\|token\|key"` — if anything shows, rotate immediately.

---

### [performance-optimization](skills/performance-optimization/SKILL.md)
Profile before optimizing. Optimize the bottleneck. Measure the improvement. Verify correctness. Document why the code looks unusual.

**Anti-rationalization it prevents:**
> *"I know this is slow — I don't need to profile"*

---

### [accessibility-engineering](skills/accessibility-engineering/SKILL.md)
WCAG 2.2 AA compliance: semantic HTML, keyboard navigation, screen reader testing, color contrast, dynamic content announcements, motion preferences.

1 in 4 adults has a disability. Inaccessible software is defective software.

---

### [observability-and-monitoring](skills/observability-and-monitoring/SKILL.md)
Structured logging · Four golden signals · Distributed tracing · SLIs and SLOs · Alerting on symptoms (not causes) · Runbooks for every alert.

---

### [debugging-and-error-recovery](skills/debugging-and-error-recovery/SKILL.md)
Reproduce reliably → form a hypothesis → isolate the smallest reproduction → test the hypothesis → fix the root cause → write a regression test.

**Anti-rationalization it prevents:**
> *"I'll try changing this and see if it works"*

---

### ⭐ [llm-evaluation](skills/llm-evaluation/SKILL.md)
Systematically evaluate LLM outputs across correctness, relevance, groundedness, safety, format, and latency. Prevent regressions in CI.

**Key rule:** 100+ example evaluation dataset · LLM-as-judge calibrated against humans · Adversarial eval (injection, jailbreak, hallucination) · Blocking threshold in CI

</details>

<details>
<summary><h3>🚀 Ship Phase — 5 Skills</h3></summary>

<br/>

### [git-workflow-and-versioning](skills/git-workflow-and-versioning/SKILL.md)
Conventional commits · PRs reviewable in under 30 minutes · Semantic versioning · No secrets committed (pre-commit hooks enforced).

---

### [ci-cd-and-automation](skills/ci-cd-and-automation/SKILL.md)
Pipeline stages with time budgets · Required gates (tests, security, linting) · Branch protection · Flaky test rate < 1% · Full pipeline under 15 minutes.

---

### [deployment-strategy](skills/deployment-strategy/SKILL.md)
Write the rollback procedure before deploying. Staged rollout (1% → 10% → 50% → 100%). Bake time at each stage. Backward-compatible database migrations. Automated success criteria.

**Anti-rationalization it prevents:**
> *"It's a small change — we can deploy to 100%"*

---

### ⭐ [incident-response](skills/incident-response/SKILL.md)
Five-phase structured response: Detect → Communicate → Mitigate → Resolve → Learn. Blameless post-mortems required. Status page updated within 15 minutes of detection.

**Key rule:** Mitigate before you diagnose. Rollback first, investigate second.

---

### [documentation-and-adrs](skills/documentation-and-adrs/SKILL.md)
Documentation that stays accurate: audience-first, why not what, close to the code. ADRs for decisions that are hard to reverse.

</details>

<details>
<summary><h3>⚙️ Meta Skills — 3 Skills</h3></summary>

<br/>

### [using-agent-skills](skills/using-agent-skills/SKILL.md)
The entry point. Load at session start to discover and compose all other skills.

---

### [code-simplification](skills/code-simplification/SKILL.md)
Applies Chesterton's Fence: understand why every piece exists before removing it. Targets: dead code, premature abstraction, unnecessary indirection, magic numbers, duplicate logic.

---

### [doubt-driven-development](skills/doubt-driven-development/SKILL.md)
Lists all implicit assumptions, classifies them by cost-if-wrong, and verifies high-cost assumptions before shipping.

</details>

---

<div align="center">

## 🤖 Agent Personas

</div>

Specialist agents for focused review work. Load one to get dedicated expertise on a specific dimension.

<details>
<summary><strong>View all 8 personas</strong></summary>

<br/>

### [Code Reviewer](agents/code-reviewer.md) — Staff Engineer
Reviews PRs across five dimensions: Correctness, Security, Performance, Readability, Architecture. Produces severity-ranked findings (Blocking / Major / Minor / Nit) with specific, actionable suggestions.

```
Load agents/code-reviewer.md and review the changes in src/auth/
```

---

### [Security Auditor](agents/security-auditor.md) — Security Engineer
STRIDE threat modeling, OWASP top 10, supply chain risk. Produces findings with attack scenarios and remediation steps. Critical findings block the PR.

```
Load agents/security-auditor.md and audit the payment processing changes
```

---

### [Test Engineer](agents/test-engineer.md) — QA Specialist
Reviews test coverage quality across strategy, completeness, design, and maintainability. Flags missing tests, brittle tests, and tests that give false confidence.

```
Load agents/test-engineer.md and review test coverage for src/payments/
```

---

### [Performance Engineer](agents/performance-engineer.md) — Performance Specialist
Profile-first analysis across latency, throughput, memory, database, and frontend. Produces quantified findings: current numbers, root cause, expected improvement.

```
Load agents/performance-engineer.md and profile the /api/search endpoint
```

---

### ⭐ [ML Engineer](agents/ml-engineer.md) — Machine Learning Specialist
Reviews ML systems across data quality, modeling rigor, evaluation harness, safety/fairness, and production readiness. Flags silent failure modes before they reach users.

```
Load agents/ml-engineer.md and review the recommendation model training pipeline
```

---

### ⭐ [Data Engineer](agents/data-engineer.md) — Data Infrastructure Specialist
Reviews pipelines across data contracts, reliability, quality, lineage, and performance. Evaluates downstream impact of every finding.

```
Load agents/data-engineer.md and review the user events ingestion pipeline
```

---

### ⭐ [DevOps Engineer](agents/devops-engineer.md) — Infrastructure & Reliability Specialist
Reviews infrastructure changes across IaC quality, CI/CD design, reliability patterns, security controls, and observability completeness.

```
Load agents/devops-engineer.md and review the Kubernetes deployment configuration
```

---

### ⭐ [Tech Writer](agents/tech-writer.md) — Documentation Specialist
Reviews documentation for audience clarity, structure, accuracy, and maintainability. Catches docs that are wrong, missing, or that nobody will actually read.

```
Load agents/tech-writer.md and review the authentication API documentation
```

> ⭐ = New personas not available in any other agent skills framework

</details>

---

<div align="center">

## 📦 Skill Packs

</div>

Skill packs are curated bundles for specific contexts. Instead of figuring out which skills to load, pick the pack that matches your work.

<details>
<summary><strong>View all 6 packs</strong></summary>

<br/>

### 🤖 [AI/ML Pack](packs/ai-ml-pack.md)
For LLM-powered features, ML training pipelines, RAG systems, and AI agents.

**Includes:** ai-ml-engineering · prompt-engineering · rag-system-design · agent-orchestration · llm-evaluation · security-and-hardening · deployment-strategy

**Key personas:** ML Engineer · Security Auditor

---

### 🗄️ [Data Engineering Pack](packs/data-engineering-pack.md)
For ETL/ELT pipelines, data warehouses, and data-driven systems.

**Includes:** data-pipeline-engineering · database-design · test-driven-development · observability-and-monitoring · security-and-hardening

**Key personas:** Data Engineer · Security Auditor

---

### 🌐 [Full-Stack Pack](packs/fullstack-pack.md)
For end-to-end feature development across database, API, and UI.

**Includes:** All 8 phases in order — from idea-refine through deployment-strategy

---

### 🎨 [Frontend Pack](packs/frontend-pack.md)
For web UIs, component libraries, and design systems.

**Includes:** frontend-engineering · accessibility-engineering · performance-optimization · security-and-hardening (XSS) · test-driven-development

---

### 🚀 [Startup Pack](packs/startup-pack.md)
Move fast without breaking production. The minimum viable engineering discipline.

**Includes:** spec-driven-development · incremental-implementation · security-and-hardening · deployment-strategy · observability-and-monitoring

**Non-negotiables even at early stage:** Auth. Input validation. No secrets in code. Rollback plan. Error alerting.

---

### 🏢 [Enterprise Pack](packs/enterprise-pack.md)
For teams with compliance requirements, audit trails, and formal change management.

**Includes:** All skills with formal gates — requirements traceability, ADRs for all decisions, two-approval PRs, change records for deployments, blameless post-mortems for incidents.

</details>

---

<div align="center">

## 📐 Reference Checklists

</div>

Copy these into your PR templates or review workflows.

| Checklist | What it covers |
|:--|:--|
| [Security Checklist](references/security-checklist.md) | Input validation · Auth/authz · Secrets · Data protection · Dependencies · Headers |
| [AI/LLM Safety Checklist](references/ai-safety-checklist.md) | Prompt injection · Output safety · Data privacy · Reliability · Agent safeguards |
| [Performance Checklist](references/performance-checklist.md) | Database · Application · Network · Frontend Core Web Vitals |
| [Accessibility Checklist](references/accessibility-checklist.md) | WCAG 2.2 AA · Semantic HTML · Keyboard · Screen reader · Color · Motion |
| [Testing Patterns](references/testing-patterns.md) | Testing pyramid · Unit/Integration/E2E patterns · Mocks vs fakes · Contract testing |

---

<div align="center">

## 🧠 The Philosophy

</div>

### Three commitments every skill makes

**1. Process over prose**
Skills are executable workflows with checkpoints — not reference material you read once and forget. Every skill tells you exactly what to do at each step.

**2. Anti-rationalization built in**
Every skill documents the exact excuses agents (and humans) use to skip steps — and rebuts them directly. For example:

> **"This is too small to need a spec"**
> If it's obvious, the spec takes 10 minutes. If it's not obvious, the spec saves days. Either way: write it.

> **"We'll add monitoring after we know what to monitor"**
> By the time you know what to monitor, you've already had the incident that taught you.

> **"The agent is smart enough to handle edge cases"**
> The agent has never seen your edge cases. Write tests for them.

**3. Evidence over confidence**
"I think it works" is not a verification. Every skill's Verification Requirements section specifies the **evidence** required — logs, test output, metrics, reviewer sign-off — before work can be marked complete. Subjective approval is not acceptable.

---

### Engineering principles encoded in the framework

The framework embeds hard-won engineering knowledge including:

- **Hyrum's Law** — all observable behaviors of a system will be depended on by somebody; design and change carefully
- **Chesterton's Fence** — understand why something exists before removing it
- **Beyoncé Rule** — if you liked it, you should have put a test on it
- **The Beyoncé Corollary** — if a test doesn't fail when the behavior breaks, it provides no value
- **Walking Skeleton** — get end-to-end working first; flesh it out incrementally
- **Vertical Slices** — ship thin, complete features rather than horizontal layers
- **Blameless Post-Mortems** — systems fail, not people; fix the system

---

<div align="center">

## 🏗️ How Skills Work

</div>

Every skill follows the same structure:

```markdown
---
name: skill-name
description: One sentence describing what this skill enables
difficulty: junior | senior | staff
domains: [web, mobile, data, ai-ml, infrastructure, general]
---

## Overview
Why this skill exists. What goes wrong without it.

## When to Use
Specific, observable trigger conditions.

## Process
### Step 1: [Imperative action]
### Step 2: [Imperative action]
...

## Anti-Rationalizations
**"[Exact shortcut rationalization]"**
[Direct rebuttal — why this reasoning is wrong]

## Red Flags
Signs this skill is being misapplied.

## Verification Requirements
- [ ] Observable, measurable evidence of completion
- [ ] Not: "code looks good" — yes: "all queries parameterized (grep confirms)"
```

**Difficulty levels:**
- `junior` — Any engineer can apply without domain expertise
- `senior` — Requires understanding of engineering trade-offs
- `staff` — Requires system-level thinking and knowledge of failure modes at scale

---

<div align="center">

## 🌍 Platform Support

</div>

<div align="center">

| Platform | Setup | Notes |
|:--|:--|:--|
| 🤖 **Claude Code** | [Setup Guide](docs/claude-setup.md) | Full slash commands + hooks auto-load |
| 🖱️ **Cursor** | [Setup Guide](docs/cursor-setup.md) | Via `.cursorrules` |
| 🔷 **Gemini CLI** | [Setup Guide](docs/gemini-setup.md) | TOML or markdown format |
| 🐙 **GitHub Copilot** | [Setup Guide](docs/copilot-setup.md) | Via `.github/copilot-instructions.md` |
| 🌊 **Windsurf** | [Setup Guide](docs/windsurf-setup.md) | Via `.windsurf/rules.md` |
| ⚡ **Kiro** | [Setup Guide](docs/kiro-setup.md) | Via project instructions |
| 💻 **OpenCode** | [Setup Guide](docs/opencode-setup.md) | Symlink-based integration |
| 🔧 **Any Agent** | [Setup Guide](docs/generic-setup.md) | System prompt injection |

</div>

---

<div align="center">

## 🛠️ Session Hooks

</div>

Auto-load the framework at the start of every Claude Code session:

```bash
# Copy hooks config to your project
cp .agent-skills/hooks/hooks.json .claude/hooks.json
```

On every new session, the agent will see:

```
=== AI AGENT SKILLS FRAMEWORK LOADED ===

PRIORITY: Read and follow the skill framework before starting work.

Available: 37 skills, 8 agent personas, 6 skill packs

Core commands: /spec /plan /build /test /review /simplify /ship /incident

Framework entry point: .agent-skills/skills/using-agent-skills/SKILL.md
========================================
```

---

<div align="center">

## ✅ Always Active Rules

</div>

These rules apply in every session, regardless of which skill is loaded:

| Rule | Why |
|:--|:--|
| Spec before code | Unspecced features solve the wrong problem correctly |
| Tests before merging | "I'll add tests later" never happens |
| Security is not optional | Every auth/data/input change needs a security pass |
| Rollback before deploy | If you can't write the rollback, you're not ready to deploy |
| Evidence over confidence | "I think it works" is not a verification |
| Smallest safe change | Make it smaller and ship it sooner |

---

<div align="center">

## 🤝 Contributing

</div>

Skills must be:

- **Specific** — Actionable steps an agent can execute, not vague principles
- **Verifiable** — Clear exit criteria with measurable evidence
- **Grounded** — Based on real production engineering practice
- **Minimal** — No duplication; reference other skills instead
- **Anti-shortcut** — Include documented rebuttals to common rationalizations

**How to contribute:**

1. Create `skills/<name>/SKILL.md` using the [skill anatomy template](docs/skill-anatomy.md)
2. Add to the table in README.md
3. Run `bash hooks/session-start-test.sh` (must pass)
4. Open a PR with title: `feat(skill): add <skill-name>`

Looking for contribution ideas? Check the [open issues](https://github.com/sohaibdevv/AI-AGENT-SKILLS/issues) — issues labeled `good first issue` are the best starting point.

See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guidelines.

---

<div align="center">

## 📊 Repository Stats

</div>

<div align="center">

![GitHub commit activity](https://img.shields.io/github/commit-activity/m/sohaibdevv/AI-AGENT-SKILLS?style=for-the-badge&color=7c3aed)
![GitHub last commit](https://img.shields.io/github/last-commit/sohaibdevv/AI-AGENT-SKILLS?style=for-the-badge&color=06b6d4)
![GitHub repo size](https://img.shields.io/github/repo-size/sohaibdevv/AI-AGENT-SKILLS?style=for-the-badge&color=10b981)
![GitHub issues](https://img.shields.io/github/issues/sohaibdevv/AI-AGENT-SKILLS?style=for-the-badge&color=f59e0b)

</div>

---

<div align="center">

## ⭐ Support This Project

</div>

<div align="center">

If AI Agent Skills helped you ship better software, **give it a star** — it helps the project reach more engineers who need it.

[![Star this repo](https://img.shields.io/badge/⭐_Star_This_Repo-7c3aed?style=for-the-badge&logo=starship&logoColor=white)](https://github.com/sohaibdevv/AI-AGENT-SKILLS)

Share it with your team. Share it with anyone who uses AI coding tools. The more engineers who use disciplined AI workflows, the better software gets shipped.

</div>

---

<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0f0c29,50:302b63,100:24243e&height=120&section=footer" width="100%" />

**Built by [sohaib](https://github.com/sohaibdevv) · MIT License · Made to make AI agents as disciplined as your best engineers**

</div>
