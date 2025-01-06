#!/bin/bash

# source: Labwork - solutions pdf
# purpose: use the shift operator
# useage: ./ex7.sh 

# this is a repeat of ex6.sh
echo " Write a script to read a max of 9 positional params"

params=$#
paramsArray=("$@") 
count=0

sumOfParams=0

if [ $params -gt 9 ]; then
    echo "Error: Maximum of 9 positional parameters allowed."
    exit 1
fi

echo
echo "Add all the params with the shift command and display the sum"
echo

    # while the params are less than the index/ shift the index and add index previous index to get the sum of params
while [ $count -lt $params ]; do
     shift
    ((count++))
    (( sumOfParams += $1 ))

    # Stop an infinite loop
    if [ $count -eq $((params - 1)) ]; then
        echo -n "Last param: $1 "  # Last parameter, no plus sign
    else
        echo -n "Add $1 + "  # Not the last parameter
    fi
   
done  
# Print the total
echo "Sum of the params is = $sumOfParams"

