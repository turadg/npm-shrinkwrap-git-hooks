#!/usr/bin/env bash

REPO=`git rev-parse --show-toplevel`
cd $REPO

ln -si ../../bin/hooks/pre-commit.sh .git/hooks/pre-commit
ln -si ../../bin/hooks/post-merge.sh .git/hooks/post-merge
