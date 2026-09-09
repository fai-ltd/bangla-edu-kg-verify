# CLAUDE.md — Working Rules for This Repo

This file is read by Claude Code at the start of sessions in this repo. It exists to keep AI-assisted work in its lane: acceleration on execution, not on judgment.

## Project
Bangla curriculum knowledge graph + graph-grounded factuality verification for LLM tutoring responses. See `RESEARCH_PROPOSAL.md` for the full pitch, `LIT_REVIEW.md` for prior work, `TIMELINE.md` for phase plan.

## Owner's working style (Fahim)
- Solo author, targeting a faculty advisor, aiming for international-caliber (not just regional) publication.
- Prefers to collect papers → read them personally → take his own notes → build from there. Do not read papers and write his lit-review notes for him. Fetching/downloading/organizing papers is fine; drawing conclusions from them for the paper is not.
- Comfortable with heavy AI assistance on implementation (scripts, pipelines, boilerplate) but wants the research judgment (novelty claims, annotation labels, what a failure mode means) to stay his own.
- Working alongside CTO duties at RubizCode and freelance work — sessions may be short and spread out. Always leave the repo in a state where picking back up is easy (clear TODOs, no half-finished uncommitted logic).

## What Claude Code SHOULD do in this repo
- Write/maintain data pipeline code (scraping, cleaning, chunking) once the source and schema are decided
- Write KG construction scripts (Neo4j ingestion, PyKEEN embedding pipelines) — reusing patterns from his prior CTI knowledge graph project where applicable
- Write claim-extraction and graph-matching verification code
- Write eval harnesses (precision/recall/F1, baseline comparisons, significance tests)
- Scaffold annotation tools (a simple UI/CLI for him and a second annotator to label QA pairs) — inter-annotator agreement is required for international-tier target, don't let this get skipped
- Keep LIT_REVIEW.md's tables and search log up to date mechanically (adding rows) — but never fill in "My Notes" with an AI-generated summary; leave it blank for him

## What Claude Code should NOT do
- Do not write novelty claims, related-work argumentation, or paper prose that asserts what the literature does/doesn't cover — that must come from Fahim's own reading
- Do not fabricate or assume dataset coverage (e.g., don't assume NCTB-SchoolText covers a subject without checking the actual file)
- Do not silently expand scope (e.g., adding subjects/grades beyond what's locked in RESEARCH_PROPOSAL.md) without flagging it as a decision for him to make
- Do not mark TIMELINE.md phases complete — only Fahim decides a phase is genuinely done

## Current phase
Check TIMELINE.md for the current phase. As of repo creation: **Phase 0 (advisor pitch + scope lock) — not yet started.**

## Immediate next actions (Phase 0-1)
1. Fahim reads the 10 papers in LIT_REVIEW.md and fills in "My Notes"
2. Fahim pitches RESEARCH_PROPOSAL.md to advisor, locks subject/grade scope
3. Once scope is locked, update RESEARCH_PROPOSAL.md Section 4 with the confirmed subject/grade
4. Check whether NCTB-SchoolText (data.mendeley.com/datasets/f3882ccczp) covers the locked subject — if yes, skip building a scraping pipeline and go straight to KG schema design

## Key technical references from prior work (reuse, don't rebuild)
- CTI knowledge graph project: Neo4j Aura + PyKEEN (TransE/RotatE embeddings), graph-proximity scoring — same infra pattern applies here, different content domain
