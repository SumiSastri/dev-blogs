#!/bin/bash

# Source: LI tutorial
# purpose: Demonstrate the subtle difference between until do and while do
# Execute: ./loops-until-vs-while.sh 

echo
i=0
echo

echo "Test for loop"
# echo
# for i in {1..5}; do echo "$((i++))"; done
# echo

echo "Test until and while loops"

# echo
# while ((i<=5)); do echo "$((i++))"; done
# echo

# echo
# until ((i>5)); do echo "$((i++))"; done
# echo

echo "Test how until and while loops error out"

# echo
# until ((i<=5)); do echo "$((i++))"; done
# echo

# echo
# while ((i>5)); do echo "$((i++))"; done 
# echo

exit