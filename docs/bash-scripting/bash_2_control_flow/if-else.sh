#!/bin/bash

# Source: Notes Bash part1.pdf pg 36 onwards
# Panopto link:
# Panopto link 2: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: Controlling the flow of data basic logic and statements
# Execute: ./if-else.sh 

echo
echo "Lesson 1.5 Control flow if statement/ if-else/ if-then-else"

# Note: syntax is if []; then/ else /fi
echo
echo "Test1 age If-else"

# echo
# echo -e "Please enter your age: \c"
# read age 
# echo "Your age is $age" 

# echo
# if [ ${age} -lt 18 ]
# then
#  echo "You must be 18 or older to see this movie"
#  else
#  echo "Please buy a ticket for the show"
# fi
# echo

echo "Exit 1"
echo

# Note: syntax is if-then-else/ fi
echo
echo "Test2 age If-then-else"

# echo -e "Enter the temperature: \c"
# read temperature # read the input and save into a variable
# echo -e "The temperature is $temperature degrees"  # print the variable
# if [ "$temperature" -gt 18 ]; then echo "It's getting warmer..."; else echo "Put on a jumper"
# fi
# echo

echo "Exit 2"
echo

echo "Test credentials" 
echo

# read -p "Type your user name: " user # Take input and save in variable user
# read -p "Type your password: " pass #Read in silent mode - invisible
# echo "You typed $user $pass ... checking credentials";

# echo
# if [ "$user" == "bob" ] && [ "$pass" == "123" ]; then echo "Login successful."
# else
#   echo "Invalid credentials."
# fi
# echo

echo "Exit 3"
exit 
