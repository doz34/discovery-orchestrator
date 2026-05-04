# Example Session: Deep Mode Discovery — AI Code Review Assistant

> **Mode**: Deep | **Domain**: ai-projects | **Date**: 2025-12-10
> **Duration**: ~55 minutes | **Route**: Full (P1 through P9, all 9 experts)

---

## Phase 0: Orientation

**User input**: "I want to build an AI code review assistant. Something that actually helps developers, not just adds noise."

**Detected signals**:
- Domain: `ai-projects` (keywords: AI, code review, assistant)
- Complexity: `Deep` (ambiguous scope, multiple stakeholder types, strategic implications)
- Key tension: "actually helps" implies prior negative experience with tooling

**Orchestrator**: "I'm detecting this as an AI project with strategic depth — there are a lot of angles to unpack (who it's for, what 'help' means, how it fits into existing workflows). I'd like to run a full deep discovery across 9 expert perspectives. Sound right, or would you prefer something lighter?"

**User**: "Deep works. I've been thinking about this for months but keep going in circles."

---

## Phase 1: Concrete Case

**Orchestrator**: "Tell me about the last time you personally reviewed code and thought, 'there has to be a better way.'"

**User**: "Last Thursday. We had a 2,000-line PR from a senior engineer. It touched auth logic, database migrations, and a new API endpoint — all in one PR. I spent 90 minutes on it and still wasn't confident I caught everything. I approved it because I trusted the author, not because I actually verified the logic."

**Key concrete details captured**:
- Context: reviewing a large, mixed-concern PR
- Actor: tech lead / senior reviewer
- Behavior: approval based on trust, not verification
- Emotion: "wasn't confident" — doubt, liability anxiety

---

## Phase 2: Friction & Cost Mapping

**Orchestrator**: "What happened after that approval? Did anything slip through?"

**User**: "Yeah, actually. The migration had a subtle ordering issue — it worked in staging because the data was clean, but production had orphaned records. Caused a 3-hour incident the next morning. The fix was trivial, but the detection wasn't."

**Friction signals**:
| Type | Signal | Evidence Level |
|------|--------|---------------|
| Workaround | Approving based on author trust rather than review | 5 (documented behavior) |
| Cost | 3-hour production incident from missed issue | 5 (measured) |
| Avoidance | Reviewer stopped short on complex sections | 2 (self-reported) |
| Friction | 90 minutes spent without confidence in outcome | 2 (self-reported) |

**Orchestrator**: "You mentioned you've been thinking about this for months. What have you tried so far?"

**User**: "We evaluated SonarQube, CodeRabbit, and we even tried running GPT-4 on diffs manually. The linters catch style issues. The AI tools either hallucinate or state the obvious. Nothing helps with the hard part — reasoning about business logic correctness across interacting changes."

---

## Phase 3-6: Expert Analysis (Parallel, 3 waves of 3)

### Wave 1: Needfinding, Psychologist, Facilitator

**Needfinding** identified 4 pain signals:
- Type 2 (Workaround): Manual diff reading for logic that spans files
- Type 3 (Cost): ~6 hours/week spent on reviews with low confidence outcome
- Type 4 (Avoidance): Team skips reviewing migration logic — "not worth the hassle"
- Type 1 (Friction): Reviewers context-switch between files to trace call chains

**Psychologist** identified 2 cognitive biases:
- **Automation bias risk**: Reviewers may over-trust AI output and reduce own scrutiny
- **Anchoring**: First impression of PR (author reputation, PR size) anchors review depth
- **Assumption flagged**: User assumes AI can reason about business logic — this is unvalidated and high-risk

**Facilitator** noted: Participant shows high engagement on incident narrative — energy peak. Slight trough when discussing prior AI tool attempts (resignation language: "nothing helps"). Recommend: anchor future questions in specific review sessions, not abstract tool desires.

### Wave 2: JTBD Analyst, Requirements Analyst, MI Coach

**JTBD Analyst** framed the core job:
> **When** I receive a PR that spans multiple concerns and files, **I want to** understand the business logic implications without manually tracing every call chain, **so I can** approve with genuine confidence rather than author trust.

