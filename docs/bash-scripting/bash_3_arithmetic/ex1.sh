#!/bin/bash

# Sources: Bash tutorial 2/ Bash part2.pdf page 2
# Example link1: https://linuxopsys.com/bash-shift-command
# Example link2: https://www.gnu.org/software/bash/manual/html_node/Shell-Parameter-Expansion.html
# Example link3: https://tldp.org/LDP/Bash-Beginners-Guide/html/sect_09_07.html
# useage: ./ex1.sh 3 4 5 6

echo
# count=$# # count is every defined param
# arg=$1 
# sum=$1
# echo -e "$sum +  \c"
# echo "Print all params: $@"
# echo "The number of params are: $#"
# echo

# echo
# while [ "$count" -gt 1 ] # if any number in the args is greater than 1 
#  do
#  shift # shift positional param / every positional param becomes$1
#    arg=$1
#      sum=`expr $sum + $arg`
    # sum=$(($sum + $arg))
# if test $count -eq 2
#  then echo "$arg = $sum" #add each arg to itself?
# else
#  echo -e "$arg + \c"
#  fi
# echo 
# #  count=`expr $count - 1`
#    count=$(($count -1)) 
# # stops an infinite loop - once you get to the last param stop
# echo "arg is $arg"   
# echo "sum is: $sum"
# echo "count is: $count"
# echo


echo
echo "REFACTOR: Addition with positional params"
echo

count=$# # all numbers in the positional params
# All args are $1, then when you shift all args become the 1st arg
args=$1 
sum=$1

echo
while [ $count -gt 1 ]; do shift # use the shift operator if count is greater than 1
# Reassign sum to be param1 + param2 - both are 1
args=$1 
sum=$(($sum + $args))

#if there are 2 params then the 2 params are equal to each other otherwise final sum
if [ $count -eq 2 ]; then echo "$args = $sum"; else echo -e "$args + \c"; fi

# stops an infinite loop make the arg less than 2 by subtracting 1
echo 
   count=$(($count -1)) 

echo     
done
echo