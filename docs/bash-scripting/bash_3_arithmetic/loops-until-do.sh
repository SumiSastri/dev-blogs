#!/bin/bash

# Source: 
# Panopto link : https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# Link 1: https://ryanstutorials.net/bash-scripting-tutorial/bash-loops.php
# purpose: Until-do loop syntax and behaviour
# Execute: ./loops-until-do.sh 


echo "Lesson 2: Looping - while-do runs until condition is true/ until-do runs until condition false"


echo
temperature=1 # 
until [ $temperature -le 5 -a  $temperature -gt 1  ] # spaces around square brackets
  do
    ((temperature++))
    echo "Brr it's $temperature degrees I need a jumper"
done
echo
echo "The until-do temperature loop is done"
echo

# Pg 61 - try until do/ 62


# Example 2:
# counter=0
# until [ $counter -gt 3 ]
# do
#   echo i: $counter
#   ((counter=counter+1))
# done
# echo
# echo "The until-do counter loop is done"
# echo

exit
