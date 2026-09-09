# Semester Timeline (Draft — adjust after advisor meeting)

Assumes a ~15-16 week semester, working solo, AI-assisted for implementation but not for the reading/judgment work.

## Phase 0 — Weeks 1-2: Advisor buy-in + scope lock
- Pitch RESEARCH_PROPOSAL.md to advisor, get feedback on subject/grade-band scope
- Lock: which subject (e.g., Physics or Biology), which grade band (e.g., Class 9-10), detection-only vs. detection+correction
- Confirm no overlapping unpublished work exists at your institution

## Phase 1 — Weeks 3-5: Literature review
- Read all seed papers in LIT_REVIEW.md fully, not just abstracts
- Expand search per "Gaps still to check" section
- Draft a 1-2 page related-work summary (your own words) — this becomes the paper's Related Work section later
- Do NOT start building until this phase produces a clear, defensible novelty statement

## Phase 2 — Weeks 6-9: Curriculum KG construction
- Source curriculum text (NCTB textbook PDFs or equivalent) for the locked subject/grade
- Design node/edge schema (adapt K12-KGraph's schema as a starting reference, don't copy blindly — Bangla curriculum structure may differ)
- Extract entities/relations (semi-automated with LLM assistance + your manual review pass)
- Build graph in Neo4j Aura (reusing your CTI project's infra pattern)
- Sanity-check: pick 20 random subgraphs, manually verify correctness

## Phase 3 — Weeks 10-12: Verification method + baseline tutors
- Implement claim extraction from LLM tutor responses (Bangla text -> candidate factual claims)
- Implement graph matching / path-consistency verification
- Run 3-5 LLMs (mix of general + Bangla-centric, e.g., include a Bangla-specific model as a contrast point) as "tutors" on your curriculum question set
- Build your ground-truth annotation set (150-300 QA pairs) — this is manual work, budget real time for it

## Phase 4 — Weeks 13-14: Evaluation + writing
- Compute precision/recall/F1 of your verifier against ground truth
- Compare against a baseline (e.g., simple NLI-based or LLM-as-judge baseline, so you can show graph-grounding adds value)
- Draft full paper sections in parallel: Method (easiest, write as you build), Results, then Intro/Related Work last

## Phase 5 — Weeks 15-16: Advisor review + submission prep
- Full draft to advisor for feedback
- Revise based on feedback
- Target venue decision (with advisor): local/regional CS conference vs. workshop vs. arXiv preprint first

## Parallel track (ongoing, not phase-bound)
- Keep LIT_REVIEW.md updated whenever you read something new, even off-schedule
- Keep a running "risks/decisions" log — advisors respond well to seeing you've thought through trade-offs, not just results

## Notes on pacing
This is intentionally NOT a "finish in days" plan. Phase 1 (literature) and Phase 3 (annotation) are the two places time most commonly gets underestimated — protect them.
