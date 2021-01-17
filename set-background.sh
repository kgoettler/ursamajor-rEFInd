#!/bin/bash

echo "Available backgrounds (./backgrounds):"
a=$(ls ./backgrounds)
c=0
for i in $a
do
    c=$(($c+1))
    printf "%3d) %s\n" $c $i
done

r=
read -p "Enter the number of background to set: " r

RED="\033[1;31m"
GREEN="\033[1;32m"
NC="\033[0m"

if ! ( echo $r | grep -qP "^\d+$" ) || [ $r -lt 1 ] || [ $r -gt $c ]
then
    printf "${RED}Error:${NC} incorrect number.\n"
else
    i=0
    for el in $a
    do
        i=$(($i+1))
        if [ $i -eq $r ]
        then
            cp "./backgrounds/${el}" background.png
            printf "${GREEN}Success:${NC} ${el} has been set as background.\n"
            break
        fi
    done
fi
