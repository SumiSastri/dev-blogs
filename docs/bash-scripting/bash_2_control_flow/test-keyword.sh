#!/bin/bash

# Source: Notes Bash part1.pdf pg 45 onwards
# Panopto link: Wk 4 https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# Panopto link 2: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46
# purpose: How to test code using the test key word
# Execute: ./test-keyword.sh 


echo
echo "Lesson 1.42: Testing scripts returns 0 if true 1 if false"

echo
echo "The test key word is less performant than square brackets"
echo  "However a scripting language is not used based on performance but convenience"

echo
echo "GAME: Check the highest number"
echo "Type 3 numbers"; read  val1 val2 val3 
if test "$val1" -gt "$val2" -a "$val1" -gt "$val3" 
 then 
  echo "$val1 is the highest number "
elif test "$val2" -gt "$val1" -a "$val2" -gt "$val3"
  then
  echo "$val2 is the highest number"
else
  echo "$val3 is the highest number"
fi
echo
  unset ${val1};unset ${val2};unset ${val3}
echo
  
exit
