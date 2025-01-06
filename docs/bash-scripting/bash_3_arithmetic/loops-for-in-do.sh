#!/bin/bash

# Sources: Bash part 1 pg 54 onwards
# Panopto link : https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# Example link 2: https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php
# Example link 1: https://linuxize.com/post/bash-increment-decrement-variable/
# purpose: Arrays and the for-in loop
# useage: ./loops-for-do.sh

echo
# Test for loop  - runs while list is known
# for  fruit in $fruits 
# do
#   echo ${fruits[*]}
# done
# echo

echo "Test for-in-do array loop"
echo  #(Bash part 1 pg 55)
fruits="apples pears oranges"
for fruit in $fruits; echo ${fruits[*]}; done
echo

echo "Test for-in-do range loop"
for i in {1..5}; do echo "$((i++))"; done

# echo
# fruits=(apples pears oranges) #no space with parenthesis
# for i in ${fruits[@]}; do echo $i; done
# echo

echo "The for-do fruits loop is done"
echo



exit
