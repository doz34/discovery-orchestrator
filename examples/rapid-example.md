# Example Session: Rapid Mode Discovery — Rust or Go?

> **Mode**: Rapid | **Domain**: personal | **Date**: 2026-03-07
> **Duration**: ~15 minutes | **Route**: P1 -> P3(compact) -> P7 -> P9 (2 expert agents)

---

## Phase 0: Quick Orientation

**User input**: "Should I learn Rust or Go next? I'm a backend Python dev with 4 years experience."

**Detected signals**:
- Domain: `personal` (career decision, "should I" phrasing)
- Complexity: `Rapid` (clear question, personal scope, user has context)
- Route: Compact (needfinding + decision-analyst)

**Orchestrator**: "Personal tech decision — I'll keep this quick. Two perspectives: one to understand what's actually driving the choice, one to map the trade-offs. Ready?"

**User**: "Go."

---

## Phase 1: Concrete Case

**Orchestrator**: "What triggered this question? What were you doing when you thought, 'I should learn a new language'?"

**User**: "I hit a performance wall on a data pipeline at work. It processes 2M records and takes 45 minutes in Python. I rewrote the hot loop in Cython and got it to 18 minutes, but it felt hacky. A colleague said 'just rewrite it in Go' and another said 'Rust would be faster.' So now I'm here."

**Orchestrator**: "Is this about the pipeline specifically, or is there something bigger?"

**User**: "Both. The pipeline is real. But I also feel like I've been a 'Python only' dev for too long. I see job postings asking for Go or Rust and I feel limited."

---

## Phase 3 (Compact): Expert Analysis (2 agents, parallel)

### Needfinding

Quick-scan results:

| Need Type | Signal | Evidence |
|-----------|--------|----------|
| Stated | "Performance for data pipeline" | Concrete: 45 min -> 18 min, still too slow |
| Stated | "Career growth, stop being Python-only" | Self-reported, emotional language ("feel limited") |
| Latent | Peer influence driving decision, not own analysis | Two colleagues suggested different answers |
| Latent | Desire for type safety / systems-level understanding | "Cython felt hacky" — discomfort with shallow optimization |

**Key observation**: User has two jobs here — (1) solve a real performance problem, (2) invest in career trajectory. The right answer might be different for each job.

### Decision Analyst

**Trade-off matrix**:

| Factor | Rust | Go |
|--------|------|-----|
| Learning curve | 3-6 months to productivity | 1-2 months to productivity |
| Pipeline rewrite time | 2-3 weeks (after learning) | 1-2 weeks (after learning) |
| Performance ceiling | Near C-speed, fine-grained control | Fast enough for most backend work |
| Job market (2026) | Growing: systems, WebAssembly, blockchain | Strong: cloud infra, microservices, DevOps tools |
| Ecosystem for data work | Modest (polars, datafusion) | Moderate (good concurrency primitives) |
| Python interop | PyO3 (excellent, used by polars) | Cgo (possible but awkward) |
| Career signal | "Deep systems engineer" | "Pragmatic infrastructure engineer" |

**Critical insight**: For the specific pipeline use case, Rust + PyO3 lets the user keep their Python codebase and rewrite only the hot paths. No full rewrite needed. This was not considered by either colleague.

---

## Phase 7: Reframing

**Orchestrator**: "Your colleagues gave you two answers to a question you might not need to ask. Let me offer a third frame.

You don't need to choose a language to rewrite your pipeline in. You need a way to make your Python pipeline fast enough that you stop thinking about it. Rust + PyO3 does that surgically — you keep Python, accelerate the bottleneck, and learn Rust in the process.

For career growth: Go is faster to learn and has more job postings. Rust is harder but signals deeper capability and has stronger growth trajectory.

The real decision isn't Rust vs. Go. It's: do you want to optimize for the pipeline problem first (Rust + PyO3), or for the career signal first (Go, broader market)?"

**User**: "I genuinely hadn't considered keeping Python and just extending it. That... actually solves both problems. I learn Rust, I fix the pipeline, and I don't throw away my existing code."

**Orchestrator**: "One caveat: Rust is a significant investment. If you start and bounce off it, you'll have spent a month with nothing to show. Consider spending one weekend with Rust+PyO3 on a small function from your pipeline. If it clicks, commit. If it feels like swimming upstream, Go is the pragmatic backup."

---

## Phase 9: Concise Framing Output

### Decision Brief

**Question**: Should I learn Rust or Go next?
**Reframed**: How do I solve my pipeline performance problem AND advance my career?

**Recommendation**: Rust + PyO3 as primary path, Go as fallback.

**Rationale**:
1. **Pipeline**: Rust + PyO3 lets you accelerate hot paths without rewriting. Immediate practical value.
2. **Career**: Rust is the "deep end" signal. Combined with Python expertise, it positions you as a performance-aware engineer, not a language switcher.
3. **Risk mitigation**: One-weekend spike before commitment. If Rust doesn't click, pivot to Go with no regrets.

**Action items**:
- This weekend: write a small Rust function via PyO3 that processes a chunk of your pipeline data
- Measure: is it >5x faster than the Cython version?
- If yes: commit to a 3-month Rust learning path
- If no or too painful: learn Go, use it for the full rewrite

**What I'm not recommending**: Learning Go just because it's easier, when your real problem is "make this Python pipeline fast" and Go doesn't solve that without a full rewrite.

---

### Quality Score: 3.9 / 5.0

| Dimension | Score | Notes |
|-----------|-------|-------|
| Specificity | 4.0 | Concrete trigger (45min pipeline), concrete constraint (Python dev, 4yr exp) |
| Actionability | 4.5 | One-weekend test with clear success criteria; binary decision tree |
| Traceability | 4.0 | Recommendation directly traceable to stated needs; colleague suggestions identified as external influence, not user need |
| Completeness | 3.0 | Rapid mode limits depth. No analysis of team dynamics, long-term project roadmap, or learning style fit. Emotional dimension ("feel limited") noted but not deeply explored. |
| Coherence | 3.5 | Two underlying jobs surfaced (pipeline vs career), resolved by finding overlap (Rust+PyO3). But career market analysis is shallow — a deeper session would pull actual job data. |

**Why not higher**: This is a solid rapid framing, not a comprehensive decision analysis. The career market claims are based on general knowledge, not 2026-specific data. The emotional dimension (feeling "limited" as a Python dev) deserves deeper exploration — it may be the actual driver, with the pipeline as a convenient rationalization. A Structured or Deep session would catch that.

---

*Discovery artifact saved to `.discovery/2026-03-07-rust-or-go-decision.md`*
