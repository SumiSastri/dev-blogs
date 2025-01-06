#!/bin/bash

# Source: Notes Bash part1.pdf  Pg 47 onwards
# Panopto link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: Listing some reserved key words and operands
# Execute: ./reserved-key-words.sh

echo
echo "Lesson 1.4: Reserved key words and symbols"

echo
echo "Control flow/ conditional statements: if-then, elif-then, else, fi"
echo "Loops: while, do, for, done, continue, break, case"

echo
echo "Date and time: date, time and calendar"
echo dateToday=`date`; echo $dateToday
cal

echo
echo "Reserved symbols: &, |, >, <, !, = , -a, -o, -lt, -, -ne, $, (, ), ;, {, }, [, ]"
echo -e "Maths operators: expr - not inbuilt GNU, let  +, -, * , /, %,"

echo
echo "Code blocks: function, select, test, shift" 
echo

exit
