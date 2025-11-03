#!/bin/bash
grep '^It takes 12 honey' file-researcher/facts.txt
grep -i year file-researcher/facts.txt | cut -d: -f2-
