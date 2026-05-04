# Phase 0: Orientation

## Goal
Detect the domain, assess complexity, and select the discovery mode before any deep exploration begins.

## Entry condition
User has expressed an initial idea, problem, or project intent. No prior discovery work exists for this session.

## Actions

1. **Parse the user's opening statement for domain signals.** Look for keywords and context clues that map to one of six domain categories. Load the corresponding `adapters/{domain}.md` file:
   - **software** (`adapters/software.md`): code, repo, API, database, deploy, feature, bug, refactor
   - **product-ux** (`adapters/product-ux.md`): users, UX, SaaS, conversion, retention, personas, churn
   - **ai-projects** (`adapters/ai-projects.md`): model, LLM, agent, prompt, RAG, fine-tune, embedding
   - **consulting** (`adapters/consulting.md`): client, stakeholder, business problem, diagnostic, proposal
   - **internal-tools** (`adapters/internal-tools.md`): team, process, workflow, automation, ops, compliance
   - **personal** (`adapters/personal.md`): should I, career, decision, life, feel stuck, considering

2. **Assess complexity from the initial input.** Classify into one of three tracks:
   - **Rapid** (single stakeholder, clear problem, bounded scope, quick validation): route P1→P3(compact)→P7→P9 with 2 experts (needfinding + decision-analyst)
   - **Structured** (multiple stakeholders, moderate ambiguity, cross-functional): route P1→P2→P3→P4→P5→P6→P7→P8→P9 with 4 experts (needfinding + jtbd + requirements + systems-advisor)
   - **Deep** (organizational change, strategic pivot, high uncertainty, multi-stakeholder): all phases with all 9 experts in up to 3 waves

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
