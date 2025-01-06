#!/bin/bash

# purpose: string tests
# version: 2.0  Date: 16/11/2024 author: Sumi Sastri
# useage: ./test-strings.sh (check individual tests)
# sources: https://linuxhandbook.com/bash-test-operators/  
# baeldung https://www.baeldung.com/linux/file-lines-into-array
# cyberciti https://www.cyberciti.biz/faq/finding-bash-shell-array-length-elements/ 
# GNU docs https://www.gnu.org/software/bash/manual/bash.html


#1. Open a file and put its contents into an array, check the length of array
# prompt user for file name store it in a variable
#read -p "Please enter the file ./data.txt " file

# check if file exists and is readable
#if [ -f $file -a -r $file ]
#then
#  echo "File is readable and is a file proceed"
#else
#  echo "Check if file exists and is readbale"
#fi

# string match check if the file is called data.txt
#if [ $file = "data.txt" ]
# then 
#   echo "It's a match"
#else
#   echo "Check file name"
#fi

# look for .sh file extensions in  ../wk1 directory copy to home path

read -p "Directory name" directory

if [ -d $directory ]
 then
#echo "Proceed"
hPath=~
echo "Homepath $hPath"

#swap paths
cPath=${directory/"~"/hPath}
echo "Changed path: $cPath"

# copy files
#cp ex2.sh ../wk1/ex2.sh
#ls -l ../wk1

# count/eval number of .sh files in directory

numOfFiles=`eval ls $directory/*.sh  |wc -l`
echo "Num of Files: $numOfFiles in $directory"

else
echo "Chk dir"
fi
exit




echo "Use positional params to take user input, check param input and perform an action"
# # Useage:  ./tests-checklist.sh ./test3.sh hello <filename> <string>

# read -p "Enter 2 variables - a file and a string " $1 $2
# if [ $# -gt 1 -a -n $2 ] # check if params gt than 1 and 2nd param a string
# # then echo "Thank you typed your file is: $1 and string is: $2" # print and check
#  then 
# cp -f $1 ../mock-exam/test3.sh; cat -n ../mock-exam/test3.sh; # perform one or many actions
# else echo "Please check you need a valid filename and a string"
# fi
# exit 0
echo "Exit 0"
echo


echo "Test positional params against each other - find the greatest number"
# # Useage:  ./tests-checklist.sh 20 30 40 <number> <number> <number>
# echo #(Bash part 1 pg 38)

# read -p "Enter 3 numbers " $1 $2 $3
# if [ $1 -gt $2 -a $1 -gt $3 ]
#  then
# echo "The largest number is $1"
# elif [ $2 -gt $1 -a $2 -gt $3 ]
#  then
# echo "The largest number is $2"
# else
# #  echo "The largest number is $2 or $3" # test 1st statement
#  echo "The largest number is $3" # test 2nd statement
# fi
# exit 1
echo "Exit 1"
echo


echo "Use positional params to open a file, read it contents and append to another file"
# # Useage:  ./tests-checklist.sh ../mock-exam/data.txt <filename>

# if [ $# -eq 1 -a -f $1 ] # check if the 1st param is a valid file name 
# # then echo "You want to copy : $1 " # print and check
#  then 
# cp $1 >> ./data.txt; cat ./data.txt >> ./test2.sh; 
# else echo "Please check you need a valid filename"
# fi
# exit
echo "Exit 2"
echo


echo "Test if files exists are readable/ writable and executable"

# if [ -f $file -a -r $file ]; then echo "$file is readable"; fi
# if [ -f $file -a -w $file ]; then echo "$file is writable"; fi
# if [ -f $file -a -x $file ]; then echo "$file is executable"; fi
# if [ -d $file ]; then echo "$file is not a file it is a directory"; fi
# if [ -f $file ]; then echo "$file exists proceed"; fi
# if [ -s $file ]; then echo "$file has content proceed proceed"; fi

# exit
echo "Exit 3"
echo

echo "Copy flags checklist"
# cp -f - overwrites
# cp -i - prompts for permissions
# cp -p - preserves permissions
# cp -r - copy folders and subfolders


