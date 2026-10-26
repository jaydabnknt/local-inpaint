#!/usr/bin/env bash
# Usage: ci/run.sh "<step name>" <command...>
# Runs a command, and if it fails, reports the last lines of its output as a
# GitHub error annotation so the failure is visible without opening raw logs.
name="$1"; shift
log="$(mktemp)"
set -o pipefail
"$@" 2>&1 | tee "$log"
status=$?
if [ $status -ne 0 ]; then
  tail_text=$(grep -v '^\s*$' "$log" | tail -n 40 | sed 's/%/%25/g' | sed ':a;N;$!ba;s/\r//g;s/\n/%0A/g')
  echo "::error title=${name} failed (exit ${status})::${tail_text}"
fi
exit $status
