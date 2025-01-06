#!/bin/bash
# entry point is hashbang for shells - the whole shebang

# Source: Notes Bash part1.pdf Pg 50 onwards/ Maths with arrays Bash part2.pdf Pg 11 onwards
# Panopto link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# Purpose: Maths with arrays and loops
# useage: ./math-arrays.sh <numbers as positional params>

echo
echo "CHALLENGE: Add all numbers in the array if a counter number is greater than one"
echo "Useage: bash lab3/math-arrays.sh <numbers as positional params>"
echo
i=0 # count has to be 0 to be greater than 1
test=($@) # test all positional params
val=${test[0]} # val starts at zero index
echo

echo
count=$# # every positional param is a count
sum=$val # start the addition at position 0 for the sum
echo -e "Program start values: Index is $i; test $test; positional param val[0] is $val; num of positional params in count $count; sum is $sum \c" # test variables
echo

echo
while [ "$count" -gt 1 ] 
do 
 ((i=i+1)) # add 1 to count - starts at 2 (as defined by the positional param)
 val=${test[i]} # value is the test of each index
# echo "count: $count val: $val sum:$sum i:$i" # test code working
 sum=$((sum + val))        # sum with c syntax
# let sum=$sum+$val        # sum with let command
# sum=`expr $sum + $val`   # sum using expr command and graves accent
# echo "sum after while condition checked: $sum" # test code working
# echo

echo # nested while loop example
if
   test $count -eq 2
then
  echo "Next value is $val and sum = $sum" # test output
else 
echo -e "Next value is: $val + \c"
fi
  ((count=count -1)) # to exit the loop the count must be less than 1 or 1 -1 (0)
echo "Count is now $count"  # test count is 1 or less than 1
done
echo
echo "SUCCESS - exit program count is no longer greater than 1"
echo

exit

# What is the difference between count=$# test=($@)