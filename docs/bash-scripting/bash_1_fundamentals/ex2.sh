#!/bin/bash

# Source: Labwork - Lab1 q3
# purpose: string swaps - list files in path/folder change user path 
# useage: ./ex2.sh
# solutions link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=bddb647b-4dd5-403b-92df-b20b00bc2f47

echo
echo "Lab1 - Question 3: List files in a path or folder and display their names"

# REVISE ME

echo
echo "Test home directory"
echo if [-d ~] $? ; echo "If 0 then not home directory"; pwd
echo      

echo
read -p "Enter path/folder to list files" userPath
echo "You entered $userPath"
homePath=~ #tilda not recognised so assign tilda to a variable
echo "Home path is $homePath"
echo

echo "Change path using a string swap"
changedPath=${userPath/"~"/$homePath} #changedPath/"look for ~"/use a string swap make this homePath
echo "The changed path is $changedPath"
echo

echo "Display the long list of all .sh files in $changedPath"
ls -l $changedPath/*.sh #escape and use the period
echo
echo

exit
