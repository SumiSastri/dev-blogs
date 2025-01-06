#!/bin/bash

# Source: Notes Bash part1.pdf page 20 onwards/
# Pantopo link: Wk 4 https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: demo if-else-elif-else
# useage: ./ex2.sh 

 
echo
echo "If-else-elif in a test"
echo

echo "Are you ok"
echo -e "Type Yes or No: "
read response
echo

if test "$response" = Yes
then
   echo "Glad to hear that"
elif test "$response" = No
then
  echo "Hope you feel better soon"
else
   echo "Type just one word Yes or No with capital letters, thank you"     
fi
echo

exit
