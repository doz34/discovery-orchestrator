# Internal Tools & Operations Adapter

## Domain signals

- team, department, group, unit, division, org
- process, workflow, procedure, SOP, playbook, runbook
- automation, script, bot, integration, connector, pipeline
- ops, operations, DevOps, platform, infrastructure, SRE
- internal, intranet, employee, staff, colleague, teammate
- tooling, dashboard, admin panel, CMS, CRM internal
- approval, authorization, governance, review, sign-off
- compliance, audit, regulation, policy, standard, control
- legacy, existing, current, incumbent, migration, transition
- adoption, rollout, training, change management, champions
- SLA, SLO, incident, on-call, escalation, runbook

## Phase customization

### Emphasize

- **Workflow analysis**: Internal tools exist to support or automate workflows. Discovery must map the current workflow step-by-step: who does what, in what order, with what tools, and where the exceptions happen. The workflow is the primary artifact.
- **Exception cases**: Every internal workflow has exception paths: edge cases, error conditions, override scenarios, manual interventions. These exceptions are where current tools fail and where new tools must succeed. Spend disproportionate time on exceptions.
- **Adoption risk**: Internal tools live or die by adoption. Discovery must assess: will people actually use this? What are the switching costs from the current process? Who will resist and why? Adoption risk is as important as technical risk.
- **Integration requirements**: Internal tools rarely exist in isolation. They integrate with HR systems, identity providers, ticketing systems, communication platforms, and legacy databases. Discovery must map the integration landscape early.

### Skip (rarely useful)

- **Competitive analysis**: There is no competitive landscape for internal tools. Skip market positioning, competitor benchmarking, and differentiation exercises.
- **Broad persona development**: The user base is known and finite. Light personas based on roles are sufficient; deep persona profiles are overkill.

### Modify

- **Constraints**: Split into compliance constraints (regulatory requirements, audit trails, data retention policies), technical constraints (legacy system APIs, SSO integration, data format requirements), and organizational constraints (change windows, training availability, support model).
- **Success criteria**: Express as operational metrics: time-to-completion for the workflow, error rate reduction, exception handling time, adoption rate, support ticket reduction, compliance audit pass rate.
- **Risks**: Split into adoption risks (resistance, training gaps, workaround persistence), integration risks (API instability, data migration complexity, SSO compatibility), and compliance risks (audit failures, data exposure, policy violations).

## Specialist vocabulary

| Generic term | Internal tools domain term |
|---|---|
| Problem | Process bottleneck, manual step, exception, error-prone task |
| Goal | Automation, efficiency, compliance, visibility, self-service |
| Constraint | Legacy system, compliance policy, approval gate, data format |
| Stakeholder | Team lead, process owner, compliance officer, IT admin |
| Risk | Adoption failure, integration breakage, compliance violation |
| Milestone | Pilot rollout, department expansion, full adoption, audit |
| Success metric | Cycle time, error rate, adoption rate, ticket volume, compliance score |
| Scope | In-scope workflows, covered teams, included processes |

## Output transformation

Generic discovery outputs become internal-tools-specific artifacts:

- **Problem framing** becomes a process pain point analysis: which steps are slow, error-prone, manual, or invisible to management.
- **Workflow map** becomes a step-by-step current-state workflow with actors, tools, data flows, exception paths, and time estimates per step.
- **Constraints** becomes an integration and compliance matrix: legacy system APIs, SSO requirements, data retention policies, audit trail needs, approval gates.
- **Risks** becomes an adoption risk assessment: resistance factors, training needs, switching costs, workaround persistence probability.
- **Success criteria** becomes an operational metrics framework: baseline measurements and targets for cycle time, error rate, adoption, and compliance.
- **Questions** becomes a workflow discovery interview guide with process-walkthrough prompts and exception-probing questions.

## Domain-specific questions

1. Walk me through the current workflow step-by-step. Who does what, in what order, using what tools, and how long does each step take?
2. Where do exceptions happen? What triggers them, who handles them, and what is the manual workaround today?
3. What compliance or audit requirements govern this process? What must be logged, who must approve, and how long must records be retained?
4. What systems does this workflow touch? What integrations exist today, and what integration gaps cause the most pain?
5. Who will resist changing this workflow, and what are their specific concerns? What would make them adopt a new tool willingly?
6. What happens when the primary tool or system is down? What is the fallback, and how often does it get used?
7. How is success measured for this team or process today, and who is accountable for those metrics?
8. What manual workarounds exist today that people have accepted as normal but are actually inefficient or risky?

## Common pitfalls in this domain

1. **Automating the wrong workflow**: Discovery maps the stated workflow and automates it without questioning whether the workflow itself is correct. Automating a bad process makes it faster and harder to change. Discovery should challenge the process design before automating it.
2. **Ignoring the shadow process**: The documented workflow and the actual workflow are different. People develop shortcuts, workarounds, and informal processes that are invisible to management. Discovery must observe actual behavior, not just documented procedures.
3. **Over-indexing on happy path**: Designing for the standard workflow and treating exceptions as edge cases. In internal operations, exceptions can represent 20-40% of actual volume. Discovery must weight exception analysis proportionally to their real frequency.
4. **Underestimating change management**: Building the tool and expecting adoption to follow. Internal tools compete with established habits, spreadsheet workarounds, and email-based processes. Discovery must surface adoption barriers and design for them from the start.
5. **Integration myopia**: Treating the new tool as a standalone system when it must integrate with existing identity, communication, ticketing, and reporting systems. Discovery must map the full integration surface and identify dependencies on legacy system stability.
