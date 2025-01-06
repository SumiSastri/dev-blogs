#!/bin/bash

# purpose:  7SENG012W Practice  Lab Test 1
# author: Sumitra Sastri
# id: w2095779
# file:  w2095779.sh
# date: 3 Nov 2024


echo "Check at least 1 positional param"

for i in "$@"; do echo $i; done ; 
echo "The number of params the user typed is: $#" # number of arguments
echo "Exit 1"


echo "Check for 2 positional params first is file second is string"

params=$#
count=0
read -p "Enter the name of a file and any string - " filename  string  

if [ $count -eq 2 ]; then  echo "Proceed"; else echo "You need to enter $count fields "; fi


echo "Print file name to be copied"
read -p "Enter file to be copied - " file
if [ -f  $file -a -r  $file ]; then echo "Proceed"; else echo "Check file"; fi 
echo "Exit 2"


echo "Display contents of:  $file"
cat $file 
echo "Exit 3"


echo "Check students - pattern match starts with W ends with a number and has 7 digits "
echo "Use example W1234567 to test"

studentIdregex="^W[0-9]{7}$"

read -p "Type a student id " studentID
echo "Student id is : $studentID"

if [[ $studentID =~ $studentIdregex ]]; then echo "Match"; else echo "Check id"; fi
echo "Exit 4"


echo "Use studentID and tab or space as delimiter  - read  each line of the data"
echo



echo "Read each line and with a regex match set each students data to arrays"
echo

echo "Loop through array use shift operator and nested switch statement multiply col1 to w1 add result to col2 multiplied by w2, etc"
echo

#calc weighted marks
let w1=(27/100)
let w2=(23/100)
let w3=(50/100)

echo "Isolate final score col and run validation test"

studentTotalRegex="W[0-9]{2}$"
#if [ $studentTotal -ge 40 ]; then echo "Pass"; else echo "Fail"; fi


echo "Isolate final score col and run validation test"


echo "Bar graph of scale 0-100 in steps of 10"
# yaxis={1..10..100} && display astrisk
# xaxis=student marks

