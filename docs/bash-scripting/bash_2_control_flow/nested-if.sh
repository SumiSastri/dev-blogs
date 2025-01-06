#!/bin/bash

# Source: Notes Bash part1.pdf Pg43 onwards / Bash cookbook
# Panopto link: Wk 4 https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46)
# Example Link:  https://learning.oreilly.com/library/view/bash-cookbook/9781788629362/d745380e-2d5f-4b59-8d73-cf85243da3fc.xhtml
# purpose: Control data flow - nested if statements
# Execute: ./nested-if.sh 

echo
echo "Lesson 1.6: Nested if-then/ elif-then/else"

echo
echo -e "Please enter your age: \c"
read age # the variable is assigned by set command
echo "Your age is $age" 
# Note: syntax is if-then/ elif-then/ else/ fi
if [ ${age} -lt 18 ] # the brackets encapsulate the contition
then
 echo "You must be 18 or older to see this movie"
elif [ ${age} -lt 60 ] # the top statement true none others checked
then
 echo "Please buy a ticket for this movie"
else
 echo "You are eligible for a senior discount"
exit 1 
  unset ${age} # clean up remove age variable from memory
fi
echo

exit
