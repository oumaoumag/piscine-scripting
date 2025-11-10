#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Error: wrong argument" && exit 1
[[ ! $1 =~ ^[0-9]+$ ]] || [[ $1 -lt 1 ]] || [[ $1 -gt 100 ]] && echo "Error: wrong argument" && exit 1

secret=$1
tries=5
moves=0

for ((i=0; i<5; )); do
    echo "Enter your guess ($tries tries left):"
    read guess
    
    [[ -z "$guess" ]] || [[ ! $guess =~ ^[0-9]+$ ]] || [[ $guess -lt 1 ]] || [[ $guess -gt 100 ]] && continue
    
    ((moves++))
    ((i++))
    ((tries--))
    
    if [[ $guess -eq $secret ]]; then
        echo "Congratulations, you found the number in $moves moves!"
        exit 0
    elif [[ $guess -gt $secret ]]; then
        echo "Go down"
    else
        echo "Go up"
    fi
done

echo "You lost, the number was $secret"