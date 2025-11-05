#!/bin/bash

response=$(curl -s https://learn.zone01kisumu.ke/assets/devops-branch/HeadTail.txt)

head -n 1 <<< $response
tail -n 1 <<< $response
