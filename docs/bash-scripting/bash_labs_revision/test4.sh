#!/bin/bash

# purpose: Revise - switch statement
# author: Sumi Sastri version 1.0 date: 28/10/2024

echo
echo "REFACTOR: MULTIPLY with positional params"
echo

# useage revision/test3.sh 2 3 4 5
# count=$# 
# args=$1 
# result=$1
# echo "$1 x"

# while [ $count -gt 1 ]; do shift 
# args=$1 
# result=$(($result * $args))
# if [ $count -eq 2 ]; then echo "$args" && echo; echo "Result=$result"; else echo -e "$args x \c"; fi
# # stop infinite loop 
# echo 
#    count=$(($count -1)) 
# done
# echo
echo "Done - Exit 1"
# echo


echo
echo "REFACTOR: add/subtract"
echo
# useage ./test3.sh 2+3+50-12
# useage ./test3.sh 2+3-1-2

# numberOfTerms=$#
# ((numberOfTerms = numberOfTerms / 2)) # exit loop
# result=$1
# shift
# echo -e "$result \c"
# i=1 # index is one bec 0 is the name of the file

# while [ $i -lt $numberOfTerms ];  do operator=$1; shift; values=$1;  
#     case $operator in
#        '+') echo -e "$operator $values \c"
#             ((result += $values));;
#        '-') echo -e "$operator $values \c"
#             ((result -= $values));;
#     esac
#    ((i += 2))
# done
# echo "Result = $(($result))"
# echo
echo "Done - Exit 2"

echo
echo "REFACTOR: DIVIDE with positional params"
echo

# useage ./test3.sh 100 5 2 

# params=$#
# values=$1
# result=$1
# echo "$1 /"

# while [ $params -gt 1 ]
#  do shift

# values=$1
# result=$(($result / $values))

# if [ $params -eq 2 ]; then echo "$values" && echo; echo "Result of division = $result"; else echo "$values /"; fi
#    params=$(($params -1)) 
# done

echo
echo "Done - Exit 3"
# echo


Nnumb=$# # how many 
data=($@) #store all positional prarmeters into an array starting from $1 ..$n 
(( Dlimt = $Nnumb - 1 )) # one less than total number of params
i=0
# echo "limt = $Dlimt i = $i" 
while test $i -lt $Dlimt # starting at 0
do
  j=0
  while test $j -lt $Dlimt 
  do
     ((k = $j + 1)) # k index for adjacent element (j + 1) 
     echo "$j ${data[$j]} $k ${data[$k]}"
     if [ ${data[$j]} -gt ${data[$k]} ] 
     then
        #swap elements as element j larger than element k 
        (( temp = ${data[$j]} ))
        (( data[$j] = data[$k] ))
        (( data[$k] = $temp ))
     fi
     ((j = $j + 1 )) # incrementing j 
  done
  ((i = $i + 1)) #increementing counter 
done # outer loop
echo "ordered elements ${data[*]}" #print out all elements in array exit 0
