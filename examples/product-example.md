# Example Session: Structured Mode Discovery — SaaS Onboarding Drop-off

> **Mode**: Structured | **Domain**: product-ux | **Date**: 2026-01-18
> **Duration**: ~40 minutes | **Route**: P1-P9 (5 expert agents)

---

## Phase 0: Orientation

**User input**: "Our onboarding has 60% drop-off. We've tried tooltips, a progress bar, and a welcome video. Nothing moves the needle."

**Detected signals**:
- Domain: `product-ux` (keywords: onboarding, drop-off, tooltips, progress bar)
- Complexity: `Structured` (clear metric, real problem, under-explored root cause)
- Key tension: multiple attempted solutions, none effective — suggests problem misdiagnosis

**Orchestrator**: "This looks like a product/UX problem with a clear metric (60% drop-off) but an unclear root cause — you've tried solutions without improvement, which usually means the underlying need isn't what you think it is. I'll run a structured discovery with 5 expert perspectives (needfinding, JTBD, requirements, product research, systems). Does that framing work?"

**User**: "Yes. Honestly I'm not even sure what questions to ask anymore."

---

## Phase 1: Concrete Case

**Orchestrator**: "Walk me through the last time you looked at the drop-off data. What exactly did you see?"

**User**: "We use Mixpanel. Last week I pulled the funnel: 1,200 sign-ups, 480 reach the 'connect your first integration' step, and only 190 complete it. The biggest cliff is between 'created workspace' and 'connect integration' — we lose 45% right there."

**Key details captured**:
- Funnel: sign-up (1,200) -> workspace (480) -> integration (190)
- Largest drop: workspace to integration step (45% loss)
- Attempted fixes: tooltips, progress bar, welcome video (all post-hoc, all failed)

---

## Phase 2: Friction & Cost Mapping

**Orchestrator**: "What happens at the 'connect integration' step? What does the user see?"

**User**: "They see a list of 12 integrations — Slack, GitHub, Jira, Google Drive, etc. They pick one, then they have to OAuth into that service. Some of them take 3-4 clicks. We assumed that was fine."

**Orchestrator**: "Have you talked to any users who dropped off at that step?"

**User**: "We sent a survey. Got 23 responses. Most said 'I didn't have time to set it up' or 'I wasn't sure which one to pick.' But those feel like polite non-answers."

**Friction signals**:
| Type | Signal | Evidence Level |
|------|--------|---------------|
| Friction | 12-option decision at peak vulnerability (just signed up) | 4 (documented in funnel) |
| Workaround | "Didn't have time" — likely "didn't see value in investing time" | 2 (survey self-report) |
| Avoidance | 45% drop between two sequential steps — users abandoning mid-flow | 5 (measured) |
| Cost | 1,020 lost users per cohort with no recovery mechanism | 5 (measured) |

---

## Phase 3-4: Expert Analysis (Parallel, 5 agents)

### Needfinding

**Pain signals detected**:

| Pain Type | Signal | Evidence Level | Quote/Source |
|-----------|--------|---------------|--------------|
| Workaround | Survey responses are polite non-answers — real reason hidden | 2 | "I didn't have time" (x14) |
| Friction | 12-option choice with no guidance on relevance | 4 | Funnel data + product screenshots |
| Avoidance | Users creating workspaces but never connecting | 5 | Mixpanel: 480 create, 265 vanish |
| Cost | 85% of sign-ups never experience core value | 5 | 190/1,200 = 15.8% completion |

**Latent need identified**: Users may not understand *why* connecting an integration matters. The step asks for effort (OAuth) before demonstrating value. The "which one?" choice adds decision paralysis on top of effort.

**Assumption flagged**: Product team assumes integrations are self-evidently valuable. No evidence users understand what happens *after* connecting.

### JTBD Analyst

**Primary Job Statement**:
> **When** I sign up for a new tool, **I want to** see concrete value within 2 minutes, **so I can** decide whether it's worth investing my time setting it up.

**Forces analysis**:
| Force | Description | Strength |
|-------|-------------|----------|
| Push | Current tools don't solve [their problem] well enough | Moderate |
| Pull | Promise of the product (as yet unexperienced) | Weak — value not demonstrated |
| Anxiety | 12 integrations = "I might pick wrong" + OAuth = "what permissions am I granting?" | Strong |
| Habit | Whatever they're using today (spreadsheets, Slack threads, nothing) | Strong |

**Critical insight**: The pull force is weak because value hasn't been demonstrated. The OAuth step is an anxiety amplifier, not a friction issue. Tooltips and progress bars address friction, not anxiety or lack of perceived value. That's why they didn't work.

### Requirements Analyst

