# Literature Review Tracker & Workflow

## How to use this file
Add one row per paper as you collect it. Don't summarize from memory — read the actual paper before filling in "My Notes." This file is meant to grow slowly and honestly, not get filled in one sitting.

## Seed papers (found during initial gap-check — READ THESE FIRST)
These are the papers that motivated this proposal. You have not read them in full yet — only abstracts/snippets. Reading them properly is step 1.

| # | Paper | Link | Why it matters | My Notes (fill in after reading) |
|---|---|---|---|---|
| 1 | BenHalluEval: Multi-Task Hallucination Evaluation Framework for Bengali | arxiv.org/abs/2605.31483 | First Bengali hallucination benchmark — direct positioning contrast | |
| 2 | K12-KGraph: Curriculum-Aligned Knowledge Graph for Benchmarking (Chinese K12) | arxiv.org/abs/2605.09635 | Closest methodological analog, different language | |
| 3 | Cross-Data KG Construction for LLM-enabled Educational QA (HCMUT, Vietnamese) | arxiv.org/abs/2404.09296 | Confirms "sparse prior work" pattern for non-English educational KGs | |
| 4 | FactNet: Billion-Scale KG for Multilingual Factual Grounding | arxiv.org/abs/2602.03417 | General-purpose multilingual grounding — check if Bangla is even covered | |
| 5 | GraphMASAL: Graph-based Multi-Agent System for Adaptive Learning | arxiv.org/abs/2511.11035 | Adjacent (learning-path planning, not verification) — clarify boundary | |
| 6 | Fact Verification on Knowledge Graph via Programmatic Reasoning (PGR) | aclanthology.org/2025.findings-emnlp.293 | General KG fact-verification method — possible technique to adapt | |

## Your normal workflow (documented so Claude Code / future sessions know how you work)
1. Collect papers (arXiv, ACL Anthology, Google Scholar, Semantic Scholar) into `papers/` as PDFs, named `firstauthor_year_shorttitle.pdf`.
2. Add a row to the table above (or a new section below for papers found later) with the citation and a one-line "why it matters."
3. Read the paper. Fill in "My Notes" yourself — this is the part that shouldn't be outsourced, since your read of the paper is what shapes your actual contribution claim.
4. Once you have ~15-20 papers read, draft the "Related Work" section of the actual paper — not before.

## Later papers (add as you find them)
| # | Paper | Link | Why it matters | My Notes |
|---|---|---|---|---|
| 7 | NCTB-QA: Large-Scale Bangla Educational QA Dataset | arxiv.org/abs/2603.05462 | 87,805 QA pairs from 50 NCTB textbooks (grades 1-10) — likely usable as a source/seed for your curriculum text, saves you the scraping/OCR step. NOT a knowledge graph, NOT graph-grounded verification — a reading-comprehension QA benchmark only. Check overlap with your subject/grade choice. | |
| 8 | NCTB-SchoolText: Curriculum-Aligned Bangla/English Text Corpus | data.mendeley.com/datasets/f3882ccczp | 58,872 passage chunks, 1,535 chapters, 34 subjects, grades 1-10, structured JSONL with grade/subject/chapter metadata. Explicitly intended for "retrieval-augmented tutoring systems, curriculum-grounded QA" — read this closely, it may be the ideal raw text source for your KG construction, meaning you could skip your own scraping/OCR step entirely. | |
| 9 | Unlocking Multiple BERT Models for Bangla QA in NCTB Textbooks | arxiv.org/abs/2412.18440 | ~3,000 human-annotated QA pairs, classes 6-10, BERT/RoBERTa/Bangla-BERT comparison | |
| 10 | UDDIPOK: Bangla reading comprehension dataset | ncbi.nlm.nih.gov/pmc/articles/PMC9929199 | 270 passages, 3,636 QA pairs from textbooks/exams/newspapers | |
| 11 | Textbook Dataset from NCTB (Mendeley / Kaggle mirror) | data.mendeley.com/datasets/gktc5y2sy2 · kaggle.com/datasets/jocelyndumlao/textbook-dataset-from-nctb | VERIFIED from Mendeley page: ~3,000 human-annotated QA pairs, classes 6-10, CSV, avg passage 387 words, CC BY 4.0. Appears to be the downloadable data behind paper #9 — confirm they're the same before citing both. Already on Kaggle, so loadable directly in a Kaggle notebook. | |
| 12 | Bangla-TextBook Corpus | (from Bangla-Instruct README on HuggingFace — locate primary source) | UNVERIFIED, from search snippet only: claimed 163 NCTB textbooks, Grades 6-12, 9,897,623 tokens, 697,903 sentences. Note grade range extends to 11-12, which NCTB-SchoolText does not cover. Find and check the primary source. | |
| 13 | BanglaRQA: Benchmark for Under-resourced Bangla Reading Comprehension QA | researchgate.net/publication/369299013 | UNVERIFIED, from search snippet only: reading-comprehension QA benchmark with diverse question-answer types. Not textbook/curriculum-specific as far as the snippet says. | |
| 14 | EduAdapt: QA Benchmark for Grade-Level Adaptability in LLMs | arxiv.org/abs/2510.17389 | English-language, not Bangla. Relevant only if grade-level appropriateness becomes part of the framing. | |
| 15 | Towards Personalized Education: Introducing NCTB Dataset (BRAC University thesis) | dspace.bracu.ac.bd/xmlui/handle/10361/26645 | Bangladeshi university thesis using an NCTB dataset — partially answers the "check BD thesis repositories" gap item below. | |

