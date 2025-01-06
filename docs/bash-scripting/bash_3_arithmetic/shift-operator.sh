#!/bin/bash

# Source: Notes Bash part2.pdf Page 2
# Lecture link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: Demo the shift operator
# useage: See each individual challenge for useage

echo
echo "The shift operator"
echo

echo "Test1 - see how it works"
# Useage 1:  bash lab3/shift.sh 1 2 3 4 5 6 7
# while test $# -gt 0
# do
#     echo "Argument 1 is now $1"
#     shift
# done

# Output
# Argument 1 is now 1
# Argument 1 is now 2
# Argument 1 is now 3
# Argument 1 is now 4
# Argument 1 is now 5
# Argument 1 is now 6
# Argument 1 is now 7

# echo "Current values of parameter 1 and 2: " $1 and $2
# shift 3
# echo "After 3 shifts: " $1 and $2
# shift 0
# echo "After 0 shift: " $1 and $2
echo "Test1 done"
echo
#Output
# Current values of parameter 1 and 2:  1 and 2
# After 3 shifts:  4 and 5
# After 0 shift:  4 and 5

echo "Test2 - add positional params and see how it works"
# Usage: ./shift-operator.sh bob jones hammer sword lineup quit
# first_name=$1
# second_name=$2
# tools=$3
# weapons=$4
# action=$5
# end=$6
# # shift works like a factory line 1st element drops off the conveyor belt after being processed
# echo "arg1 is $first_name arg2 is $second_name, script name is $0"
# shift
# # Add a 3rd argument to the command line
# echo "Arg1 has shifted and is: $1 Arg2 is :$2,  script name is $0"
# shift
# echo "Arg1 has shifted and is: $1 Arg2 is :$2, Arg3 is: $3, and Arg4 is $4, script name is $0"
# echo

echo "Test2 done"
echo


echo "Test3 - while loop while there are elements print"
# run bash lab3/shift-operator.sh bob jones hammer sword lineup quit
# echo
# while (($#)); do echo $1; shift; done

echo "Test3 done"
echo

echo "Test4 - until loop until there are no elements print"
# until ((!$#)); do echo $1; shift; done

echo "Test4 done"
echo

echo "Test5 only use one arg"
# You need to use the first argument $1 as an anchor and shift all arguements ensuing to the left
# args=$1 
# options=$1

# firstName=$1
# secondName=$1

# echo "$1"
# shift

# echo "$1"
# shift

# echo "$1"

echo "Test5 done"
echo