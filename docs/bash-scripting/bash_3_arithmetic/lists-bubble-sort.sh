#!/bin/bash


# Source: Explaination from ChatGPT
# useage ./lists-bubble-sort.sh 9 8 3 1 8 0 5

# Explanation:
# The bubble sort algorithm compares adjacent elements and swaps them if they are in the wrong order, ensuring that after each complete pass, the largest unsorted element moves to its correct position.
# The summation then proceeds through the sorted list, maintaining the original logic of printing each addition step.
# You can run this script by providing numbers as arguments, and it will output the sorted order followed by the summation.

# echo
# numberOfParams=$#
# if test $numberOfParams -le 1
#  then
#    echo "You need more than 1 elements in the number of params"
#    exit 1
# fi

# echo
# numberOfElements=($*) # allocate to an array
# echo "Elements in the array: ${numberOfElements[*]}, numberOfParams = $numberOfParams"

# echo
# ((numberOfParams -= 1))
#     for ((i=0;i<numberOfParams;i++))
#         do
# echo "i is: $i array1 elements: ${numberOfElements[i]}"

# echo
#     for((j=0;j<$numberOfParams;j++))
#         do
# echo "j is: $j array2 is: ${numberOfElements[j]} j plus 1 is: ${numberOfElements[j+1]}"

# echo
#     if [[ ${numberOfElements[j]} -gt ${numberOfElements[j+1]} ]]
#         then
#             temp=${numberOfElements[j]}
#             numberOfElements[j]=${numberOfElements[j+1]}            
#             numberOfElements[j+1]=$temp          
# fi
#  done
# done
# echo "check sorted elements in array2 are ${numberOfElements[*]}"
# echo

params=$# 
el=($@) # elements of the array from $1 ..$n 
(( lastParam = $params - 1 )) # one less than total number of params
echo "No of elements: $lastParam  firstEl =$el"

i=0
while [ $i -lt $lastParam ] # while there are elements initialise both i and j positions
do
  j=0
  while [ $j -lt $lastParam ]
  do
     ((z = $j + 1)) # z is the element next to j #  echo "indexJ: $j ValOfJ: ${el[$j]} indexZ: $z ValOfZ: ${el[$z]}" # check positions and values

     if [ ${el[$j]} -gt ${el[$z]} ] 
     then
        (( temp = ${el[$j]} )) # put value of j into a temp array
        (( el[$j] = el[$z] )) # check if value of j is equal to val of z
        (( el[$z] = $temp )) # swap the greater into the temp array
     fi
     ((j = $j + 1 )) # increment i and j to stop infinite loops
  done
  ((i = $i + 1)) 
done # outer loop
echo "ordered elements ${el[*]}" # elements are re-ordered to in the swap to ascending order
