#!/bin/bash

ls -l hard-perm --time-style=+%F\ %R | sed '1d' | awk '{print $1, $6, $7, $NF}'