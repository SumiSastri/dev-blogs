#!/bin/bash

# source: Labwork - Bash cookbook
# Link to page: https://learning.oreilly.com/library/view/bash-cookbook/9781788629362/48612044-d2aa-46b8-9a44-53fc3d903177.xhtml
# purpose: Write single line loops/ if-else ; for-in; while-do;
# useage:  ./ex4.sh 

echo
echo "TEST 1 single line if statement"

echo
century=100
if [ $century -eq 100 ]; then echo "The batsman has hit a century!" ; fi
echo
echo "DONE exit 1"

echo
echo "TEST 2 single line for-do loop"

echo
teamMembers=( Abi Abe Abdul )
for teamMember in $teamMembers; do echo "Team players are ${teamMembers[*]}" ; done
echo
echo "DONE exit 2"

echo
echo "TEST 3 single line while-do loop"

# echo - "GOTCHA infinite loop"
# x=5
# while [ $x -lt 10 ]; do echo $x; sleep 2;  done
# echo

echo
# counter=3  
# while [ $counter -le 5 -a  $counter -gt 1 ]; do ((counter++)); echo -e "$counter \c"; done
# echo
# echo
# echo "DONE exit 3"

echo
# exit


dataArr=(`cat ./data.txt`)
echo "$dataArr"
for data in $dataArr; do echo "Data in array is: ${dataArr[*]}" ; done