**Operational requirements surfaced**:
1. Users must experience core value *before* being asked to connect anything
2. "Which integration?" must be answerable by the product, not the user (recommendation, not catalog)
3. OAuth permission screen must be preceded by clear explanation of what access is needed and why
4. Recovery mechanism needed for users who drop off (email, in-product notification)

**Gap identified**: No requirement currently addresses value demonstration before integration.

### Product Researcher

**Opportunity scoring**:

| Opportunity | Impact | Uncertainty | Quadrant |
|------------|--------|-------------|----------|
| Value-first onboarding (show value before integration) | 5 | 2 | Execute |
| Integration recommendation engine | 4 | 4 | Research |
| Recovery mechanism for drop-offs | 3 | 2 | Execute |
| Redesigned integration selection | 3 | 3 | Research |

**HMW question**: How might we let users experience the product's core value before asking them to connect anything?

**Key hypothesis**: We believe that showing a pre-populated demo workspace will reduce onboarding drop-off by 40%, because users will understand the value before being asked for effort.

### Systems Advisor

**Technical observations**:
- Mixpanel data shows drop-off but not *why* — need session recordings (FullStory/Hotjar) or exit surveys at the specific step
- A/B testing the current fixes against a "value-first" approach would require a new onboarding flow
- Integration recommendation engine could use: referral source (came from Slack ad? recommend Slack), workspace name hints, or a single "quick start" integration that requires zero OAuth

---

## Phase 5: Requirements & Contradictions

**Orchestrator**: "I want to surface something. You said the survey responses felt like 'polite non-answers.' That instinct is worth trusting. When 14 out of 23 people say 'didn't have time,' that usually means 'didn't see enough value to make time.' Has anyone on your team actually watched a new user go through onboarding in real-time?"

**User**: "No. We've only looked at funnel data and survey responses."

**Orchestrator**: "There's also a contradiction in your current approach: you're adding guidance (tooltips, progress bar) to a step that may not need to exist in its current form. The problem might not be 'users need help choosing an integration' — it might be 'users need to see value before we ask them to choose anything.'"

**User**: "That's... a very different framing. We've been optimizing the integration step. We never questioned whether it should be the second step at all."

---

## Phase 6-7: Reframing

**Original framing**: "How do we reduce drop-off at the integration step?"
**Reframed**: "How do we demonstrate core value before asking users for effort?"

**How-Might-We questions**:
- HMW let users experience the product's value with sample/demo data before connecting anything?
- HMW recommend a single "best" integration based on how they found us, instead of showing 12 options?
- HMW make the OAuth step feel like a gain ("connect to unlock X") rather than a cost ("grant permissions")?

---

## Phase 8-9: Synthesis & Handoff

### Discovery Brief

**Problem**: 60% onboarding drop-off, concentrated at the integration connection step.
**Root cause hypothesis**: Users are asked for effort (OAuth) before experiencing value. Decision paralysis (12 options) compounds the issue. Prior fixes addressed friction (UI improvements) but not the underlying value-perception gap.

**Recommended next steps**:
1. **Watch 5 users onboard in real-time** (session recordings or live calls) — validate hypothesis before rebuilding
2. **Design a value-first onboarding variant**: sample data or guided demo before any integration
3. **Test single-integration recommendation** vs. 12-option catalog
4. **Add exit survey at the specific drop-off point** (not email survey days later)

**JTBD to design for**:
> When I try a new tool, I want to see it solve my problem within 2 minutes, so I can decide it's worth setting up properly.

**Open questions**:
- What does "core value" look like without real integrations? (sample data, sandbox mode, guided tour?)
- Can referral source reliably predict best integration?
- What is the acceptable trade-off between onboarding completion rate and integration quality?

**Assumptions requiring validation**:
- Value demonstration will increase integration completion (not just shift the drop-off point)
- Users will engage with sample/demo data as a proxy for real data
- Single recommendation won't reduce perceived product breadth

---

### Quality Score: 4.4 / 5.0

| Dimension | Score | Notes |
|-----------|-------|-------|
| Specificity | 4.5 | Exact funnel numbers, specific drop-off point, 3 prior solutions documented |
| Actionability | 4.5 | 4 concrete next steps, each testable; clear validation criteria (watch 5 users) |
| Traceability | 4.5 | Every claim traced to data (Mixpanel) or user statement; expert inferences flagged as hypotheses |
| Completeness | 4.5 | Full JTBD + forces analysis, latent need identified, systems constraints noted |
| Coherence | 4.0 | Core contradiction surfaced (optimizing wrong step); resolution path proposed but not validated |

**Why not higher**: The root cause (value-before-effort) is a strong hypothesis but remains unvalidated. The brief correctly prescribes observation before design, but the recommended next step is a research activity, not a product change. This is appropriate — the score reflects that the discovery did its job by identifying that more discovery is needed before building.

---

*Discovery artifact saved to `.discovery/2026-01-18-saas-onboarding-dropoff.md`*
