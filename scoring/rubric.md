# Discovery Output Quality Rubric

> Version: 2.0 | Dimensions: 5 | Scale: 1-5 | Passing Threshold: 3.5/5.0

---

## Scoring Dimensions

### 1. Specificity (Weight: 0.25)

Measures whether needs, criteria, and recommendations are precise and measurable rather than vague aspirations.

| Score | Description |
|-------|-------------|
| **1** | Needs are vague wishes with no measurable criteria. Example: "Make it better." |
| **2** | Needs are stated but lack specificity. Some criteria present but unmeasurable. |
| **3** | Most needs are specific with at least one measurable criterion each. Some remain fuzzy. |
| **4** | All needs are specific. Success criteria are measurable. Recommendations are concrete with owners and timelines. |
| **5** | Every need is precise, measurable, and bounded. Success criteria have exact thresholds. Recommendations include fallback options. |

**Key signals:** Measurable success criteria, specific thresholds, named owners, concrete timelines, bounded scope.

---

### 2. Actionability (Weight: 0.25)

Measures whether the output enables immediate decision-making and next steps without requiring further clarification.

| Score | Description |
|-------|-------------|
| **1** | No clear next steps. Reader cannot act without significant additional analysis. |
| **2** | Next steps are listed but vague. No ownership, no timeline, dependencies unclear. |
| **3** | Next steps are present with ownership and rough timelines. Some ambiguity remains. |
| **4** | Clear next steps with owners, timelines, and dependencies. A decision-maker can approve immediately. |
| **5** | Decision-ready artifact with prioritized actions, risk-adjusted alternatives, and explicit decision points requiring sign-off. |

**Key signals:** Named owners, specific timelines, dependency chains, decision points, risk-adjusted options.

---

### 3. Traceability (Weight: 0.20)

Measures whether every claim, need, and recommendation can be traced back to a source (user quote, observation, or clearly labeled inference).

| Score | Description |
|-------|-------------|
| **1** | Claims are unsourced assertions. No connection to user input. |
| **2** | Some claims reference user input. Many assertions are unlabeled. Inferences not distinguished from facts. |
| **3** | Most needs are sourced. Inferences are labeled but not all traceable to specific input. |
| **4** | Every need is traced to a source. Inferences are labeled. Direct quotes are distinguished from interpretations. |
| **5** | Every claim is sourced. Direct quotes, observations, and inferences are clearly categorized. Source signal weight (high/medium/low) is assigned. |

**Key signals:** Source tags, direct quotes, inference labels, signal weights, clear fact vs. assumption distinction.

---

### 4. Completeness (Weight: 0.15)

Measures whether all relevant angles are explored — constraints, risks, edge cases, stakeholders, and trade-offs.

| Score | Description |
|-------|-------------|
| **1** | Major blind spots. Key constraints, stakeholders, or risks are missing entirely. |
| **2** | Basic coverage but notable gaps. Some constraints or stakeholder perspectives absent. |
| **3** | Adequate coverage. Constraints, risks, and stakeholders are addressed. Some edge cases missed. |
| **4** | Thorough coverage. All major angles explored. Edge cases identified. Trade-offs explicitly stated. |
| **5** | Exhaustive coverage. All angles explored including edge cases, second-order effects, and stakeholder conflicts. No blind spots apparent. |

**Key signals:** Constraints addressed, risks assessed, edge cases noted, stakeholder perspectives included, trade-offs explicit.

---

### 5. Coherence (Weight: 0.15)

Measures whether the narrative is internally consistent — no contradictions between sections, needs align with problem statement, recommendations follow from analysis.

| Score | Description |
|-------|-------------|
| **1** | Contradictions between sections. Needs do not match problem statement. Recommendations are disconnected. |
| **2** | Minor inconsistencies. Most sections align but 1-2 contradictions exist. Narrative flow is uneven. |
| **3** | Generally consistent. Needs match problem. Recommendations follow from analysis. Minor narrative gaps. |
| **4** | Fully consistent narrative. All sections reinforce each other. Clear logical progression from problem to recommendations. |
| **5** | Tight narrative where every section builds on the previous. Needs, constraints, and recommendations form a unified, contradiction-free argument. |

**Key signals:** Cross-section consistency, logical flow, needs trace to problem, recommendations follow from analysis, no contradictions.

---

## Weighted Scoring Formula

```
Final Score = (Specificity     × 0.25)
            + (Actionability    × 0.25)
            + (Traceability     × 0.20)
            + (Completeness     × 0.15)
            + (Coherence        × 0.15)
```

| Score Range | Status |
|-------------|--------|
| **4.0 - 5.0** | Excellent — ready for stakeholder review |
| **3.5 - 3.9** | Good — minor refinements recommended |
| **3.0 - 3.4** | Below threshold — one clarification loop required |
| **< 3.0** | Insufficient — re-run discovery with expanded input |

**Passing threshold: 3.5 / 5.0**

---

## Self-Assessment Protocol

After generating a discovery output, the orchestrator must:

1. **Score each dimension** (1-5) with a one-line justification.
2. **Compute the weighted total.**
3. **Flag any dimension scoring below 3.0** — these represent specific quality gaps.
4. **Record the score in the output's Quality Score footer.**

### Assessment Template

```
| Dimension     | Score | Justification                          |
|---------------|-------|----------------------------------------|
| Specificity   | [X]   | [Why this score — cite specific parts] |
| Actionability | [X]   | [Why this score — cite specific parts] |
| Traceability  | [X]   | [Why this score — cite specific parts] |
| Completeness  | [X]   | [Why this score — cite specific parts] |
| Coherence     | [X]   | [Why this score — cite specific parts] |
| TOTAL         | [X.X] | [Pass / Below Threshold]              |
```

---

## Below-Threshold Protocol

If the weighted total falls below 3.5:

1. **Identify the weakest dimension(s)** — any dimension scoring below 3.0.
2. **Generate targeted clarification questions** — one per weak dimension, focused on filling the specific gap.
3. **Execute one additional clarification loop:**
   - Present the questions to the user.
   - Integrate the new answers into the existing output.
   - Re-score only the affected dimensions.
   - Compute the new weighted total.
4. **If still below 3.5 after one loop**, flag for manual review and deliver the output with a quality warning.

### Clarification Question Templates by Dimension

| Weak Dimension | Clarification Prompt |
|----------------|---------------------|
| Specificity < 3 | "Can you give me a specific example of [vague need]? What does success look like in numbers?" |
| Actionability < 3 | "Who would own [next step]? What timeline is realistic? What is the first concrete action?" |
| Traceability < 3 | "You mentioned [claim] — can you recall a specific moment or quote that illustrates this?" |
| Completeness < 3 | "Are there constraints or stakeholders I might be missing? What edge cases worry you?" |
| Coherence < 3 | "I notice a tension between [A] and [B]. Which takes priority, or is there a way both can be true?" |

---

> _Discovery Orchestrator v2 — Quality Rubric_
