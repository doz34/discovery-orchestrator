# Discovery Orchestrator

> Multi-expert discovery & needfinding skill for Claude Code & Hermes Agent.
> Transforms fuzzy ideas into decision-ready artifacts using parallel expert agents.

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

## What It Does

Discovery Orchestrator helps you frame problems before jumping to solutions. It runs structured discovery conversations enhanced by **9 parallel expert agents**, each analyzing your situation from a specialized perspective:

| Expert | Perspective |
|--------|------------|
| Facilitator | Pacing, flow, cognitive load |
| Needfinding | Pain signals, workarounds, latent needs |
| JTBD Analyst | Jobs To Be Done — functional, emotional, social |
| Requirements Eng | Constraints, assumptions, scope boundaries |
| Product Researcher | Opportunity scoring, HMW questions, hypotheses |
| Psychologist | Cognitive biases, emotional signals |
| MI Coach | Motivational interviewing, change readiness |
| Systems Advisor | Feasibility, dependencies, risk |
| Decision Analyst | Trade-offs, prioritization, reversibility |

**Zero dependencies** — works with Claude Code CLI or Hermes Agent. No Python, no MCP servers, no plugins.

## Installation

### Claude Code (default)

```bash
git clone https://github.com/doz34/discovery-orchestrator.git
cd discovery-orchestrator
chmod +x install.sh
./install.sh
```

Or manually:
```bash
git clone https://github.com/doz34/discovery-orchestrator.git
cp -r discovery-orchestrator ~/.claude/skills/discovery-orchestrator
```

### Hermes Agent

```bash
git clone https://github.com/doz34/discovery-orchestrator.git
cd discovery-orchestrator/hermes
chmod +x install.sh
./install.sh
```

Or manually:
```bash
git clone https://github.com/doz34/discovery-orchestrator.git
# Copy shared content + Hermes SKILL.md
mkdir -p ~/.hermes/skills/discovery-orchestrator
cp discovery-orchestrator/hermes/SKILL.md ~/.hermes/skills/discovery-orchestrator/
for dir in experts phases adapters templates scoring examples; do
  cp -r discovery-orchestrator/$dir ~/.hermes/skills/discovery-orchestrator/$dir
done
```

## Usage

### Claude Code

Type:
```
/discovery-orchestrator I want to build a RAG system for legal documents
```

### Hermes Agent

Invoke:
```
discovery-orchestrator I want to build a RAG system for legal documents
```

Or just start describing your situation — the skill auto-detects domain and complexity on both platforms.

### Examples

**Claude Code:**
```
/discovery-orchestrator Our team spends 3 hours/week on manual report generation
```

**Hermes Agent:**
```
discovery-orchestrator Our team spends 3 hours/week on manual report generation
```

## How It Works

```
Input → Phase 0: Orientation (domain + complexity detection)
      → Phase 1-2: Conversation (concrete case + friction mapping)
      → Phase 3+: Parallel expert agents (spawned via Agent/delegate tool)
      → Synthesis + Quality scoring (5-dimension rubric)
      → Output artifact (saved to .discovery/)
```

### Architecture

The skill uses **lazy loading** — only the phases and experts needed for your situation are loaded. This keeps token usage at **3-6K** vs the 15-20K a monolithic approach would consume.

## Modes

| Mode | When | Route | Experts |
|------|------|-------|---------|
| **Rapid** | Already clear, want quick validation | P1→P3→P7→P9 | 2 |
| **Structured** | Real problem, needs framing | P1→P2→...→P9 | 5 |
| **Deep** | Ambiguous, strategic, emotional | Full + all phases | 9 |

## Domains

- **Software** — code, repos, APIs, features, architecture
- **Product/UX** — users, journeys, retention, conversion
- **AI Projects** — models, agents, prompts, RAG systems
- **Consulting** — stakeholders, diagnostics, proposals
- **Internal Tools** — workflows, automation, ops
- **Personal** — career decisions, life choices

## Output Templates

| Template | Use Case |
|----------|----------|
| Concise Framing | Rapid validation |
| Discovery Brief | Default structured output |
| Agent Handoff | Ready for downstream AI agent |
| Spec Pre-Brief | Bridge to formal specification |
| Stakeholder Matrix | Multi-stakeholder alignment |

## Quality Scoring

Every discovery is scored on 5 dimensions before delivery:

| Dimension | Weight | Measures |
|-----------|--------|----------|
| Specificity | 25% | Vague wishes → measurable criteria |
| Actionability | 25% | No direction → decision-ready |
| Traceability | 20% | Unsourced → every claim traced to user |
| Completeness | 15% | Blind spots → all angles explored |
| Coherence | 15% | Contradictions → aligned narrative |

**Passing threshold**: 3.5/5.0. Below threshold triggers an additional clarification loop.

## Extending

### Add a Domain Adapter

Create `adapters/your-domain.md` following the existing format. The orchestrator auto-detects new adapters.

### Add an Expert

Create `experts/your-expert.md` with the standard format (Role, Activation triggers, Analysis framework, Probes, Output format, Red flags).

### Add a Template

Create `templates/your-template.md`. Reference it in Phase 9 handoff.

## Project Structure

```
discovery-orchestrator/
├── SKILL.md              # Claude Code orchestrator (~140 lines, always loaded)
├── hermes/
│   ├── SKILL.md          # Hermes Agent orchestrator (native delegate tool)
│   └── install.sh        # Hermes installer
├── experts/              # 9 expert agents (loaded on demand, shared)
├── phases/               # 10 phases (loaded per route, shared)
├── adapters/             # 6 domain adapters (shared)
├── templates/            # 5 output templates (shared)
├── scoring/              # Quality rubric (shared)
├── examples/             # Example sessions
├── install.sh            # Claude Code installer
└── LICENSE               # MIT
```

## Comparison: v1 vs v2

| Metric | v1 | v2 |
|--------|----|----|
| Files | 1 monolith | 41+ modular |
| Expert depth | ~15 lines/role | 120-250 lines/agent |
| Real agents | 0 | 3-9 parallel |
| Tokens/load | 15-20K | 3-6K (lazy) |
| Quality gate | None | 5D rubric |
| Persistence | None | Markdown files |
| Extensibility | None | Add files = done |

## License

MIT — see [LICENSE](LICENSE).
