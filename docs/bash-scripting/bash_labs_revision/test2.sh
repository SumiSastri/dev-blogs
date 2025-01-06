#!/bin/bash

#author: Sumi Sastri date: 28/10/2024
#purpose: run through bash scripts ex 1
#filepath Desktop/westmin/bash-labs/revision/test2.sh

Q1 "Read a file name and copy it into file called temp and display contents"

# echo "Step 1: create a file"
# echo
# fileName=`touch Desktop/westmin/bash-labs/revision/temp4.txt`
# echo

# echo "Step 2: Get user input for file to be copied"
# echo
# read -p "File name is:" fileName
# echo

# echo "Step 3: Check file is a file and copy file, list to see it has been created in folder/ directory "
# if [ -f ${fileName} -a -r ${fileName} ]; then echo "$fileName"; cp $fileName ; ls -a; 

# REFACTOR to save time
# if [ $1 = 1 -a -z $1 ]; then echo "$fileName"; fi  run else
# cp $fileName ; ls -a; cat $file; fi run else

# echo "Step 3: Write the else statement to verify if statement"
# echo
# else
# echo "Check $fileName something went wrong"

# echo
# fi
# echo

# echo
echo "Done - exit Q1"
echo
exit1


# echo "Q2 read a filename and copy into home folder"
# read -p - userPath
# echo $userPath
# userPath=~
# changedPath swap userPath to changedPath
# display ls -l $changedPath/*.sh/ 

# exit 2


# echo "Q3 List files with a .c extension and display number of files"

# display ls -n $changedPath/*.sh/ 

# exit 3

echo "Q4 prompt user for name, display greeting to user name"

# echo
# read -p "Type your name" name
# echo

# # echo "test name"
# # echo $name
# # echo 

# echo
# echo "hello $name"
# echo

echo "Script done - exit Q4"
exit 4
echo

echo "Q5 display number of users logged on"

# echo "List of users is:" 
# who
# echo

# echo -e "Number of users is \c" 
# who | wc -l
# echo

echo "Script done - exit Q5"
exit 5
echo

echo "Q6 display number of minutes in the hour using varname=(command)"
# use if[] then; else[]; fi and -eq/-ge/gt/lt/le to greet someone in the morning or evening

# echo
# displayHour=$(date +%H)
# echo "$displayHour : 00 hours"

# # # echo "test"
# if [ ${displayHour} -gt 12  ] ; then
# echo "Good afternoon"

# # echo "test" hours is not an integer but string
# elif [ ${displayHour} -lt 12 ]; then
# echo "Good morning"

# echo
# else 
# echo "Have a good one!"

# echo
# fi
# echo

echo "Script done - exit 6"
exit 6
echo

#TODO q2/ q3



Student_ID   CWK1  CWK2  EXAM

WEIGHTINGS   27%   23%   50%



W1234567    45   56   64

W1234568    60   77   39

W1234569    34   25   15

W1234570    70   55   44

W1234571    50   60   91

W1234572    88   47   19

W1234573    22   44   24
