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
# useage  bash revision/test3.sh 2+3+50-12
# useage  bash revision/test3.sh 2+3-1-2

# numberOfTerms=$#
# ((numberOfTerms = numberOfTerms / 2)) 
# result=$1
# shift
# echo -e "$result \c"
# i=1

# while [ $i -lt $numberOfTerms ];  do operator=$1; shift; values=$1; shift;
#     echo "index:$i operator:$operator values:$values numberOfTerms:$numberofTerms sum:$result"
#     case $operator in
#        '+') echo -e "$operator $values \c"
#             ((result += $values));;
#        '-') echo -e "$operator $values \c"
#             ((result -= $values));;
#     esac
#    ((i += 2))
# done
# echo "Result = $(($result))"

echo
echo "Done - Exit 2"

echo
echo "REFACTOR: DIVIDE with positional params"
echo

# useage revision/test3.sh 100 5 2 

params=$#
values=$1
result=$1
echo "$1 /"

while [ $params -gt 1 ]
 do shift

values=$1
result=$(($result / $values))

if [ $params -eq 2 ]; then echo "$values" && echo; echo "Result of division = $result"; else echo "$values /"; fi
   params=$(($params -1)) 
done

echo
echo "Done - Exit 3"
# echo
