#!/bin/bash
# hard-perm.sh – Level 5 perfection

cd hard-perm || { echo "Folder not found"; exit 1; }

# Directories: 0, 3, A
chmod 101 0 A          # d--------x
chmod 775 3            # drwxrwxrwx

# Files
chmod 201 1 9          # -r------w-
chmod 604 2 8          # -rw----r--
chmod 550 4 7          # -r-x--x---
chmod 660 5 6          # -r--rw----