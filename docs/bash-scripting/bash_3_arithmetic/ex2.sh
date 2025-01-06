#!/bin/bash

# source: Bash tutorial 2
# purpose: Add and subtract numbers using shift and positional params
# usage: lab3/ex2.sh 15 - 1 + 20 - 3  <value> <operator> <value> 

echo
echo 
numberOfterms=$# # every defined param
arg=$1 
sum=$1
shift
echo -e "The variable arg is: $sum \c"
echo -e "The variable sum is: $sum \c"
i=1
echo

echo
while test "$i" -lt $numberOfterms #positional params must be greater than 1
do
   op=$1 # use 1st param
 shift
   val=$1 # value is 1st param
  #  echo "i = $i op = $op val = $val" 
 case $op in
    # "+") echo -e "operator is +" ;;
    # "-") echo -e "operator is -" ;;
      "+") echo -e "$op $val \c"
      ((sum +=$val));;
       "-") echo -e "$op $val \c"
      ((sum -=$val));; 

esac
((i +=2)) # increments of 2
done
echo "= $sum"

# echo "number of terms is: $numberOfterms"
# echo "arg is $arg"   
# echo "sum is: $sum"
# echo "i is $i"
# echo "op is $op"
# echo "val is $val"

exit 0
