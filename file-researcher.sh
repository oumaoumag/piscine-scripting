#!/bin/bash

FILE="file-researcher/facts.txt"

# Find the line that starts with "It takes 12 honey."
grep '^It takes 12 honey' "$FILE"

# Find all lines that contain the word "year"
grep -n 'year' "$FILE"