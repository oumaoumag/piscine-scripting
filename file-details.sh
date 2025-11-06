#!/bin/bash

# Navigate to the folder relative to this script
cd "$(dirname "$0")/hard-perm" || { echo "hard-perm directory not found"; exit 1; }

# List details: permissions, date, time, filename
ls -l --time-style=+%F\ %R | sed '1d' | awk '{print $1, $6, $7, $8}'
