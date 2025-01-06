#!/bin/bash

# Sources: Regex tutorialpdf
# purpose: Regex and file testing
# useage: ./ex1.sh


# Check if a filename is provided
if [ $# -ne 1 ]; 
then
    echo "Usage: $0 <filename>"
    exit 1
fi

filename="$1"

# check if file exists
if [ ! -e "$filename" ]
then
    echo "Stop: This file '$filename' does not exist."
    exit 2
fi

# check if file os actually a directory
if [ -d "$filename" ]
then
    echo "Stop: '$filename' is a directory not a file."
    exit 3
fi

echo "Make directory - lab4/sem10"
# mkdir -p lab4/sem10

echo "Make files in this directory name File1 to File5 with a .c extension"
# touch lab4/sem10/File{1..5}.c
# touch lab4/sem10/Test{e..g}.txt

echo "Check these file are readable/ writable or executable"

testEFile=lab4/sem10/Teste.txt
# check if file exists
# Example from: https://www.cyberciti.biz/faq/unix-linux-shell-scripting-test-if-filewritable/
if [ ! -e "$testEFile" ]
then
    echo "Stop: This file '$testEFile' does not exist."
else
    echo "Proceed: '$testEFile' has been created"
    [ -r "$testEFile" ] && echo "File $testEFile is readable" || echo "Sorry not readable"
    [ -w "$testEFile" ] && echo "File $testEFile is writable" || echo "Sorry not writable"
    [ -x "$testEFile" ] && echo "File $testEFile is executable" || echo "Sorry not executable"
        chmod +x "$testEFile" 
    [ -x "$testEFile" ] && echo "File $testEFile is executable" || echo "Sorry not executable"
    [ -s "$testEFile" ] && echo "File $testEFile is not empty" || echo "Sorry file is empty"
    [ -e "$testEFile" ] && echo "File $testEFile is a file" || echo "Sorry is not a file"
    [ -N "$testEFile" ] && echo "File $testEFile has recently been modified" || echo "No modificatons since last read"
    
    exit 4
fi



