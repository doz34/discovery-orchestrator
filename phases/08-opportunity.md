# Phase 8: Opportunity Map

## Goal
Generate a scored map of opportunities, formulate testable hypotheses, and distinguish quick wins from strategic bets.

## Entry condition
The final problem statement and primary framing are established from Phase 7. The project has a clear north star.

## Actions

1. **Brainstorm opportunity areas.** Using the final problem statement and all prior discovery, list every potential area where value could be created. Sources:
   - Unresolved friction points from Phase 2
   - Unmet jobs from Phase 4 (especially lower-priority ones that didn't make the cut)
   - Assumptions from Phase 5 that, if validated, open new possibilities
   - Contradiction resolutions from Phase 6 that created secondary opportunities
   - Reframings from Phase 7 that suggested alternative approaches

2. **Score each opportunity on two axes:**
   - **Impact** (1-5): How much value does this create if successful? Consider time saved, money gained, frustration removed, opportunity unlocked.
   - **Uncertainty** (1-5): How much do we not know about whether this will work? Consider technical risk, user adoption risk, market risk, organizational risk.
   Plot opportunities on a 2x2 matrix. The four quadrants are:
   - **High impact, low uncertainty** (quick wins): do these first
   - **High impact, high uncertainty** (strategic bets): validate before committing
   - **Low impact, low uncertainty** (fill-ins): do these if easy, skip if not
   - **Low impact, high uncertainty** (avoid): do not pursue

3. **Formulate hypotheses for each opportunity.** Every opportunity is an untested belief. Write it as a testable hypothesis: "We believe that [doing X] for [user Y] will result in [outcome Z]. We will know we are right when [measurable signal]." Example: "We believe that auto-consolidating feedback from email and Slack for freelance designers will reduce revision cycle time by 40%. We will know we are right when testers report spending less than 10 minutes per revision round on consolidation."

4. **Identify evidence gaps.** For each hypothesis, list what you would need to know to reduce uncertainty from its current level to acceptable. Common gaps:
   - User behavior data (will they actually use it?)
   - Technical feasibility (can we build it with available tech?)
   - Market validation (will anyone pay for it?)
   - Organizational readiness (will the team adopt it?)

5. **Design discovery experiments.** For each evidence gap, propose the lightest possible experiment to close it:
   - User interview (5 users, 30 minutes each)
   - Prototype test (clickable mockup, 3 users)
   - Data analysis (existing logs, spreadsheets, reports)
   - Technical spike (2-day build to test feasibility)
   - Market scan (competitor analysis, pricing research)
   Experiments should be fast (hours to days, not weeks) and designed to invalidate, not confirm.

6. **Classify opportunities as quick wins or strategic bets.**
   - **Quick wins**: high impact, low uncertainty, can be delivered in days to 2 weeks. Flag for immediate action.
   - **Strategic bets**: high impact, high uncertainty, require validation before commitment. Flag for discovery experiments first.
   - **Deprioritized**: low impact items moved to a backlog for potential future consideration.

7. **Sequence the opportunity roadmap.** Order opportunities by:
   - Quick wins first (build momentum, demonstrate value)
   - Experiments for strategic bets next (reduce uncertainty cheaply)
   - Strategic bet implementation last (once validated)
   Include dependencies between opportunities.

## Suggested prompts

- "Given everything we've discussed, where do you see the most upside? What excites you most?"
- "For this opportunity, what would convince you it's real? What signal would you need to see?"
- "What's the fastest, cheapest way to test whether this would actually work?"
- "Which of these could you ship in the next two weeks if you had to?"
- "What are you most uncertain about — what keeps you from just building it?"

## Exit condition
Opportunities are listed, scored on impact and uncertainty, plotted on a matrix, and classified as quick wins, strategic bets, or deprioritized. Hypotheses are formulated. Discovery experiments are designed. An opportunity roadmap is sequenced.

## Output
- Opportunity inventory (sourced from all prior discovery)
- Impact x Uncertainty matrix with quadrant classification
- Hypothesis statements for each opportunity
- Evidence gap analysis
- Discovery experiment designs (lightweight, time-boxed)
- Quick win / strategic bet / deprioritized classification
- Sequenced opportunity roadmap