echo "List of file expansion tests"
# useage: go to terminal and use ls and the patterns below

# ls ex?.sh # match just 1 character in this list of a file name
# ls ex[1-5].sh # check for a range
# ls [aei]*  # match file starting with any of these alphabets
# ls *.*[f-p] # match files ending with any of these alphabets - find pdfs for examples
# ls loo*
# ls l* # match file starting with l and anything after / l? will not work

# FIX ME
# # ls *[a-e][w-x] # pattern matche
# # ls ?[a-e][w-x] # pattern match
# # ls +[a-e][w-x] # pattern match
# # ls ![a-e][w-x] # pattern match

# ls *([a-e][w-x]) # pattern match
# ls ?([a-e][w-x]) # pattern match
# ls +([a-e][w-x]) # pattern match
# ls !([a-e][w-x]) # pattern match


echo
echo "Test Strings"
# # Useage:  ./tests-checklist.sh cat <string>

# if [ "cat" = "dog" ]; then echo "True the 2 values are the same"; else echo "False the 2 values are not the same"; fi
# if [ "cat" = "cat" ]; then echo "True the 2 values are the same"; else echo "False the 2 values are not the same"; fi
# if [ -z "cat" ]; then echo "True the value is empty"; else echo "False the value is not empty"; fi
# if [ -n "cat" ]; then echo "True the value is not empty"; else echo "False the value is empty"; fi

# exit

echo
echo "Test with regex - gotcha the asterisk acts like a wild card and is not a mandatory match"

# stringCheck="my string has an aeiou"
# if  [[ $stringCheck =~ [0-9] ]] # contains digits
# if  [[ $stringCheck =~ ^my ]] # starts with my
# if  [[ $stringCheck =~ my$ ]] # ends with my
# if  [[ $stringCheck =~ aeiou$ ]] # ends with aeiou
# if  [[ $stringCheck =~ ^[a-z] ]] # starts with lower case
# if  [[ $stringCheck =~ [A-Z] ]] # has capital letters
# if  [[ $stringCheck =~ ^[A-Z] ]] # starts with capital letters
# if  ! [[ $stringCheck =~ [A-Z] ]] # does not have capital letters - space between brackets watch syntax
# if  [[ $stringCheck =~ [a-z]$ ]] # ends with lower case
# if  [[ $stringCheck =~ [A-Z]$ ]] # ends with upper case
# if  [[ $stringCheck =~ (aeiou) ]] # grouping of alphabets
# if  [[ $stringCheck =~ ^\^[0‐9a‐dA‐C]*$ ]] # 

# digitCheck=222-333-4444
# if  [[ $digitCheck =~ ^[5-9]{3}-[5-9]{3}-[5-9]{4}$ ]] # exact matches {3} {3} and {4}
# if  [[ $digitCheck =~ ^[0-5]{3}-[0-5]{3}-[5-9]{4}$ ]] ## exact matches {3} {3} and {4}
# if  [[ $digitCheck =~ ^[0-5]{1,}-[0-5]{1,}-[0-5]{1,}$ ]] ## {1, } one or more times
# if  [[ $digitCheck =~ ^[0-5]+[0-5]+[0-5]+$ ]] ## + one or more times
# if  [[ $digitCheck =~ ^[0-5]{3,}-[0-5]{3,}-[0-5]{3,}$ ]] ## {1, } three or more times
# if  [[ $digitCheck =~ ^[0-5]{2,3}-[0-5]{0,3}-[0-5]{2,4}$ ]] ## {3, } all match - inexact numbers but in a range

# escapeCheck="I am so I eat 01/02/2024 so I am @a heinzbean*man"

# if  [[ $escapeCheck =~ ^[A-Z\sa-z] ]] # spaces between words starts with a capital
# if  [[ $escapeCheck =~ [H[a-z]\*ma ]] # starts with capital, has any letters must have an astrisk *ma
# if  [[ $escapeCheck =~ ^[A-Z\@a\sa-z$] ]] # starts with a capital escapes @ and has a space ends with lower case

