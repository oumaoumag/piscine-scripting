#!/bin/bash
ID="${1:-1}"
curl -s https://learn.zone01kisumu.ke/assets/superhero/all.json \
| jq -r ".[] | select(.id == $ID) | .name, .powerstats.power" \
| grep -E '^[A-Za-z0-9\ -]+$' \
| awk '{print "\""$0"\","}'
