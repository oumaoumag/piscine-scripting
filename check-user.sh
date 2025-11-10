#!/usr/bin/env bash

[[ $# -ne 2 ]] && >&2 echo "Error: expect 2 arguments" && exit 1

case $1 in
    -e)
        getent passwd "$2" > /dev/null && echo "yes" || echo "no"
        ;;
    -i)
        getent passwd "$2"
        ;;
    *)
        >&2 echo "Error: unknown flag"
        exit 1
        ;;
esac