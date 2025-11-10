#!/usr/bin/env bash

[[ $# -ne 1 ]] && echo "Error: wrong argument" && exit 1
[[ ! $1 =~ ^[0-9]+$ ]] || [[ $1 -lt 1 ]] || [[ $1 -gt 100 ]] && echo "Error: wrong argument" && exit 1

secret=$1
tries=5

for ((i=1; i<=5; i++)); do
    echo "Enter your guess ($tries tries left):"
    read guess
    
    [[ -z "$guess" ]] || [[ ! $guess =~ ^[0-9]+$ ]] || [[ $guess -lt 1 ]] || [[ $guess -gt 100 ]] && continue
    
    if [[ $guess -eq $secret ]]; then
        echo "Congratulations, you found the number in $i moves!"
        exit 0
    elif [[ $guess -gt $secret ]]; then
        echo "Go down"
    else
        echo "Go up"
    fi
    
    tries=$((tries - 1))
done

echo "You lost, the number was $secret"