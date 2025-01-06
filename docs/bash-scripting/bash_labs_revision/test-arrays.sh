#!bin/bash

# purpose: arrays and tests
# version: 1.0  Date: 16/11/2024 author: Sumi Sastri
# useage: ./test-arrays.sh (check individual tests)


echo "Add the elements of an array without the shift operator"
#useage: ./test-arrays.sh <nums>
# vars=$#
# numsArr=($@)
# i=0
# lastIndex=$((vars-1))
# result=0

# for (( i=0; i <=lastIndex; i++ ))
# do
#  (( result +=numsArr[i] ))
# done
# echo "Result = $result" 
# exit
echo "Exit 1"
echo


# # Logic: The until loop shifts between index and the caclculation of result looping and adding elements of array
echo "Add the elements of an array with shift operator"
# #useage: ./test-arrays.sh <nums>

# vars=$#
# numsArr=($@)
# shift
# lastIndex=$((vars-1))
# result=0
# i=0

# until [ $i -gt $lastIndex ]
# do 
#  shift # shift between vars and addition for result
#    ((i++))
#    ((result +=$1))
# done
# echo "Result = $result"
echo "Exit 2"
echo


# # Logic: The until loop shifts between operator and value with the case selecting options to perform calculation and show result
echo "Add and subtract elements of an array with shift operator"
# vars=$#
# result=$1
# shift
# i=1
# lastIndex=$((vars-1))

# until [ $i -gt $vars ]
# do
#   op=$1
# shift
#   val=$1
# shift
# case $op in
#    "+") echo -e "$op $val \c"
#          ((result +=$val));;
#    "-") echo -e "$op $val \c"
#           ((result -=$val));;
# esac
#  ((i += 2)) # shift 2x for op and val from $1 which is set at 1
# done
#  echo "Result = $result"
echo "Exit 3"
echo

# # Logic: Bubble sort - takes 2 elements in an array and compares them in 2 loops by adding 1 to the counter of the 2nd loop
echo "Bubble sort"
# useage ./test-array <nums>
vars=$# 
numsArr=($@) # elements of the array from $1 ..$n 
lastIndex=$((vars-1)) # one less than total number of params

i=0
while [ $i -lt $lastIndex ] # while there are elements initialise both i and j positions
do
  j=0
  while [ $j -lt $lastIndex ]
  do
     ((z = $j + 1)) # add an element to j store in z to make comparision and later to swap
     if [ ${numsArr[$j]} -gt ${numsArr[$z]} ] 
     then # swap: j goes to temp/ j swapped with z/ z put into temp
        (( tempArr = ${numsArr[$j]} )) 
        (( numsArr[$j] = numsArr[$z] )) 
        (( numsArr[$z] = $tempArr ))
     fi
     ((j = $j + 1 )) # increment i and j to stop infinite loops
  done
  ((i = $i + 1)) 
done # outer loop
echo "ordered elements ${numsArr[*]}" # elements are re-ordered to in the swap to ascending order
echo "Exit 4"
echo


echo "For loop test with arrays"
# # Useage:  ./tests-checklist.sh

# numbers=( 1 2 3 )
#  for number in ${numbers[@]}
#    do echo $number; 
# done

# exit
echo "Exit 5"
echo

echo
echo "Test create positional params and put them into an array, test the array"
# # Useage:  ./tests-checklist.sh 20 30 40"

# numbers=($@)
#  for number in ${numbers[@]}; 
#    do echo $number; 
# done;

# exit
echo "Exit 6"
echo


#!/bin/bash

 LAB WORK STARTS HERE



Q2 transfer the file contents to an array, check array elements
dataArr=(`cat $file`) 

dataArr=(`cat ./data.txt`)
echo "No of elements is: ${#dataArr[*]}"

for data in $dataArr
do
 echo "Data in array is: ${dataArr[*]}"
 echo "Student Id check  : ${dataArr[8]}"
done

# This calc works
((numOfStudents = (${#dataArr[*]} - 8)/4))
echo "numOfStudents is: $numOfStudents"


                          