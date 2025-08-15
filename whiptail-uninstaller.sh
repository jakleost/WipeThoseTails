#!/bin/bash

# Package list with descriptions yaaaay
mapfile -t pkg_list < <(pacman -Qi | awk -F ': ' '
/^Name/ {name=$2}
/^Description/ {print name "|" $2}
')

