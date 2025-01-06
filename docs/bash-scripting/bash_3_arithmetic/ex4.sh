#!/bin/bash

# source: Bash tutorial 2
# purpose: Create and test positional params in a file
# useage: ./ex4.sh 

echo
echo "Lab3 - Question 1"
echo

echo "Create positional params with a list of files"
# define variable for all positional variables
files=$#
# set variables
set lab3/ex1.sh lab3/ex2.sh lab3/ex3.sh
# set 1st position variable
file=$1
# print all variables
echo "Print all params: $@"


echo
if test -f $file -a -r $file
then
echo "Success: $file exists "
echo
echo "SEE CONTENTS OF $file:"
echo
cat $file
else
echo "Fail: No such file"
fi
echo
echo "--SCRIPT END--"
echo

exit
