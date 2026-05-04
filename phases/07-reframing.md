# Phase 7: Reframing

## Goal
Synthesize all discovery into well-formed problem statements and select the most productive framing for the project.

## Entry condition
- **Structured/Deep**: Contradictions are resolved and requirements are priority-ranked from Phase 6. The discovery has enough substance to generate meaningful problem statements.
- **Rapid**: Motivations are explored from Phase 3 (compact). Enough context exists to reframe the problem.

## Actions

1. **Generate the initial problem statement.** Using the available discovery output, write a plain-language problem statement:
   - **Structured/Deep**: "[User/stakeholder] needs a way to [solve problem] because [root cause], but [key constraint] prevents them from [desired outcome]."
   - **Rapid**: "[User] needs a way to [solve problem] because [motivation from Phase 3], but [any mentioned constraint] prevents them from [desired outcome]." Use only data from P1 (concrete case) and P3 (motivation).

2. **Create "How Might We" (HMW) questions.** Generate at least five HMW statements from different angles:
   - **User-centric**: "How might we help [user] achieve [outcome] without [friction]?"
   - **System-centric**: "How might we design [system] so that [constraint] is no longer a blocker?"
   - **Process-centric**: "How might we restructure [process] so that [problem] disappears?"
   - **Value-centric**: "How might we deliver [deep need] while respecting [constraint]?"
   - **Inversion**: "How might we make [problem] worse?" (then invert the answers for solutions)

3. **Explore multiple framings of the same problem.** The same situation can be framed as:
   - A **technology problem**: "The tool doesn't support this workflow"
   - A **process problem**: "The workflow requires too many manual steps"
   - A **information problem**: "The right information isn't available at the right time"
   - A **motivation problem**: "People don't have a reason to change their behavior"
   - A **design problem**: "The interface makes the right action hard and the wrong action easy"
   Each framing leads to different solutions. Document all viable framings.

4. **Evaluate each framing for productivity.** A productive framing is one that:
   - Opens up solution space (many possible approaches)
   - Aligns with the deep motivations from Phase 3
   - **Structured/Deep only**: Respects hard constraints from Phase 5
   - **Structured/Deep only**: Resolves (or sidesteps) contradictions from Phase 6
   - **Rapid**: Respects any constraints mentioned during conversation
   - Is actionable within the project's scope and timeline
   Score each framing on the applicable criteria (high/medium/low).

5. **Reframe from stakeholder perspectives.** Take the top 2-3 stakeholders and write the problem statement from their point of view. The user, their boss, their client, their team — each sees a different problem in the same situation. These perspectives often reveal blind spots.

6. **Select the primary framing.** Present the top 2-3 framings to the user with their scores. Ask them to choose: "Which framing feels most productive? Which one opens up the most useful solution space?" The chosen framing becomes the project's north star.

7. **Write the final problem statement.** Based on the selected framing, produce a single, clear, actionable problem statement. Include the chosen HMW question. This statement will drive all downstream design and build decisions.

## Suggested prompts

- "If you had to describe this problem in one sentence to a smart colleague who knows nothing about it, what would you say?"
- "How might we [restate the core challenge]? Let me offer a few versions — which one resonates?"
- "Is this really a [technology/process/people/information] problem? What if we looked at it as a [different type] problem instead?"
- "If we solved this from [stakeholder B]'s perspective instead of yours, would the solution look different?"
- "Which framing opens up the most interesting possibilities? Which feels most productive?"

## Exit condition
Multiple framings are generated and evaluated. The user has selected a primary framing. A final problem statement with a HMW question is produced and validated.

## Output
- Initial problem statement (synthesis of all discovery)
- Set of HMW questions (minimum 5, from different angles)
- Multiple framings with productivity scores
- Stakeholder-perspective problem statements
- Selected primary framing (user-validated)
- Final problem statement with HMW question
