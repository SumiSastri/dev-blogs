#!/bin/bash

# Source: 
# Panopto link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# Link1 : https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php
# purpose: while-do loop
# Execute: ./loops.sh 

echo
echo "Lesson 2: Conditional logic and loops"

# Explanation:
# The while loop executes a block of code while the statement evaluates as true

echo
total=$#

while [ $total -gt 0 ]; do
  echo $1
  shift 2
  total=$((total-2)) 
done
echo

echo "The while-do total loop is done"
echo

exit
