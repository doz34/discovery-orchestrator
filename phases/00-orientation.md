# Phase 0: Orientation

## Goal
Detect the domain, assess complexity, and select the discovery mode before any deep exploration begins.

## Entry condition
User has expressed an initial idea, problem, or project intent. No prior discovery work exists for this session.

## Actions

1. **Parse the user's opening statement for domain signals.** Look for keywords and context clues that map to one of six domain categories:
   - **Software**: mentions code, app, platform, API, database, deployment, feature, bug
   - **Product**: mentions users, market, roadmap, competitor, launch, adoption, retention
   - **AI/ML**: mentions model, training, inference, dataset, prompt, embedding, agent
   - **Consulting**: mentions client, engagement, deliverable, stakeholder, proposal, SOW
   - **Internal tooling**: mentions team, workflow, process, automation, internal, ops
   - **Personal**: mentions habit, learning, health, finance, career, side project

2. **Assess complexity from the initial input.** Classify into one of three tracks:
   - **Rapid** (single stakeholder, clear problem, bounded scope, < 2 weeks horizon): skip to Phase 5 after a compressed Phase 1-2
   - **Structured** (multiple stakeholders, moderate ambiguity, cross-functional, 2-8 weeks): run all phases sequentially
   - **Deep** (organizational change, strategic pivot, high uncertainty, > 8 weeks): run all phases with iterative loops on Phases 2-4

3. **Confirm domain and complexity with the user.** State what you detected and ask for correction before proceeding. Example: "I'm hearing a software project with a product dimension. The scope looks structured — multiple stakeholders, moderate ambiguity. Sound right?"

4. **Select and announce the discovery mode.** Based on the complexity assessment, tell the user which track you are following and why. Adjust if they disagree.

5. **Build the initial framing sentence.** Capture what the user wants in a single sentence. This becomes the running header for the session. Example: "A web platform that lets freelance designers manage client feedback without email threads."

6. **Check for blockers.** Ask if there are hard deadlines, fixed budgets, immovable constraints, or prior commitments that will shape the discovery. Record these early.

## Suggested prompts

- "What's the one-liner version of what you're trying to build or solve?"
- "Walk me through what triggered this — was there a specific moment or event?"
- "Who else cares about this besides you? Who would use it, pay for it, or be affected by it?"
- "Is this a Tuesday problem (annoying but livable) or a burning-platform problem (must fix now)?"
- "Are there any hard constraints I should know about up front — deadlines, budgets, tech restrictions?"

## Exit condition
Domain is confirmed, complexity track is selected, initial framing sentence is articulated, and any hard blockers are recorded.

## Output
- Domain classification (one of six categories)
- Complexity track (rapid / structured / deep)
- Initial framing sentence
- List of known hard constraints
- Recommended phase sequence (which phases to run and which to compress or skip)
