#!/bin/bash
ls -1At | tail -n +2 | grep -v '^\.' | while IFS= read -r f; do
    [ -d "$f" ] && printf "%s/," "$f" || printf "%s," "$f"
done | sed 's/,$/\n/'