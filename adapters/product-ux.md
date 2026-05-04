# Product & UX Adapter

## Domain signals

- users, user research, customer, audience, segment
- UX, UI, design, interface, experience, usability
- SaaS, product, platform, app, application
- conversion, funnel, activation, trial, signup
- retention, churn, engagement, stickiness, DAU/MAU
- personas, journey, touchpoint, moment of truth
- onboarding, first-run experience, aha moment
- NPS, CSAT, satisfaction, feedback, survey
- pain point, friction, drop-off, abandonment
- value proposition, positioning, differentiation
- MVP, prototype, beta, launch, rollout

## Phase customization

### Emphasize

- **People**: Persona development is central. Discovery must identify who the users are, what jobs they are hiring the product for, and what their current workaround looks like. Spend significant time here.
- **Unmet needs**: The core of product discovery. Surface what users cannot do today, what they find frustrating, and what they have stopped trying to do. Unmet needs are the raw material for feature prioritization.
- **Friction moments**: Map every point where users hesitate, get confused, abandon, or contact support. These are conversion killers and retention drains.
- **Emotional mapping**: Users feel frustration, delight, anxiety, and trust at specific moments. These emotions are data, not noise.

### Skip (rarely useful)

- **Technical architecture**: Unless the product is a developer tool, technical architecture is downstream of user needs. Do not let implementation concerns shape product discovery.
- **Deep risk modeling**: Product risks are typically market risks (will anyone use it?) not technical risks. Focus on desirability and viability over feasibility in early discovery.

### Modify

- **Boundaries**: Frame as scope decisions: which persona to serve first, which journey to optimize, which platform to prioritize.
- **Success criteria**: Express as product metrics: activation rate, time-to-value, retention cohort curves, NPS score, task completion rate.
- **Risks**: Split into desirability risk (will users care?), viability risk (will it sustain the business?), and usability risk (can users figure it out?).

## Specialist vocabulary

| Generic term | Product/UX domain term |
|---|---|
| Problem | Pain point, unmet need, friction, drop-off |
| Goal | Outcome, job-to-be-done, desired behavior |
| Constraint | Platform limit, design system, brand guidelines |
| Stakeholder | Persona, user segment, customer, buyer, champion |
| Risk | Desirability risk, viability risk, usability risk |
| Milestone | Launch, beta, rollout, feature flag expansion |
| Success metric | Activation, retention, NPS, task completion, conversion |
| Scope | Persona scope, journey scope, platform scope |

## Output transformation

Generic discovery outputs become product/UX-specific artifacts:

- **Problem framing** becomes a set of problem statements or how-might-we questions tied to specific personas.
- **People** becomes persona profiles with demographics, behaviors, goals, frustrations, and current workarounds.
- **Constraints** becomes a product constraints document: platform priorities, brand boundaries, competitive positioning, technical feasibility limits.
- **Journey mapping** becomes a user journey map with emotional arcs, friction points, and moments of opportunity.
- **Success criteria** becomes a metrics framework: leading indicators (activation, engagement), lagging indicators (retention, NPS), and guardrail metrics (support volume, latency).
- **Risks** becomes a product risk matrix: desirability, viability, feasibility, usability scored per feature hypothesis.

## Domain-specific questions

1. Who are the distinct user segments, and which one is the primary persona for this initiative?
2. What is the job-to-be-done that users are hiring this product (or a competitor) for?
3. Where in the current funnel do users drop off or disengage, and what do analytics and session replays show at those points?
4. What does the current onboarding flow look like, and how long does it take a new user to reach the aha moment?
5. What are users doing instead of using your product? What workarounds, competitors, or manual processes are they substituting?
6. How do you measure success today, and which metric would move the needle most for the business?
7. What have you already tried that did not work, and what did you learn from those attempts?
8. What is the emotional state of users at key moments: first encounter, first success, first failure, renewal decision?

## Common pitfalls in this domain

1. **Building for the vocal minority**: Discovery that only talks to power users, support ticket submitters, or the loudest feedback sources. These users are not representative. Actively seek silent majority signals: analytics, cohort behavior, and non-user research.
2. **Solution fixation**: Stakeholders arrive with a specific feature in mind. Discovery becomes a justification exercise rather than an open investigation. Reframe every proposed solution back to the underlying user need.
3. **Conflating buyer and user**: In B2B SaaS, the person who signs the check is often not the person who uses the product daily. Discovery must map both journeys independently and surface where their needs conflict.
4. **Ignoring the competition**: Users compare your product against alternatives constantly. Discovery that does not surface competitive switching costs, feature gaps, and relative positioning produces features that solve problems users have already solved elsewhere.
5. **Measuring outputs instead of outcomes**: Counting features shipped, screens designed, or sprints completed instead of measuring behavioral change in users. Discovery should define success as user behavior change, not delivery milestones.
