#!/bin/bash

# purpose: Demo how filtering and pattern matching of characters and patterns in the FS
# useage - copy and paste into terminal in a directory with several files
# source: Pantopo link(https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=1e26546d-0a85-4656-88b6-b214010af668)

# Execute: bash lab4/expansions-types.sh


echo
echo "TEST brace expansion"
echo {1..10}; echo {10..1}
echo

echo
echo "TEST char expansion"
echo {a..z}; echo {Z..A}
echo

echo
echo "TEST pad left FIXME number expansion with intervals"
echo {01..100}; echo {1..100..25}; echo {a..z..5}
 {095 .. 1000..100}
echo

echo
echo "TEST command expansion"
hours=$(date +%H); minutes=$(date +%M) #instead of back ticks
echo "Time is $hours:$minutes"

echo
echo "TEST arithmetic expansion"
add=$((2+2))
echo $add


echo
echo "TEST param expansion FIXME - comprehension"
value=(cat dog mouse)
echo "$value is value of param"
echo ${value:1:9}


echo "Single character match ? for a single character * wild card"

ls *.sh
ls *[a-z]
ls temp*.txt


echo "Test ranges [][-] - in the range each letter is this or... empty space/ commas not delimiters"
ls [a-cl-z]*.txt
cat test[1-3].sh

echo "Ranges ask for what the file starts with - for 2 alphabets [][]"

echo "Filtering files and matching patterns - False friend to character matching above"
ls +([a-e])[t-z] # the file has one or more of these characters in the first letter of the file
ls ?([0-9a])[t-z] # the file zero or 1 pattern matching and the file is 2 characters only 
ls !([a-e])[t-z] # should not start with a to e


cd lab1
ls ex?.sh to list files with the extension
ls ex* - without the file extension lists all the files containing ex
ls [euv]* - lists files starting with the alphabets in the square brackets
cat ex[1-3].sh - opens the files in the range
cat ex[1-34].sh - opens the range and the last file - 4 no comma separator
ls *.* [l-z] wild card for both sides

