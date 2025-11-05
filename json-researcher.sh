#!/bin/bash

FILE=" https://learn.zone01kisumu.ke/assets/superhero/all.json"


 curl -s $FILE | jq -r '.[] | select(.id == 1) | {name: .name, power: .powerstats.power} | 
 "\(.name)\n\(.power)" ' | awk 'NR==1{print "\"name\": \"" $0 "\" $"} NR==2{print "  \"power\": " $0 ", $"}'
