#!/bin/bash

# id: w2095779  author: Sumitra Sastri
# filepath: Desktop/westmin/bash-labs/revision
# date: 3 Nov 2024
# purpose: CHALLENGE: "Copy a file and read it taking user inputs, first input a file, second a string"
# useage: ./test1.sh <filename> <string>


# REFACTOR 2
# Notes:  
# The refactor drops the tests to 1 by using positional params in both steps
# useage: ./test1.sh ./test3.sh 

if [ $# -gt 1 -a -n $2 ] # check if params gt than 1 and 2nd param a string
then echo "Thank you typed your file is: $1 and string is: $2" # print and check
#  then 
# cp -f $1 ../mock-exam/test3.sh; cat ../mock-exam/test3.sh # check for the file in step 2
else echo "Please check you need a valid filename and a string"
fi
exit 0
echo "SCRIPT END"


# REFACTOR 1
# Notes:  
# The refactor drops the tests to 3 steps by testing positional params
# 

# Step 1: Take user input for a filename and string
# useage: ./test1.sh
# read -p "Enter 2 variables - a file and a string " fileName string

# Step 2: Test if there are 2 variables and print

# if [ $# -ne 2  ]
# then echo "Thank you typed your file is: $fileName and string is: $string"
# else echo "You must type a filename and string"
# fi
# exit 1

# Step 3: Test if $1 a file and $2 is not an empty string
# useage: ./test1.sh ./test3.sh hello

# if [ -f $1 -a -n $2 ]
# then echo "Your file is: $1 and you typed $2";
# else echo "Please check your filename and the string must contain at least 1 alphabet"
# fi
# exit 2

# then cp ./test3.sh ../mock-exam/test3.sh; cat ../mock-exam/test3.sh
# else echo "Please check your filename and the string must contain at least 1 alphabet"
# fi
# exit 3
# echo "SCRIPT END"


# ATTEMPT 1 in 5 steps - refactor to reduce steps
# Notes:  
# Uncomment and run each task of these scripts on an emac
# Note the else block is at the end of the file and has to be uncommented for each test


# Step 1: Prompt user to enter a file name "./temp.txt"
# read -p "Enter a file name: " fileName
# exit 1 

# Step 2: IF block test if file has ben created (use else block end of file)
# if [ -f ${fileName} ]; then echo "This file: $fileName exists proceed"
# exit 2 

# Step 3: test if file is readable
# if [ -r ${filename} ]; then echo "$fileName is readable proceed"
# exit 3 

# Step 4: test if file is executable
# if [ -x ${fileName} ]; then echo "$fileName is executable proceed"
# exit 4

# Step 5: Make file executable as else block if file is not executable
# chmod +x $fileName
# echo "$filename is now exectuable"
# exit 5

# Step 6: Check file is not a directory and open
# echo
# if [ -f ${fileName} -a !-d ${fileName} ]
# then echo "This is a file not a directory proceed" # uncomment and proceed
# then 
# cat $fileName
# echo $fileName
# echo

# NOTE: Uncomment this else block for each step
# else
# echo "STOP: check file again"
# echo
# fi
# echo
# echo "SCRIPT END"
# echo
# exit 
