#!/bin/bash

# Source: Notes Bash part1. Pg 6 onwards/ Bash cookbook Ch1/ Bash part2 26-30
# Panopto Link:
# purpose: How to print a string, test strings, use string substition
# execute: ./strings.sh 

echo
echo "Lesson 1.1: Strings"

echo
echo "Test Print strings"
echo
echo "Hello world"
printf "%s\n" "This is also a string - both echo and printf valid commands"
echo

echo
echo "Test String match tests"
echo
if [ "cat" = "dog" ]; then echo "True the 2 values are the same"; else echo "False the 2 values are not the same"; fi
if [ "cat" = "cat" ]; then echo "True the 2 values are the same"; else echo "False the 2 values are not the same"; fi
if [ -z "cat" ]; then echo "True the value is empty"; else echo "False the value is not empty"; fi
if [ -n "cat" ]; then echo "True the value is not empty"; else echo "False the value is empty"; fi
echo

echo "Test Transform-Translate with tr command"
echo
echo "good morning" | tr "[a-z]" "[A-Z]"
echo


echo "Test Number of char command"
echo
hello="hello"; echo ${#hello}
echo


echo "Test Extract string values"
echo
hello="hello world"; echo ${hello:2:5} # string position length
echo

echo "Test Strings as ASCII Numbers values"
echo
numbers=31233090sa09fsa; echo ${numbers#3*0} # right to left must start with 3 go up to first 0
numbers=31233090sa09fsa0; echo ${numbers##3*a} # goes from 3 all the way to the last a removes everything
#Note goes from # to ## first to last - no stops in between
numbers=1233090sa09fsa0; echo ${numbers%3*0} # move from left to right zero end/ remove first 3
numbers=1233090sa09fsa0; echo ${numbers%%3*0} # zero end remove all occurences of 3
echo

echo "Test number of lines in a file"
cat -n lab1/user-inputs.sh 

exit
