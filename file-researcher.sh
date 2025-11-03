#!/bin/bash

# Find the line that starts with "It takes 12 honey."
grep '^It takes 12 honey' file-researcher/facts.txt | sed 's/^[0-9]*://'

# Find all lines that contain the word "year"
grep year file-researcher/facts.txt | sed 's/^[0-9]*://'