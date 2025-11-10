#!/usr/bin/env bash
[[ $# -ne 2 ]] && echo "Error: two numbers must be provided" && exit
[[ $1 =~ ^-?[0-9]+$ ]] || { echo "Error: both arguments must be integers" && exit; }
[[ $2 =~ ^-?[0-9]+$ ]] || { echo "Error: both arguments must be integers" && exit; }
[[ $2 -eq 0 ]] && echo "Error: division by zero is not allowed" && exit
echo "$1 / $2" | bc