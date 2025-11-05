#!/bin/bash
ls -1Autp | paste -sd, - | sed 's/,$//'