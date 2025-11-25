#!/usr/bin/env bash
set -euo pipefail

# Usage: ./deploy_to_github_pages.sh [repo-name]
# - Authenticates with GitHub CLI (opens browser if needed)
# - Creates a public repo (default: network-regression-lecture)
# - Pushes this directory to main
# - Enables GitHub Pages on main at the repo root

REPO_NAME="${1:-network-regression-lecture}"
DEFAULT_BRANCH="main"

if ! command -v gh >/dev/null 2>&1; then
  echo "Install GitHub CLI first: https://cli.github.com/ (e.g., brew install gh)" >&2
  exit 1
fi

if ! gh auth status >/dev/null 2>&1; then
  echo "Opening browser for GitHub login..."
  gh auth login -w
fi

if [ ! -d .git ]; then
  git init
fi

git checkout -B "$DEFAULT_BRANCH"

git add .
if ! git diff --cached --quiet; then
  git commit -m "Publish lecture to GitHub Pages"
fi

if ! git remote | grep -q "^origin$"; then
  gh repo create "$REPO_NAME" \
    --public \
    --source . \
    --remote origin \
    --push \
    --disable-issues \
    --disable-wiki
else
  git push -u origin "$DEFAULT_BRANCH"
fi

if gh api "repos/:owner/$REPO_NAME/pages" >/dev/null 2>&1; then
  gh api -X PUT "repos/:owner/$REPO_NAME/pages" \
    -f source[branch]="$DEFAULT_BRANCH" \
    -f source[path]="/"
else
  gh api -X POST "repos/:owner/$REPO_NAME/pages" \
    -f source[branch]="$DEFAULT_BRANCH" \
    -f source[path]="/"
fi

PAGES_URL="$(gh api "repos/:owner/$REPO_NAME/pages" -q '.html_url')"
echo "GitHub Pages is building → $PAGES_URL"
