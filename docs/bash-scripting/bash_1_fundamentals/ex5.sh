#!/bin/bash


# purpose: result of the cat command from ex1.sh
echo
echo "Lab1 - Question 1"

echo
echo  "Copy file and read its contents"
echo
# Prompt user to enter a file name (eg: lab1/ex2.sh)
read -p "Enter file name to be copied: " file

# check file exists and file is readable
if test -f $file -a -r $file

#  then
#    echo "Is this the file to be copied? $file" 
 then
 # copy the file lab1/temp.sh created above
   cp $file lab1/temp.sh
   # display the text   
   echo "DISPLAY CONTENTS OF: $file"
   cat lab1/temp.sh  # cat is not concat but open and read file contents
echo "Exit1"
echo

echo "Copy flags"
# cp -f - overwrites
# cp -i - prompts for permissions
# cp -p - preserves permissions
# cp -r - copy folders and subfolders

# echo
# echo "Lab1 - Question 2"
# echo "Read a file name and copy file into home folder"
#    then
#      cp $file ~/ 
# else
#    echo "$file does not exist or is not readable  please check and try again"
# fi
echo     
fi
exit 0