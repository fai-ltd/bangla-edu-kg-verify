# Research Proposal (Draft v0.1)

## Working Title
**Graph-Grounded Factuality Verification for Bangla Educational Tutoring Systems**
(Alt titles to test with advisor: "BanglaEduKG", "Curriculum-KG Verification for Bangla LLM Tutors")

## Status
Draft — not yet reviewed by advisor. Treat every claim below as provisional until the literature review (see LIT_REVIEW.md) confirms/refutes it.

---

## 1. Problem Statement

LLM-based tutoring and Q&A systems are increasingly used by Bangla-speaking students (EdTech platforms, homework helpers, chatbot tutors), but there is no mechanism to verify that an LLM tutor's answer is *actually consistent with the specific curriculum* a student is studying. General hallucination benchmarks (e.g., BenHalluEval, the first dedicated Bengali hallucination benchmark) score whether an LLM's output is hallucinated relative to open-domain fact sources — they do not check consistency against a specific, structured curriculum, and they do not verify via structured knowledge (they use LLM-as-judge / entailment-style scoring, not graph traversal).

Separately, curriculum-aligned knowledge graphs for grounding and verifying LLM outputs exist for other languages (e.g., a curriculum KG for Chinese K-12 education with concept/skill/exercise node types and prerequisite/verifies edges; a smaller such effort for Vietnamese university content). No equivalent resource or method exists for Bangla curriculum content, and the Vietnamese-language paper explicitly notes this kind of resource is "sparse" even for their own language — for Bangla, a targeted search turned up none at all.

**Gap**: No Bangla curriculum knowledge graph exists, and no method has been proposed for graph-grounded (as opposed to LLM-judge-based) factuality verification of LLM tutoring responses in Bangla.

## 2. Proposed Contribution

1. **A Bangla curriculum knowledge graph** (scope: pick ONE subject + grade band to keep this solo-feasible — e.g., NCTB Class 9-10 Physics or Biology) with node types (Concept, Fact, Exercise, Chapter, Prerequisite) and typed edges (is_a, prerequisite_for, tests_concept, relates_to), built from textbook/curriculum source text.
2. **A graph-grounded verification method**: given an LLM tutor's Bangla response to a curriculum question, extract its factual claims, map them onto the KG, and verify via subgraph matching / path-consistency (contrast this with LLM-as-judge approaches like BenHalluEval — this is a structural, not a semantic-similarity, check).
3. **An evaluation**: run several LLMs (open-source + API) as "tutors" on curriculum questions, use your verifier to catch factual drift, and report precision/recall against manually-labeled ground truth (a small human-annotated test set you build yourself).

## 3. Related Work Landscape (fill in as you read — see LIT_REVIEW.md)

| Work | What it does | How this proposal differs |
|---|---|---|
| BenHalluEval (2026) | First Bengali hallucination benchmark; LLM-as-judge, dual-track scoring across QA/summarization/reasoning | General-domain, no curriculum structure, no graph grounding, benchmark-only (not a deployable verifier) |
| K12-KGraph | Curriculum-aligned KG for Chinese K-12; used for both benchmarking and SFT training data | Different language/curriculum entirely; no Bangla equivalent exists |
| HCMUT educational KG (Vietnamese) | KG-based QA for Vietnamese university content | Notes sparse prior work for their own language; smaller scope; not Bangla |
| FactNet | Billion-scale multilingual factual grounding KG | General-purpose, not curriculum-specific, not built for tutoring verification |
| GraphMASAL | Graph-based multi-agent adaptive learning system | Focused on learning-path planning, not factuality verification |

**Action item for you**: this table is a starting skeleton, not a finished review. Pull the actual papers (see LIT_REVIEW.md workflow) and correct/expand it — do not present this table to your advisor until you've read the primary sources yourself.

## 4. Why This Is Solo-Feasible (per your constraints)

- No sensitive data required (curriculum text is public; NCTB textbooks are freely available).
- You already have the toolchain from the CTI knowledge graph project: Neo4j Aura + PyKEEN (TransE/RotatE) transfers directly to building and embedding the curriculum KG.
- Scope is bounded by picking ONE subject/grade band — do not attempt "all of NCTB curriculum" solo.
- AI-assisted coding fits naturally: claim extraction pipelines, graph construction scripts, and eval harnesses are all things Claude/agents can accelerate, while the research judgment (what counts as a valid claim match, how to label ground truth, what the paper argues) stays yours.

## 5. Open Risks / Things to Resolve With Advisor

- Scope of curriculum (subject + grade band) — needs advisor input, possibly tied to what they can help access/validate.
- Ground-truth annotation is on you alone — realistic size for a solo semester project (suggest: 150-300 QA pairs, not thousands).
- Whether "verification" should also attempt *correction* (flagging + fixing) or just *detection* (flagging only) — detection-only is more solo-feasible; correction is a stretch goal.
- Need to confirm no overlapping unpublished work exists at your own or advisor's institution — ask directly.

## 6. Target Venue Tiers (decide later, design decisions now affect this)

| Tier | Example venues | What it requires beyond current scope | Realistic timeline |
|---|---|---|---|
| Regional | ICCIT, ICECE, STI, similar IEEE regional conferences | What's already scoped: 1 subject/grade, 150-300 annotated pairs, 1 baseline | A few months solo |
| International (realistic target) | BLP Workshop (Bangla Language Processing, ACL Anthology-indexed, co-located with major NLP conferences) | 2 annotators + inter-annotator agreement (kappa), 2-3 baselines, 2-3 subjects/grades, full public release of KG+code+annotations, failure-mode analysis (not just aggregate scores) | 5-7 months solid work |
| Flagship (ACL/EMNLP/NAACL main or Findings) | — | Not realistic solo/first-paper — needs method-level novelty beyond language-porting, much larger scale, usually multi-author, 1-2 years | Not the near-term target |

**Decision point**: build the MVP for the regional bar, but make the two cheap-now/expensive-later choices (second annotator, 3 baselines instead of 1) from the start, so the door to BLP Workshop stays open without redoing work. Revisit this table honestly after Phase 3 (baselines running) — see TIMELINE.md.

## 7. Elevator Pitch (for advisor email/meeting)

> "BenHalluEval just gave Bangla NLP its first general hallucination benchmark, but it scores LLM answers against open-domain judges, not against a specific curriculum. Meanwhile, curriculum-grounded knowledge graphs exist for Chinese and (sparsely) Vietnamese education, but nothing exists for Bangla. I want to build a small Bangla curriculum knowledge graph for one subject and grade band, and a graph-based (not LLM-judge-based) method to verify whether an LLM tutor's answer is actually consistent with that curriculum. I already have the KG tooling from my CTI knowledge graph project (Neo4j, PyKEEN, TransE/RotatE) — this applies the same skills to a new, unfilled problem."
