#!/bin/bash

# Source: Notes Bash part1.pdf page 20 onwards/ Bash cookbook Ch1
# Panopto link: 
# purpose: Accepting user inputs
# execute: ./user-inputs.sh 

echo
echo "Lesson 1.3: Accepting user inputs"

echo
echo "Test Take user input with command read"

echo -e "Enter your age: \c"
read age # read the input and save into a variable
echo "Your age is $age" # print the variable

echo
echo "Test Take user input with command read-p"

read -p "Enter your first name: " first_name # no \c with read command
echo "Your first name is $first_name"
echo "Hi $first_name, just double checking, your age is $age?"
echo

echo
echo "Test Accept default value"
read -ep "Default value" -i "Blue" favcolour;

echo
echo "Test Silent mode"
read -s "Read in silent mode - type password I can't see it"

echo
echo "Test Arrays and positional params"
read -a "Write a list - saves this to an array structure"

echo
echo "Test Character limit on entry"
read -n "Only allows a certain number of characters"

echo
echo "Test Select and complex interations"
select myList in bird dog fish quit; do echo "you selected $animal"; break
do 
 case $myList in
   bird) echo "I know how to fly" ;;
   dog) echo "I know how to run";;
   quit) break;;
   fish) echo "I know how to swim";;
   *) echo "Hey that was not an option!" ;;
esac
done    

exit
