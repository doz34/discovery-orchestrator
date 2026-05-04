# Phase 9: Handoff

## Goal
Package the full discovery into structured artifacts, score their quality, persist them, and prepare for handoff to design, build, or decision-making.

## Entry condition
All selected phases for the current mode (Rapid/Structured/Deep) are complete. For Structured and Deep modes, the opportunity map from Phase 8 should be available. For Rapid mode, at minimum Phase 1 (concrete case), Phase 3 (motivation), and Phase 7 (reframing) outputs should be available.

## Actions

1. **Select the appropriate output template.** Based on mode and domain:
   - **Rapid mode** → `templates/concise-framing.md`
   - **Structured mode** → `templates/discovery-brief.md` (or `templates/spec-prebrief.md` for spec output)
   - **Deep mode** → `templates/discovery-brief.md` (or `templates/stakeholder-matrix.md` for multi-stakeholder)
   - **For AI agent consumption** → `templates/agent-handoff.md`

2. **Assemble the discovery document.** Include all sections for which data exists (skip sections from phases not run in current mode):
   - **Executive summary**: one paragraph synthesizing the entire discovery
   - **Problem statement**: the final framing from Phase 7 with HMW question
   - **User context**: concrete case narrative, actors, environment (from Phase 1)
   - **Cost of inaction**: status quo cost statement (from Phase 2, if run)
   - **Motivations and jobs**: deep needs, JTBD, priority-ranked jobs (from Phases 3-4, if run)
   - **Requirements**: classified, constrained, assumption-flagged (from Phase 5, if run)
   - **Resolved tensions**: contradiction resolutions and trade-off decisions (from Phase 6, if run)
   - **Opportunity map**: scored opportunities, hypotheses, roadmap (from Phase 8, if run)
   - **Open questions**: unresolved items requiring further investigation
   - **Next steps**: immediate actions with ownership and timelines

3. **Score the discovery quality.** Load `scoring/rubric.md` and score across five dimensions (Specificity, Actionability, Traceability, Completeness, Coherence). Each rated 1-5 with weighted average. Passing threshold: 3.5/5.0. If below threshold, run one additional clarification loop targeting the weakest dimension.

4. **Persist the artifact.** Save the discovery document:
   - Path: `.discovery/YYYY-MM-DD-{project-slug}.md`
   - Create `.discovery/` directory if it does not exist
   - Include quality score and expert list in the document

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
