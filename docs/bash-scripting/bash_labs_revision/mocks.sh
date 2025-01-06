#!/bin/bash

# id: w2095779
# author: Sumitra Sastri
# file:  w2095779.sh
# date: 3 Nov 2024

if test $# -ne 1 then
   echo "Should provide a single parameter " exit 1
fi
if test -f $1 then
   echo "$1 is a regular file" elif test -d $1
then
   echo "$1 is a directory "
fi exit 0

# source - columns https://www.tecmint.com/linux-column-command/

echo "Read file and store in column format"
read -p "Please provide the file name use data.txt" file
cat $file  | column -t -s "|" > revision/data.sh
echo "Save file data in column format done"

read -p ": " option
