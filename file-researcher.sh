#!/bin/bash

# Find the line that starts with "It takes 12 honey."
grep "^It takes 12 honey" file-researcher/facts.txt

# Find all lines that contain the word "year"
grep -i "year" file-researcher/facts.txt | cut -d: -f2-
