#!/bin/bash

# Source: Notes Bash part1.pdf  Pg 40
# purpose: print time stamps
# execute: ./ex4.sh 
# solutions link: https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=bddb647b-4dd5-403b-92df-b20b00bc2f47

echo
echo "Lab1 - Question 6 & 7: Date-time-hour-minute"

echo
date=`date`
echo "The date today is: $date"
echo
minute=`date +%M`
echo "It is now $minute minutes past the hour"
echo
seconds=`date +%S`
echo "It is now $seconds seconds past the minute"
echo
hour=`date +%H`
echo "It is now $hour hours"

echo
if test $hour -lt 12
then
  echo "Good morning, your program has run correctly"
elif test $hour -lt 18
then
  echo "Good evening your program has run correctly"
elif test $hour -gt 18
then
  echo "Time to stop working, but well done your program has run correctly"
  elif test $hour -gt 23 -o -lt 4
then  
else
  echo "You need to sleep! Don't worry your program has run correctly"
fi
echo
  unset ${date};unset ${minute};unset ${hour};unset ${seconds};
echo

exit
    