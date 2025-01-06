#!/bin/bash

# Source: Notes Bash part1.pdf / Page 29 & Bash part2.pdf Pg 1 onwards
# Execute: ./integers.sh 

echo
echo "Lesson 1.9: Integers"
echo

# Bash only allows integer based operations no decimals

# FIXME - DO THIS EXCERCISE
i=0 # initialise index
Test=($@) #assign list of args to a variable - Test not test
val=${[Test[0]]}
count=$# #the number of command line parameters
sum=$val

exit 