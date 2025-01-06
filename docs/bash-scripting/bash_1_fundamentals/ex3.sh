#!/bin/bash

# Source: Labwork - Lab1 q4
# purpose: The read command - take user input name and greeting, list users logged into system
# useage: ./ex3.sh 
# solutions link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=bddb647b-4dd5-403b-92df-b20b00bc2f47
 
echo
echo "Lab1 - Question 4: Type a name and greet person"

echo
# echo -e "Enter your name:\c" # -e used to interpret the escaped characters
read -p "Enter your name " name
echo
# echo "Your name is $name" test if it works
echo    "Hello $name pleased to meet you"

echo
echo "Lab1 - Question 5: Find the number of people logged into the system"
echo
users=`who` # template literals - for commands
numUsers=`who | wc -l` #wc is the word count program gives us -l number of lines
echo "Users Logged in: $usersLoggedIn"; echo "Number of users logged in: $numUsers"
echo

exit
