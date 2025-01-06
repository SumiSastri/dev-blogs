#!/bin/bash

# source: Labwork - solutions pdf
# useage: Practice lab 2 qs
# execute: bash lab2/ex6.sh 


echo " Write a script to read a max of 9 positional params using an array to store the params"

echo "The positional parameters are: $@"

paramsArray=($@)
params=$#
index=0
lastIndexNumber=$((params-1))
sumOfParamsArray=0


if [ $params -gt 9 ]; then
    echo "Error: Maximum of 9 positional parameters allowed."
    exit 1
fi

echo "Loop through the index and get the sum"

for (( index=0; index<=lastIndexNumber; index++ )); do
    # Print the current array element, followed by a plus sign if not the last element
    if [ $index -eq $lastIndexNumber ]
    then
        echo -n "${paramsArray[$index]} "  
    else
        echo -n "${paramsArray[$index]} + " 
    fi 
 (( sumOfParamsArray += paramsArray[index] ))
done  
# Print the total
   echo "Sum is: $sumOfParamsArray"
