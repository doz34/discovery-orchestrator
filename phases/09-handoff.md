# Phase 9: Handoff

## Goal
Package the full discovery into structured artifacts, score their quality, persist them, and prepare for handoff to design, build, or decision-making.

## Entry condition
The opportunity map is complete from Phase 8 with scored opportunities, hypotheses, and a sequenced roadmap.

## Actions

1. **Select the appropriate output template.** Based on the domain (from Phase 0) and complexity track, choose the artifact format:
   - **Software/product**: Product Requirements Document (PRD) with user stories, acceptance criteria, and technical constraints
   - **AI/ML**: Experiment brief with data requirements, model selection criteria, and evaluation metrics
   - **Consulting**: Engagement brief with scope, deliverables, timeline, and stakeholder commitments
   - **Internal tooling**: Internal RFC with problem statement, proposed solution, alternatives considered, and implementation plan
   - **Personal**: Action plan with goals, habits, milestones, and accountability mechanisms

2. **Assemble the discovery document.** Structure it with these sections:
   - **Executive summary**: one paragraph synthesizing the entire discovery
   - **Problem statement**: the final framing from Phase 7 with HMW question
   - **User context**: concrete case narrative, actors, environment (from Phase 1)
   - **Cost of inaction**: status quo cost statement (from Phase 2)
   - **Motivations and jobs**: deep needs, JTBD, priority-ranked jobs (from Phases 3-4)
   - **Requirements**: classified, constrained, assumption-flagged (from Phase 5)
   - **Resolved tensions**: contradiction resolutions and trade-off decisions (from Phase 6)
   - **Opportunity map**: scored opportunities, hypotheses, roadmap (from Phase 8)
   - **Open questions**: unresolved items requiring further investigation
   - **Next steps**: immediate actions with ownership and timelines

3. **Score the discovery quality across five dimensions.** Rate each 1-5:
   - **Completeness**: Did we cover all relevant dimensions of the problem? Are there blind spots?
   - **Specificity**: Are claims grounded in concrete evidence, not assumptions? Can we point to specific user data?
   - **Coherence**: Do the requirements, motivations, and opportunities form a consistent story, or are there gaps?
   - **Actionability**: Can a designer or engineer pick this up and start working? Are there ambiguities that block action?
   - **Validity**: Has the user confirmed the key claims? Are critical assumptions flagged for validation?
   Compute the average score. If below 3.5, identify which dimension is weakest and whether a targeted follow-up would improve it.

4. **Persist the artifact.** Save the discovery document to a file in the project directory:
   - Path: `<project_root>/discovery-output/<date>-discovery-report.md`
   - Include all supporting data (concrete cases, cost calculations, trade-off matrices)
   - Also save a machine-readable summary (JSON or YAML) for programmatic consumption by downstream tools

5. **Generate action items with ownership.** For each next step, specify:
   - What needs to happen
   - Who is responsible (named individual or role)
   - When it needs to happen (specific date or relative to project start)
   - What the completion signal is (how we know it's done)
   - Dependencies (what must happen first)

6. **Prepare the handoff context.** Depending on what comes next:
   - **To a designer**: highlight the HMW question, user context, emotional jobs, and constraints
   - **To an engineer**: highlight the requirements, technical constraints, non-functional requirements, and quick wins
   - **To a decision-maker**: highlight the status quo cost, opportunity map, and strategic bets
   - **To the user for self-execution**: highlight the action plan with priorities and milestones

7. **Validate the handoff with the user.** Walk through the key sections. Ask: "Does this accurately capture what we discussed? Is anything missing or misstated? Are you comfortable handing this to [next person/team]?" Incorporate final corrections.

## Suggested prompts

- "Let me walk you through what I've assembled. Does this capture what we discussed?"
- "Is there anything we covered that I missed in the summary?"
- "Who should receive this output? A designer, an engineer, a stakeholder?"
- "On a scale of 1-5, how confident are you that this captures the real problem?"
- "What's the very first thing that should happen after this handoff?"

## Exit condition
Discovery document is assembled, quality-scored (average >= 3.5 or weakness acknowledged), persisted to file, and validated by the user. Action items have clear ownership and timelines. Handoff context is tailored for the next recipient.

## Output
- Discovery document (full structured report in selected template format)
- Quality scorecard (five dimensions, scored 1-5, with average)
- Persisted files (markdown report + machine-readable summary)
- Action item list with ownership, timelines, completion signals, and dependencies
- Tailored handoff context for the next recipient role
- User validation confirmation