## Search log (so you don't repeat searches)
| Date | Query | Notes |
|---|---|---|
| 2026-09-08 | "Bangla LLM hallucination detection benchmark" | Found BenHalluEval — pivoted away from "first Bangla hallucination benchmark" framing |
| 2026-09-08 | "Bangla NLP research gaps underexplored" | Found many "first Bangla X" papers (regional NER, regional hate speech, medical NER, riddles) — confirms field pattern of task-porting; no curriculum-KG work found |
| 2026-09-08 | "knowledge graph grounded factuality verification Bangla education LLM tutoring" | Found K12-KGraph, HCMUT, FactNet, GraphMASAL, PGR — confirmed method exists elsewhere, absent for Bangla |
| 2026-09-08 | "NCTB Bangla textbook curriculum NLP dataset" | Found NCTB-QA, NCTB-SchoolText, older BERT-QA and UDDIPOK datasets — curriculum TEXT and QA-pair benchmarks already exist and are fairly mature; KG construction + graph-grounded verification is still the open piece |
| 2026-09-09 | "Bangla NCTB textbook dataset huggingface K12 curriculum QA" | Added rows 11-13, 15. Confirmed NCTB-SchoolText licence is CC BY 4.0, JSONL, classes 1-10 (1-8 individual, 9-10 combined), bilingual Bangla/English. Mendeley page does NOT enumerate the 34 subjects — subject coverage must be checked by downloading the file, not assumed. |
| 2026-09-09 | "Kaggle Bangla education dataset NCTB textbook question answer" | Found the NCTB textbook QA dataset is mirrored on Kaggle (jocelyndumlao/textbook-dataset-from-nctb), so it can be attached to a Kaggle notebook directly. |
| 2026-09-09 | "doubt solving AI EdTech dataset benchmark hallucination homework" | Searched for prior work framing verification around student doubt-solving specifically. Found EduAdapt (English, grade-level adaptability) and general hallucination benchmarks; no Bangla doubt-solving verification work surfaced in this search. NOT a thorough search — redo properly before making any claim about it. |

## IMPORTANT scope note (2026-09-08)
NCTB-SchoolText in particular may let you skip raw text collection/OCR entirely — it's already chunked, cleaned, and chapter-mapped. If it covers your chosen subject/grade well, use it as your KG's source text instead of re-scraping NCTB yourself. Read it closely before deciding your data pipeline in TIMELINE.md Phase 2.

## Gaps still to check before finalizing scope
- [ ] Read NCTB-SchoolText and NCTB-QA in full — decide if they can be reused as source text/seed QA rather than building your own from scratch
- [ ] Check Bangladeshi university thesis repositories (BRAC, NSU, BUET, DU) for unpublished related work
- [ ] Search for "Bangla RAG education chatbot" separately from "hallucination"
- [ ] Confirm BenHalluEval's public dataset/code (anonymous repo link in the paper) to see exactly what it does/doesn't cover
- [ ] Search specifically whether anyone has built a KG *on top of* NCTB-SchoolText or NCTB-QA already
