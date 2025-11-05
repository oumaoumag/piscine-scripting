#!/bin/bash

find . -type f -name "*.txt" -printf "%f\n" | sed 's/\.txt$//'

