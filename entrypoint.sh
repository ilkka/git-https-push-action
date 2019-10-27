#!/bin/sh -l

set -euo pipefail

git remote add upstream "$1"
git push upstream master