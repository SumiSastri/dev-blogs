#!/bin/bash

# source: Notes Bash part1.pdf page 55 onwards/
# purpose: Equivalence tests
# Execute: ./ex3.sh 

x=10
y=$x

echo
echo "Test increment x by 1"
let incrementX=($x +1)
echo ${incrementX};
echo

echo "Test compare a and b"

a=10
b=1

if [ $a -gt $b ]; then echo "True"; else echo "False"; fi
if [ $a -eq $b ]; then echo "True"; else echo "False"; fi
if [ $a -lt $b ]; then echo "True"; else echo "False"; fi

exit
