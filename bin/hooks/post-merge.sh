#!/usr/bin/env bash

# This ensures that dependencies are installed locally whenever merging a commit
# that changed the shrinkwrap.

function shrinkwrap_changed {
  # note ORIG_HEAD is only set "by commands that move your HEAD in a drastic way"
  git diff-tree -r --name-only --no-commit-id ORIG_HEAD HEAD | grep --quiet "^npm-shrinkwrap$"
}

# update node_modules when shrinkwrap changes
if shrinkwrap_changed; then
  echo "Running 'npm install' to match new shrinkwrap..." >&2
  npm install --loglevel error
  npm prune
fi
