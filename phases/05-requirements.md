# Phase 5: Requirements

## Goal
Translate discovered needs into structured, classified, and scoped requirements ready for design or build.

## Entry condition
Jobs To Be Done are mapped and priority-ranked from Phase 4. The user has a clear picture of what they want the solution to do and why.

## Actions

1. **Translate top-priority jobs into requirements.** For each priority-ranked job from Phase 4, write a requirement in standard form: "The system shall [verb] [object] [condition/constraint]." Example: "The system shall consolidate feedback from email and Slack into a single view within 5 minutes of receipt."

2. **Classify each requirement into one of four categories:**
   - **Business requirement**: what the organization needs to achieve (revenue, compliance, efficiency)
   - **User requirement**: what the end-user needs to accomplish (complete a task, get information, feel confident)
   - **System requirement**: what the technology must do (integrate, process, store, compute)
   - **Risk requirement**: what must be prevented or mitigated (data loss, unauthorized access, downtime)

3. **Separate hard constraints from preferences.** For each requirement, classify as:
   - **Hard constraint**: non-negotiable, project fails without it. Mark with [MUST]
   - **Strong preference**: important but theoretically workable without. Mark with [SHOULD]
   - **Nice-to-have**: desirable but expendable under pressure. Mark with [COULD]
   Ask the user to validate each classification: "Is this a must-have or a strong preference? If we couldn't do this on day one, would the project still launch?"

4. **Flag assumptions.** Every requirement rests on assumptions. Surface them explicitly: "This assumes your clients use email and Slack — is that always true? What about Teams users?" Mark each assumption with [ASSUMES] and record it for later validation.

5. **Define non-functional requirements.** Capture quality attributes that cut across all functional requirements:
   - **Performance**: response time, throughput, concurrency targets
   - **Reliability**: uptime, error rate, recovery time
   - **Security**: authentication, authorization, data protection
   - **Usability**: learning curve, accessibility, device support
   - **Scalability**: growth ceiling, data volume limits

6. **Draw scope boundaries.** Explicitly list what is IN scope and what is OUT of scope. Be specific: "IN: feedback collection from email and Slack. OUT: feedback from WhatsApp, SMS, or carrier pigeon." Ask: "What would someone expect this to do that it definitely will NOT do?"

7. **Check for orphaned requirements.** Every requirement should trace back to a job from Phase 4 and a motivation from Phase 3. If a requirement has no upstream justification, flag it: "Where does this come from? What job does it serve?" Remove or reconnect orphaned requirements.

## Suggested prompts

- "For your top-priority job, what specifically does the solution need to do? Write it as a requirement."
- "Is this a non-negotiable must-have, or something you could launch without and add later?"
- "What assumptions are we making that might not be true? What could invalidate this requirement?"
- "What does this need to handle in terms of speed, reliability, or security?"
- "What would someone expect this to do that it should explicitly NOT do?"

## Exit condition
All priority jobs are translated into requirements, classified, constrained, assumption-flagged, and scoped. Non-functional requirements are defined. Scope boundaries are explicit. No orphaned requirements remain.

## Output
- Requirements list (classified as business/user/system/risk)
- Constraint classification per requirement (MUST/SHOULD/COULD)
- Assumption register
- Non-functional requirements specification
- Scope boundary document (IN/OUT lists)
- Traceability matrix (requirement to job to motivation)
