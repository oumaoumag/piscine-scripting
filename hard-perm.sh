#!/bin/bash

cd hard-perm || { echo "Folder not found"; exit 1; }

chmod 501 0 A
chmod 777 3

chmod 602 1 9
chmod 640 2 5 6 8
chmod 510 4 7
