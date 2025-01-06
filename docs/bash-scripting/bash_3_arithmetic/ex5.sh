#!/bin/bash


# source: Bash tutorial 2
# purpose: Create and test positional params in a file
# useage: bash lab3/ex5.sh 

echo
echo "Lab3 - Use sol 2 and create a bubble sort"
echo

echo
count=$# # count is every defined param
args=("$@") # Store all arguments in an array
echo "count = $count and args are $args"

# Bubble Sort
for ((i = 0; i < count; i++))
 do
echo "i is $i"
    for ((j = 0; j < count - i - 1; j++))
    do
    echo "j is $j"
        if (( args[j] > args[j + 1] )); then
            # Swap
            temp=${args[j]}
            args[j]=${args[j + 1]}
            args[j + 1]=$temp
        fi
    done
done

# After sorting, we can print the sorted arguments
echo "Sorted arguments: ${args[@]}"
echo

# Now we can perform the summation on the sorted arguments
sum=${args[0]} # Start sum with the first element
echo -e "$sum + \c"
for ((i = 1; i < count; i++)); do
    arg=${args[i]}
    sum=$((sum + arg)) # Calculate the sum

    if (( i == count - 1 )); then
        echo "$arg = $sum" # Last argument
    else
        echo -e "$arg + \c" # Print the addition
    fi
done

echo
echo "The while-do addition with sorted arguments done"
echo

exit

# Changes Made:
# Bubble Sort Implementation: Added nested loops to perform a bubble sort on the input arguments.
# Use of an Array: Stored the input parameters in an array (args) for easier sorting.
# Modified Summation Logic: After sorting, the summation is performed on the sorted array.
