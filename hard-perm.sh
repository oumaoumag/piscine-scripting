#!/bin/bash
# hard-perm.sh – Set specific permissions for each file and directory

cd hard-perm || { echo "Folder not found"; exit 1; }

# Directories
chmod 501 0 A
chmod 777 3

# Files
chmod 604 1 9
chmod 640 2 5 6 8
chmod 550 4 7
