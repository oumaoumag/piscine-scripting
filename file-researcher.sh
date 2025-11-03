#!/bin/bash

# Find the line that starts with "It takes 12 honey."
grep -n "^It takes 12 honey" file-researcher/facts.txt

# Find all lines that contain the word "year"
grep -n "year" file-researcher/facts.txt