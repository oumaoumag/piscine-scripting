#!/usr/bin/env bash

do_add() {
    echo $(($1 + $2))
}

do_sub() {
    echo $(($1 - $2))
}

do_mult() {
    echo $(($1 * $2))
}

do_divide() {
    echo $(($1 / $2))
}

[[ $# -ne 3 ]] && >&2 echo "Error: expect 3 arguments" && exit 1

[[ ! $1 =~ ^-?[0-9]+$ ]] || [[ ! $3 =~ ^-?[0-9]+$ ]] && >&2 echo "Error: invalid number" && exit 4

case $2 in
    "+")
        do_add $1 $3
        ;;
    "-")
        do_sub $1 $3
        ;;
    "*")
        do_mult $1 $3
        ;;
    "/")
        [[ $3 -eq 0 ]] && >&2 echo "Error: division by 0" && exit 2
        do_divide $1 $3
        ;;
    *)
        >&2 echo "Error: invalid operator"
        exit 3
        ;;
esac