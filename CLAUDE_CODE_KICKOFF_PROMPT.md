# Kickoff Prompt for Claude Code

Paste this into Claude Code once you've cloned/opened this repo, to start Phase 0-1 work.

---

```
Read CLAUDE.md, RESEARCH_PROPOSAL.md, LIT_REVIEW.md, and TIMELINE.md in this repo before doing anything else.

Today's tasks (Phase 0-1 setup — mechanical work only, no research judgment):

1. For each paper in LIT_REVIEW.md's tables (both "Seed papers" and "Later papers" sections),
   create an empty notes file at notes/<firstauthor_year_shorttitle>.md using the structure
   in notes/TEMPLATE.md, with the citation and paper link pre-filled but everything else
   left blank for me to fill in after I actually read it.

2. Where a paper has an arXiv ID, try running scripts/fetch_paper.sh <id> <name> to download
   it into papers/. If a paper doesn't have an arXiv ID (e.g. ACL Anthology, Mendeley,
   ResearchGate), tell me and I'll grab it manually — don't guess at a URL.

3. Give me a simple markdown checklist (papers_to_read.md) of all papers with checkboxes,
   sorted in the order I should read them: start with the two closest to my proposal
   (BenHalluEval, K12-KGraph), then the rest.

4. Do NOT summarize any paper's content, fill in any "My Notes" fields, or draw conclusions
   about novelty/gaps — that part is mine to do after reading. If you're unsure whether
   something counts as "judgment" vs "mechanical," ask me first.

Stop after these four tasks and report back — don't move on to KG construction or data
pipeline work until I've told you the scope is locked with my advisor (see TIMELINE.md Phase 0).
```

---

## Notes on using this prompt
- If some arXiv IDs in LIT_REVIEW.md are placeholders/guessed, double check them against the actual paper page before fetching — a wrong ID will silently download the wrong paper.
- This sandbox environment (the one that built this scaffold) could not reach arxiv.org to test scripts/fetch_paper.sh — verify it works in your own Claude Code environment first, on one paper, before batch-running it on all ten.
- Re-run a version of this prompt whenever you add new papers to LIT_REVIEW.md's "Later papers" section.
