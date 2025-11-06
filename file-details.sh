#!/bin/bash
DIR="${1:-.}"

[[ -d "$DIR" ]] || { echo "Error: '$DIR' not found" >&2; exit 1; }

ls -l --time-style=+%F\ %H:%M "$DIR" 2>/dev/null |
  tail -n +2 |
  awk '{printf "%s %s %s %s\n", $1, $6, $7, $9}'