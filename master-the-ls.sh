#!/bin/bash

# Use find for full control — this is the PROFESSIONAL way

find . -maxdepth 1 ! -name '.' -type d -exec printf '%s/\n' {} + \
       -o ! -name '.' -type f -printf '%s\n' {} + 2>/dev/null | 
  grep -v '/\.' | 
  sort -t '\0' -k 1.3 | 
  awk '{printf "%s%s", $0, (NR>1?",":"")} END {if(NR>0) print ""}'