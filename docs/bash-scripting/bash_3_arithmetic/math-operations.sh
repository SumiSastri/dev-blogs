#!/bin/bash
# entry point is hashbang for shells - the whole shebang

# Source: Notes Bash part1.pdf  Pg 50 onwards/ Maths with arrays Bash part2.pdf Pg 11 onwards
# Panopto link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: Basic arithmetic operations key words, operators and operands
# useage: ./math-operations.sh #

echo
echo "Lesson 2: Math operators and operands"
echo 

echo "Note: No decimal places with bash calculations"

echo "Assign 2 variables x and y with numbers"
echo
x=10
y=5

echo "x:$x", "y:$y"
echo "Use the key word expr and assign the sum of x & y to the variable add2"
add2=`expr $x + $y`
echo "Sum of x and y is: $add2"
echo "Expression is a program written for bash not native to bash"
echo "Template literals used to show the arithmetic operators are meta characters"
echo

echo "Do the same with subtraction"
echo "The difference between x and y is: $minus2"
echo "The key word let can be used to assign arithmetic operators and operands"
echo "Use let and multiply x and y"
echo

let multiply2=$x*$y
echo "The result of x multiplied by y is: $multiply2"
echo

echo "Increment/Decrement counters"
i=$((i+1))
((i=i+1))
let "i=i+1"
echo

echo "$i Increment counter"
i=$((i-1))
((i=i-1))
let "i=i-1"
echo

echo "$i Decrement counter"
((i+=1))
let "i+=1" 
echo "$i plus-equals"
echo

((i+=1))
let "i -=1" 
echo "$i minus-equals"
echo

echo "Postfix incrementors and decrementors"
x=5
y=$((x++))

echo "x++: $x"
echo "y assigned to x++: $y"
echo

echo "Postfix incrementors and decrementors"
x=5
y=$((++x))

echo "++x: $x"
echo "y assigned to ++x: $y"
echo
exit

# Check https://devhints.io/bash