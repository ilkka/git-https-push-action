#!/bin/bash -l

set -euo pipefail

REMOTE=upstream-$(date +%s)

trap "git remote rm $REMOTE" SIGHUP SIGINT SIGTERM

git remote add $REMOTE "$1"
git push $REMOTE master
