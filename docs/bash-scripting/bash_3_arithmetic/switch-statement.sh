#!/bin/bash

# Source: Notes Bash part1.pdf Pg 47 onwards
# Panopto link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: Switch statement demo in bash
# Execute: ./switch-statement.sh <strings>

# Explanation:
# The switch statement is useful to run through a list of options and then execute a code block base on user choice

echo
echo "Lesson 2: Loops - Switch statement checks a series of options in an array"
echo

# echo
# echo "TEST food types in a string variable"

# echo
# food="spinach" # change option in variable
# case $food in
#     choclate) echo "$food is high in calories" ;; spinach) echo "$food is a great source of iron" ;; rice) echo "$food is good if it is brown, bad if it is white";;
#         *) echo "What was that again?"
# esac
# echo

# echo
# echo "TEST food types with a positional variable"
# food=($*)
# case $food in
#     chips) echo "$food is high in calories" ;; spinach) echo "$food is a great source of iron" ;; rice) echo "$food is good if it is brown, bad if it is white";;
#         *) echo "What was that again?"
# esac
# echo

