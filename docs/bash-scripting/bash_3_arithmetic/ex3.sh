#!/bin/bash

# source: Bash tutorial 2
# purpose: use nested loop to create a calculator with positional params
# useage: ./ex3.sh 

numberOfParams=$#
terms=($*)
i=1
sum=${terms[0]}

echo -e "CHECK SUM: $sum \c"
while [ $i -lt $numberOfParams ]
do
 echo -e "CHECK LOOP values  $i ${terms[i]} ${terms[i+1]}"
  case ${terms[i]} in
    "+") ((sum +=  ${terms[i+1]} )) ;;
    "-") ((sum -=  ${terms[i+1]} )) ;;
 esac
      ((i = i + 2))
done
echo "SUM = $sum"
exit 0