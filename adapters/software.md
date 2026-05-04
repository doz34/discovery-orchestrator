# Software Engineering Adapter

## Domain signals

- code, repo, repository, codebase
- API, endpoint, REST, GraphQL, gRPC
- database, schema, migration, ORM, query
- deploy, CI/CD, pipeline, staging, production
- feature, bug, issue, ticket, backlog
- refactor, rewrite, migration, port, upgrade
- microservice, monolith, frontend, backend, fullstack
- library, package, module, dependency, SDK
- framework, stack, architecture, infrastructure
- test, coverage, TDD, E2E, integration test
- performance, latency, throughput, scalability

## Phase customization

### Emphasize

- **Constraints**: Technical constraints are first-class citizens. Capture runtime versions, dependency locks, platform limits, network topology, bandwidth ceilings, and storage quotas early. Misunderstood constraints are the leading cause of rework in software.
- **Boundaries**: System boundaries define what is in-scope vs. out-of-scope. Map integration points, owned services vs. third-party APIs, and data ownership lines. Ambiguous boundaries produce coupling and deployment failures.
- **Failure modes**: Every software system fails. Discovery must surface failure scenarios: what happens when the database is down, when a third-party API rate-limits, when a deploy introduces a schema mismatch.

### Skip (rarely useful)

- **Emotional mapping**: Unless the project is a developer experience tool, emotional stakes are low. Keep this light.
- **Stakeholder politics**: Focus on technical stakeholders (team lead, architect, DevOps) rather than broad organizational mapping.

### Modify

- **Risks**: Split into technical risks (data loss, security vulnerabilities, performance regression) and project risks (scope creep, dependency abandonment, key contributor departure).
- **Success criteria**: Express as measurable engineering outcomes: latency targets, uptime SLAs, test coverage minimums, bundle size budgets, migration zero-downtime requirements.

## Specialist vocabulary

| Generic term | Software domain term |
|---|---|
| Problem | Bug, incident, technical debt, architectural drift |
| Goal | Feature, epic, user story, acceptance criteria |
| Constraint | Runtime version, API rate limit, schema compatibility, SLA |
| Stakeholder | Tech lead, product owner, DevOps, SRE, QA |
| Risk | Regression, data migration failure, dependency conflict |
| Milestone | Release, deploy, cut-over, rollback point |
| Success metric | Uptime, p99 latency, test coverage, deploy frequency |
| Scope | In-scope services, owned vs. third-party, data boundaries |

## Output transformation

Generic discovery outputs become software-specific artifacts:

- **Problem framing** becomes a set of user stories or technical issue descriptions with reproduction steps.
- **Constraints** become a technical constraints document: runtime versions, dependency matrix, infrastructure limits, API contracts.
- **Boundaries** become a system context diagram (C4 Level 1-2) with service ownership and data flow arrows.
- **Risks** become a technical risk register with severity, likelihood, and mitigation strategies.
- **Success criteria** become acceptance criteria tied to measurable engineering metrics.
- **Questions** become a technical discovery checklist for architecture review.

## Domain-specific questions

1. What runtime versions, language versions, and framework versions are locked or non-negotiable?
2. Which services or APIs do you own end-to-end, and which are third-party dependencies you cannot control?
3. What is the current deployment cadence, and what limits it (manual steps, approval gates, flaky tests)?
4. Where does data live, who owns it, and what are the migration or schema change constraints?
5. What is the current test coverage, and which areas are critically undertested?
6. What happened the last time something broke in production, and what was the rollback story?
7. Are there any upcoming dependency deprecations, EOL timelines, or forced upgrades on the horizon?
8. What is the blast radius of a bad deploy? How many users or services are affected?

## Common pitfalls in this domain

1. **Premature architecture**: Jumping to technical solutions (microservices, event-driven, serverless) before understanding the actual constraints and failure modes. The discovery conversation becomes an architecture debate instead of a requirements exercise.
2. **Ignoring data gravity**: Focusing on service boundaries and API design while underweighting data ownership, schema migration paths, and query patterns. Data constraints often dictate architecture more than service boundaries do.
3. **Scope creep through technical debt framing**: Labeling every imperfection as technical debt that must be addressed in-scope. Discovery should distinguish between debt that blocks the goal and debt that is merely annoying.
4. **Assuming greenfield**: Many software discoveries implicitly assume a clean slate. In reality, existing systems impose constraints on every new feature: migration paths, backward compatibility, deployed client versions that cannot be force-upgraded.
5. **Underspecifying failure modes**: Happy-path discovery produces happy-path architecture. Every integration point, every deploy step, every data migration is a potential failure surface that must be surfaced during discovery.
