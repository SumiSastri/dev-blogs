#!/bin/bash

# Source: Notes Bash part1.pdf  Pg20/ Bash cookbook Ch1
# Panopto link:
# purpose: Assigning data to variables
# version: 1.0  Date: 0/9/10/2024 author: Sumi Sastri
# execute: bash lab1/variables.sh 

echo
echo "Lesson 1.2: Variables as a store of data" 

echo
echo "NOTE:"echo "Variables have no spaces between assignment and data eg: var1="name"";
echo "It is good practice to put the variable in double quotes as eg above"
echo "echo -e is only for escape characters"

echo "Test Variable assignment"
echo
echo "Assign a variable for a name"
first_name="Rudolf"
echo "Reassign variable"
first_name="Bhanu"
echo "Your first name is $first_name"
echo


echo "Test Variable assignment to commands with back ticks"
echo
# Use template literals only to assign a command
# eg: pwd 
yourPath=`pwd`
echo $yourPath

echo "Test Variable assignment to commands parenthesis"
echo
hours=$(date +%H)

echo
echo "Create a variable called Pi as a string and number"
Pi=3.14
echo "Value of Pi as a string:" $Pi
value_Pi=3.14
echo "Value of Pi as a number:" $value_Pi
new_Pi1=$Pi
new_Pi2=$value_Pi
echo "Check new Pi values" $new_Pi1 $new_Pi2
echo
