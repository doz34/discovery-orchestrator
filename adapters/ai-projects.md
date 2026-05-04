# AI & LLM Projects Adapter

## Domain signals

- model, LLM, GPT, Claude, Gemini, glm, Mistral
- agent, autonomous, multi-agent, orchestration
- prompt, system prompt, few-shot, chain-of-thought
- RAG, retrieval, vector database, embedding, chunking
- fine-tune, fine-tuning, LoRA, RLHF, DPO
- inference, latency, throughput, token limit, context window
- hallucination, grounding, faithfulness, attribution
- evaluation, benchmark, golden dataset, human rating
- training data, dataset, labeling, annotation, synthetic data
- temperature, top-p, sampling, decoding strategy
- tool use, function calling, structured output
- guardrail, safety, moderation, content policy

## Phase customization

### Emphasize

- **Failure modes**: AI systems fail in unique ways: hallucination, confabulation, prompt injection, output drift, context window overflow, model deprecation. These must be discovered and planned for explicitly. Treat every failure mode as a first-class requirement.
- **Evaluation**: Discovery must define what "good" looks like before any implementation begins. Without evaluation criteria, every output is subjective. Establish golden datasets, rating rubrics, and quantitative thresholds early.
- **Constraints**: Model-specific constraints dominate AI projects: token limits, latency budgets, cost per inference, context window size, rate limits, supported languages, structured output reliability. These constraints shape every downstream decision.
- **Trust and oversight**: Who trusts the output? Who verifies it? What is the cost of a wrong answer? Discovery must surface the human-in-the-loop requirements and the trust boundary between automation and review.

### Skip (rarely useful)

- **Broad stakeholder mapping**: Most AI projects have a small set of technical stakeholders. Extensive organizational mapping adds little value.
- **Emotional mapping**: AI system outputs do not have emotional stakes (usually). Redirect this energy toward trust and reliability analysis.

### Modify

- **Risks**: Split into model risks (hallucination, bias, drift, deprecation), data risks (quality, privacy, licensing, freshness), and integration risks (latency, cost scaling, fallback behavior).
- **Success criteria**: Express as evaluation metrics: accuracy, faithfulness, relevance, completeness, latency, cost-per-query, human override rate.
- **Boundaries**: Frame as model capability boundaries: what the model can reliably do vs. what requires guardrails, human review, or classical engineering.

## Specialist vocabulary

| Generic term | AI/LLM domain term |
|---|---|
| Problem | Failure mode, hallucination, drift, grounding gap |
| Goal | Evaluation benchmark, quality threshold, automation level |
| Constraint | Token limit, context window, latency budget, cost ceiling |
| Stakeholder | Model provider, annotator, reviewer, end user, compliance |
| Risk | Prompt injection, data leakage, model deprecation, bias amplification |
| Milestone | Eval threshold met, golden dataset passing, latency SLA achieved |
| Success metric | Faithfulness, relevance, human preference, latency, cost/query |
| Scope | Model scope, task scope, language scope, domain scope |

## Output transformation

Generic discovery outputs become AI-specific artifacts:

- **Problem framing** becomes a set of failure mode descriptions with severity, likelihood, and detection difficulty ratings.
- **Constraints** becomes a model constraints matrix: token limits, latency budgets, cost ceilings, context window budgets, supported modalities, structured output reliability per provider.
- **Evaluation** becomes an evaluation framework: golden dataset specification, rating rubric, quantitative thresholds, automated eval pipeline requirements.
- **Trust boundary** becomes a human-in-the-loop specification: which outputs require human review, what is the maximum acceptable automation level, what triggers escalation.
- **Data requirements** becomes a data requirements document: training data, evaluation data, RAG corpus characteristics, data freshness requirements, privacy and licensing constraints.
- **Risks** becomes an AI risk register with mitigation strategies: prompt injection defenses, fallback behaviors, model switching plans, cost scaling projections.

## Domain-specific questions

1. What is the maximum acceptable error rate, and what happens when the model produces a wrong answer? Who is affected and what is the recovery path?
2. What does your evaluation dataset look like today? Do you have labeled examples, and if so, how were they created and how fresh are they?
3. What is the latency budget for inference, and what is the cost ceiling per query at expected scale?
4. Which model capabilities are hard requirements (structured output, function calling, multilingual, vision) and which providers support them reliably?
5. What is the human oversight model? Who reviews model outputs, how often, and with what authority to override?
6. What happens to the system if the primary model provider deprecates a model, changes pricing, or introduces rate limits?
7. What data flows into the model, and what are the privacy, licensing, and freshness constraints on that data?
8. Have you tested adversarial inputs? What happens with prompt injection, edge cases, out-of-domain queries, and ambiguous instructions?

## Common pitfalls in this domain

1. **Demo-driven development**: Building from impressive demos rather than production requirements. Demos hide failure modes, ignore latency constraints, and use cherry-picked inputs. Discovery must force the conversation toward edge cases, adversarial inputs, and worst-case scenarios.
2. **Undefined evaluation**: Starting implementation without a golden dataset and rating rubric. Without evaluation, the team has no shared definition of "good" and every improvement is subjective. Evaluation criteria must be a discovery output, not a post-deployment afterthought.
3. **Ignoring model economics**: Focusing on model quality while ignoring cost-per-query at scale. A model that produces excellent outputs at $0.50/query is a different project than one that produces acceptable outputs at $0.002/query. Cost constraints shape architecture decisions.
4. **Over-automating**: Designing for full automation when the error rate or consequence severity demands human oversight. Discovery should explicitly define the trust boundary and the escalation path rather than assuming the model will always be right.
5. **Treating the model as a black box**: Not understanding model behavior well enough to debug failures. Discovery should establish observability requirements: logging prompts and completions, tracking failure patterns, measuring drift over time.
