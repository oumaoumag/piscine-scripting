#!/bin/bash
ls -1Atr | tail -n +2 | sed 's/$/\//' | tr '\n' ',' | sed 's/,$/\n/'
