# Phase 6: Contradictions

## Goal
Surface and resolve tensions between competing needs, constraints, and desires before they become expensive design conflicts.

## Entry condition
Requirements are structured and classified from Phase 5. The full requirement set exists with constraint levels and scope boundaries.

## Actions

1. **Scan for direct contradictions.** Compare every MUST requirement against every other MUST requirement. Look for pairs that cannot coexist:
   - "Must be customizable for each client" vs. "Must be simple with zero configuration"
   - "Must launch in 4 weeks" vs. "Must integrate with 6 existing systems"
   - "Must support 10,000 concurrent users" vs. "Must cost under $200/month"
   Record each contradiction with both requirements referenced.

2. **Scan for soft tensions.** Look for SHOULD requirements that pull in opposite directions:
   - Speed vs. thoroughness
   - Flexibility vs. simplicity
   - comprehensiveness vs. performance
   - Security vs. convenience
   These are not hard contradictions but they create trade-off pressure. Record them.

3. **Map trade-off space.** For each contradiction and tension, articulate the trade-off as a spectrum. Example: "On one end, fully customized per client (maximum flexibility, high maintenance). On the other end, one-size-fits-all (maximum simplicity, limited fit). Where on this spectrum does this project live?"

4. **Identify irreconcilable conflicts.** Some contradictions cannot be resolved within the current project constraints. These need escalation or scope adjustment. Mark them with [CONFLICT] and propose resolution options:
   - Relax one constraint (demote MUST to SHOULD)
   - Split into phases (handle one requirement now, the other later)
   - Change the approach (find a third option that satisfies both partially)
   - Acknowledge the gap (accept imperfection and document the decision)

5. **Run forced-ranking exercises.** When the user says "all of these are important," force a choice:
   - "If you could only have A or B, which one?"
   - "Rank these five requirements from most to least critical."
   - "Which would you sacrifice first if you had to cut scope by 30%?"
   Record rankings. These become the priority stack for scope negotiations.

6. **Check for stakeholder conflicts.** Requirements often come from different stakeholders with different priorities. Map whose requirements are in tension. Ask: "If stakeholder A gets their way, stakeholder B loses something — is that acceptable? Who has the final call?"

7. **Produce a resolution log.** For every contradiction and tension, record:
   - The conflict description
   - The resolution chosen
   - The rationale
   - Who made the call
   - Any conditions or caveats

## Suggested prompts

- "I see a tension between [A] and [B]. If you could only have one, which would you pick?"
- "Your must-have list has [X] and [Y] pulling in opposite directions. How do you want to handle that?"
- "If scope had to shrink by 30% tomorrow, what's the first thing you'd cut?"
- "Whose requirements take priority when they conflict — who has the final word?"
- "Is there a version of this where both sides get partially what they want? What would that look like?"

## Exit condition
All direct contradictions are identified and resolved. Soft tensions are mapped and positioned on trade-off spectrums. Irreconcilable conflicts are escalated or documented. Requirements are priority-ranked through forced-ranking exercises.

## Output
- Contradiction inventory (direct conflicts with both requirements referenced)
- Tension map (soft trade-off spectrums)
- Resolution log (conflict, resolution, rationale, decision-maker, caveats)
- Priority-ranked requirement list (forced-ranking validated by user)
- Stakeholder conflict map
- [CONFLICT] items requiring scope adjustment or escalation
