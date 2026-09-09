#!/usr/bin/env bash
# fetch_paper.sh — download an arXiv paper PDF into papers/, named per LIT_REVIEW.md convention
#
# Usage:
#   ./scripts/fetch_paper.sh 2605.31483 benhalluegal_2026_bengali_hallucination
#   ./scripts/fetch_paper.sh <arxiv_id> <firstauthor_year_shorttitle>

set -euo pipefail

ARXIV_ID="${1:?Usage: fetch_paper.sh <arxiv_id> <output_name_without_extension>}"
OUT_NAME="${2:?Usage: fetch_paper.sh <arxiv_id> <output_name_without_extension>}"

PAPERS_DIR="$(dirname "$0")/../papers"
mkdir -p "$PAPERS_DIR"

URL="https://arxiv.org/pdf/${ARXIV_ID}"
OUT_PATH="${PAPERS_DIR}/${OUT_NAME}.pdf"

echo "Fetching ${URL} -> ${OUT_PATH}"
curl -sL "$URL" -o "$OUT_PATH"

if [ -s "$OUT_PATH" ]; then
  echo "Saved: $OUT_PATH"
else
  echo "Download failed or empty file — check the arXiv ID." >&2
  exit 1
fi

# Reminder: after downloading, add a row to LIT_REVIEW.md yourself (or ask Claude Code
# to add the row mechanically) — but fill in "My Notes" only after you've actually read it.
