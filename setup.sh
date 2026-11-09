#!/usr/bin/env bash
# One-shot setup: creates the GitHub repo, pushes the site, enables Pages via GitHub Actions.
# Prereqs: git, python3, and GitHub CLI (https://cli.github.com) logged in with `gh auth login`.
set -euo pipefail

OWNER="${OWNER:-chili-chiu}"
REPO="${REPO:-bioimage-index}"
VISIBILITY="${VISIBILITY:-public}"   # Pages on free plans needs a public repo

cd "$(dirname "$0")"

# 1. Point site_url at the final Pages URL
sed -i.bak "s#https://\[ORG-OR-USER\].github.io/\[REPO\]/#https://${OWNER}.github.io/${REPO}/#" zensical.toml && rm -f zensical.toml.bak

# 2. Generate the official Zensical workflow (does not overwrite existing files)
python3 -m venv .venv && . .venv/bin/activate
pip install --quiet zensical
zensical new . || true
zensical build --clean   # sanity check: fails here if something is wrong
printf '.venv/\nsite/\n' > .gitignore

# 3. Create repo and push
git init -q -b main
git add -A
git commit -q -m "Initial BioImage Index site"
gh repo create "${OWNER}/${REPO}" --"${VISIBILITY}" --source=. --remote=origin --push \
  --description "BioImage Index: federated, image-level search for public bioimaging data"

# 4. Enable Pages with GitHub Actions as the source
gh api -X POST "repos/${OWNER}/${REPO}/pages" -f build_type=workflow \
  || gh api -X PUT "repos/${OWNER}/${REPO}/pages" -f build_type=workflow

echo
echo "Done. Watch the deploy: https://github.com/${OWNER}/${REPO}/actions"
echo "Site will be at:        https://${OWNER}.github.io/${REPO}/"
