#!/bin/bash

curl -s https://learn.zone01kisumu.ke/assets/superhero/all.json \
| jq -r ".[] | select(.id == 1) | .name, .powerstats.power" \
| grep -E '^[A-Za-z0-9\ -]+$' \
| awk '{print "\"", "\","}'
