#!/bin/bash

# Package list with descriptions yaaaay
mapfile -t pkg_list < <(pacman -Qi | awk -F ': ' '
/^Name/ {name=$2}
/^Description/ {print name "|" $2}
')


whiptail --scrolltext --checklist "test text" 40 130 0 