Forces: Strong push (production incident), strong pull (clear AI opportunity), moderate anxiety (will AI understand context?), strong habit (manual reading feels thorough).

**Requirements Analyst** flagged 3 critical constraints:
- Must integrate with GitHub (team won't adopt a separate tool)
- Must handle multi-file reasoning (single-file analysis already exists)
- Must distinguish "I can't tell" from "this looks correct" (confidence calibration)

**MI Coach** noted motivational ambivalence: User is excited about the vision but resigned about AI tools in general ("nothing helps with the hard part"). Suggests they may undervalue incremental solutions that don't solve everything.

### Wave 3: Product Researcher, Systems Advisor, Decision Analyst

**Product Researcher** generated 5 How-Might-We questions:
- HMW surface cross-file logic dependencies automatically during review?
- HMW help reviewers ask the right questions instead of giving answers?
- HMW make migration safety visible without running the migration?

**Systems Advisor** warned:
- "Business logic reasoning" requires project-specific context (domain models, conventions, error handling patterns). This is the hardest possible NLP problem for code. Consider narrowing to detectable categories first (migration safety, auth boundary changes, API contract violations).
- Dependency on GitHub API means rate-limit and permissions constraints.
- Recommended phasing: start with single high-value detection category, expand.

**Decision Analyst** surfaced a contradiction:
- User says "I want it to actually help" but also "I approved based on trust" — these point in different directions. Is the goal to *supplement* human judgment or *replace* it for certain checks? This changes the entire product direction.

---

## Phase 7: Reframing

**Orchestrator**: "Here's a tension I want to surface. You said AI tools 'state the obvious' — but you also want help with 'the hard part' (business logic reasoning). Those two statements together suggest you might not believe AI can do what you actually need. Is that fair?"

**User**: "...Yeah, honestly. I don't think current AI can truly reason about business logic. But I think it could *point me at the right places to look*. Like, 'these three files interact in ways that matter for auth — pay attention here.'"

**Reframed need**: Not "AI that reviews code" but "AI that directs reviewer attention to high-risk areas within a PR."

---

## Phase 8-9: Synthesis & Handoff

### Discovery Brief

**Project**: AI-Assisted Review Focus (working title)
**Core Job**: When reviewing a large PR, I want to know where to focus my limited attention, so I can catch real issues without spending 90 minutes on every review.

**Key Decisions**:
1. Product = attention director, not autonomous reviewer
2. First detection category: migration + schema change safety
3. GitHub integration required (no separate tool)
4. Confidence must be calibrated ("can't tell" is a valid, useful output)

**Contradictions Flagged**:
- Desire for AI help vs. low trust in AI tools — resolved through reframing (direct attention, not replace judgment)
- "Help with the hard part" vs. practical feasibility — resolved by narrowing scope to detectable risk categories

**Open Questions**:
- How to handle private repo context (training vs. runtime RAG)?
- What's the reviewer UI — inline comment, PR summary, separate dashboard?
- Pricing model if this becomes a product vs. internal tool?

**Assumptions Requiring Validation**:
- Reviewers want directed attention (they may prefer full autonomy)
- Multi-file reasoning is achievable with current models for specific categories
- Team will trust and adopt a new tool in the review workflow

---

### Quality Score: 4.1 / 5.0

| Dimension | Score | Notes |
|-----------|-------|-------|
| Specificity | 4.5 | Strong concrete anchor (Thursday's PR), measurable costs (90 min, 3hr incident) |
| Actionability | 4.0 | Clear first scope (migration safety), but UI and integration details undefined |
| Traceability | 4.0 | Most claims traced to specific user statements; 2 expert inferences clearly flagged |
| Completeness | 4.5 | Full JTBD decomposition, forces analysis, phased delivery plan, open questions documented |
| Coherence | 3.5 | Core tension surfaced and partially resolved; automation bias risk acknowledged but not mitigated |

**Why not higher**: The "business logic reasoning" assumption was challenged but the fallback (attention direction) still depends on multi-file code understanding that remains technically unvalidated. The brief would benefit from a spike or proof-of-concept before commitment.

---

*Discovery artifact saved to `.discovery/2025-12-10-ai-code-review-assistant.md`*
