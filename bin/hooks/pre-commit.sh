#!/usr/bin/env bash

# This ensures that dependencies are installed locally whenever merging a commit
# that changed the shrinkwrap.

function package_changes_staged {
  ! git diff --cached  --quiet -- package.json
}

# update shrinkwrap when spec changes
if package_changes_staged; then
  echo "Running 'npm shrinkwrap' to match new package spec..." >&2
  npm shrinkwrap
  git add npm-shrinkwrap.json
fi
