#!/usr/bin/env bash

if [[ $# -ne 2 ]]; then
    echo "Error: two numbers must be provided"
    exit
fi

if [[ ! $1 =~ ^-?[0-9]+$ ]] || [[ ! $2 =~ ^-?[0-9]+$ ]]; then
    echo "Error: both arguments must be integers"
    exit
fi

if [[ $2 -eq 0 ]]; then
    echo "Error: division by zero is not allowed"
    exit
fi

echo "$1 / $2" | bc