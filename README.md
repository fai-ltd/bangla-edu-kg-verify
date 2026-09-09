# Bangla Curriculum-KG Verification — Project Scaffold

This is a working scaffold, not a finished proposal. Everything here is a draft you should challenge, correct, and rewrite as you do real reading and work.

## Files
- `CLAUDE.md` — working rules for any Claude Code session in this repo (what it should/shouldn't do — keeps AI help on execution, not research judgment)
- `RESEARCH_PROPOSAL.md` — the current draft problem statement, contribution claims, and elevator pitch for your advisor
- `LIT_REVIEW.md` — literature tracker + your normal collect-read-note workflow, pre-seeded with 10 papers found during the initial gap-check
- `TIMELINE.md` — a 15-16 week phased plan, paced for solo work with AI-assisted implementation
- `papers_to_read.md` — the 10 seed papers in suggested reading order, with checkboxes
- `CLAUDE_CODE_KICKOFF_PROMPT.md` — a ready-to-paste prompt to start a Claude Code session on Phase 0-1 mechanical setup (fetching PDFs, creating notes stubs)
- `notes/` — one pre-created stub file per seed paper (from `notes/TEMPLATE.md`) — fill these in yourself after reading, don't outsource
- `scripts/fetch_paper.sh` — helper to download an arXiv PDF into `papers/` by ID (run locally — this sandbox couldn't reach arxiv.org to test it)

## Repo layout
```
/papers/               # downloaded PDFs, named firstauthor_year_shorttitle.pdf (empty until you fetch them)
/notes/                # one reading-notes file per paper, pre-stubbed, TEMPLATE.md for new ones
/scripts/              # fetch_paper.sh and future automation
/data/curriculum/      # sourced textbook text (once Phase 2 starts)
/kg/                   # graph construction scripts, Neo4j exports (once Phase 2 starts)
/verification/         # claim extraction + graph matching code (once Phase 3 starts)
/eval/                 # ground-truth annotations, eval scripts, results (once Phase 3-4 starts)
CLAUDE.md
RESEARCH_PROPOSAL.md
LIT_REVIEW.md
TIMELINE.md
papers_to_read.md
CLAUDE_CODE_KICKOFF_PROMPT.md
```

## First real step
Don't touch code yet. Open `papers_to_read.md`, work through it in order, and fill in the matching `notes/*.md` file as you go. The proposal's novelty claim depends entirely on what those 10 papers do and don't cover — verify it yourself before pitching your advisor. Once all 10 are read, revisit `LIT_REVIEW.md`'s open gap-checks, then move to Phase 0 of `TIMELINE.md` (advisor pitch).
