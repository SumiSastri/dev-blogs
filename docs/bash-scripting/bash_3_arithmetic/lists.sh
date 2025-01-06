#!/bin/bash
# entry point is hashbang for shells - the whole shebang

# Source: Tutorial notes - Bash part2.pdf Pg 7 onwards
# Panopto link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: Arrays in bash
# useage: ./lists.sh 

echo
echo "Lesson 1.7: Ordered lists/ arrays"
echo

echo "Test - assign values and indexes to the names array - indexed array"
names[2]="Bassam" ; names[0]="Sanya" ; names[1]="Louella"
echo "The names array index 2 is: ${names[2]}"
echo "The elements in the names array are ${names[*]}"
echo "The number of names in the array: ${#names[*]}"
echo "The number of names in the array: ${#names[i]}"
# echo "print ${names[$(({$#names[*]} -1 ))]}" for expanded array FIXME
echo

echo
echo "Test - Assign values with parenthesis the list will be automatically indexed"  
fruits=(apples pears oranges peaches) #c-style syntax pears removed
echo "The fruits array: ${fruits[*]}"
echo "The fruit in index 2 is: ${fruits[2]}"
echo


# echo declare -a snacks=("khatta-meetha" "boondi" "chakli")
echo
echo "Test - assign 10 elements to the snacks array, define only a few - check empty values"
snacks[10]=$*
snacks=("khatta-meetha" "boondi" "chakli")
snacks[6]="murku"
for i in {0..5}; do echo "$i: ${snacks[i]}"; done
echo "The elements in the snacks array are ${snacks[*]}"
echo "The number of snacks in the array: ${#snacks[*]}"
# echo "The number of snacks in the array: ${#snacks[i]}" FIXME

echo
echo "GOTCHAS: - if you remove an element the index is stored for future use"
echo "Only v5 and above allow associative arrays [haldiram](boondi) - key value with names not indexes "
echo "THEREFORE YOU HAVE TO COUNT AND USE FOR LOOPS TO MANIPULATE DATA IN AN ARRAY"Í