# if  [[ $escapeCheck =~ ([0-9]\/{2})*([0-9]\/{2})*([0-9]{4})* ]] # 2 digits/ 2digits/ 4 digits date grouped, escaped and anywhere
# if  [[ $escapeCheck =~ ([0-9]\/{2})?([0-9]\/{2})?([0-9]{4})? ]] # 2 digits/ 2digits/ 4 digits date grouped, escaped and optional match anywhere
# if  [[ $escapeCheck =~ ([0-9]\/{2})+([0-9]\/{2})+([0-9]{4})+ ]] # FIXME - comprehension
#  then echo "Matched"
# else echo "Not matched"
# fi 

echo "Exit 9"
echo


echo " Test expansions"
# useage ./tests-checklist.sh

# echo "TEST brace expansion"
# echo {1..10}; echo {10..1}
# echo "TEST char expansion"
# echo {a..z}; echo {Z..A}
# echo "TEST command expansion"
# hours=$(date +%H); minutes=$(date +%M) #instead of back ticks
# echo "Time is $hours:$minutes"
# echo "TEST arithmetic expansion"
# add=$((2+2))
# echo $add

# echo "TEST pad left FIXME number expansion with intervals"
# echo {01..100}; echo {1..100..25}; echo {a..z..5}; echo {095 .. 1000..100}
echo "Exit 10"
echo


echo "Testing game check password in 3 tries with until and while loops"
# # Useage: ./tests-checklist.sh  <password>"

# password=$@
# correctPassword="Enter123!"
# attempts=0
# MaxAtttempts=3
# echo "Password checkpoint"
# echo

# until [ $password = $correctPassword ]; do read -p "Enter password" password; done; echo "You can enter now your password matches"
# while [ $password != $correctPassword ]; do echo -n"Type password"; read "password" password; done; echo "You can enter now password matches"

# attempts=0
# MaxAtttempts=4

# until [ $password = $correctPassword -o $attempts -lt $MaxAttempts]; do read -p "Enter password - $attempts" password; done;
# if [ $password = $correctPassword ]; then echo "You can enter your password matches"
#  else echo "You have run out of attempts passwords do not match"
#  echo "You can enter now your password matches"

# while [ $password != $correctPassword]; do echo -n"Type password"; read "password" password; done; 

# if [ $password = $correctPassword ]; then echo "You can enter your password matches"
#  else echo "You have run out of attempts passwords do not match"
#  echo "You can enter now your password matches"


#backup work in text file append to  w2095779.txt
read -p "./w2095779.txt for backup" backup
cp arrays.sh -i $backup
cat  $backup
echo "Check backup complete"


# 1. Check 2 positional params are numbers
# useage ./strings.sh <num> <num>

#read -p "Please enter 2 positional params" param1 param2

# no void entries
#if [  -z $param1 ] || [ -z $param2 ] 
#then
#  echo "Min 2 params req."
#else
#  echo "You typed $param1 $param2"
#exit 1
# fi

# both params numbers
#if ! [[ $param1 =~ ^[0-9]+$ ]] || ! [[ $param2 =~ ^[0-9]+$ ]]
#then
#  echo "You need 2 numbers"
#else
#   echo "You typed the numbers $param1 $param2"
#exit 2
#fi

# 2. Check if positional param is a file or a directory
# useage: ./strings.sh

#read -p "Please enter file name" file

# check no void entry
# check with w2095779.txt 

#if [ -z $file  ]
# then
# echo "Please enter a valid file name "

#else
#  echo "Is this the file: $file proceed"
#exit 3
#fi

# check not a directory
# check with ./wk1

#if [ -f $file -o -d $file ]
# then
#  echo "Proceed this is a file" 
#else
#  echo "Check this may not be a file and may be a directory"
#exit 4
#fi

# 4. Check open and read file w2095779.txt and overwrite its contents with strings.sh
# Back up work into a text file to upload

#read -p "Please enter this file name w2095779.txt" textFile

#cat  $textFile
#echo "Display contents of $textFile"

#cp -f strings.sh  $textFile
#cat $textFile
#echo "Display copied contents of strings.sh in $textFile"

