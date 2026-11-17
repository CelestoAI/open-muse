#!/bin/sh
set -eu

# Runs the Celesto CLI from a source checkout. Set CELESTO_REPO to that
# checkout; it defaults to a "celesto" folder next to this repository.
here=$(CDPATH= cd -- "$(dirname -- "$0")/../.." && pwd)
repo_root=${CELESTO_REPO:-"$here/../celesto"}
exec uv run --project "$repo_root" celesto "$@"
