#!/bin/bash

# source: Labwork - Lab2 q1 & q2
# purpose: positional params intro
# useage: ./ex1.sh 

# echo -e "Enter your name:\c"
# read name
# echo "Your name is $name"
# echo
# read -p "Enter your name" fname
# echo "Hi $fname"
# echo
# exit

# set Positional params
echo
echo "Lab2: How to set and read positional params"
echo
set first_name second_name postal_address email_address
echo
echo "The number of params are: $#"
echo "The 3rd param is: $3"
echo "The script name is $0"
echo "The list of params is: $*"
echo "Print all params: $@"
echo "The PID of the current pocess is $$"
echo "The exit status of the last command is $?"
echo 

exit
