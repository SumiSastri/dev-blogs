#!/bin/bash

# source: Linux Commands Tutorial (pdf)
# purpose: use of emacs and introduction to Unix FS
# execute: bash lab1/unix-commands.sh 


echo
echo "Lesson 0: Unix commands" 

echo
echo "Test Lists"
echo
ls 
ls -a
ls -al # lists files and permissions r/w/x
ls -l

echo
echo "Test Print path"
echo
pwd

echo
echo "Test Change directories"
echo
cd Desktop/programs
cd # default back to home directory

echo
echo "Test Make directory"
echo
mkdir Desktop/programs
mkdir Desktop/programs

echo
echo "Test Mkdir with positional params"
echo
mkdir -p Desktop/programs/module1 Desktop/programs/assign Desktop/programs/tuts
mkdir -p Desktop/programs/module1/lectures Desktop/programs/module1/examples mkdir -p Desktop/programs/module1/lectures Desktop/programs/module1/examples Desktop/programs/tuts/tut1 Desktop/programs/tuts/tut2

echo
echo "Test Check manual"
echo
man du
whatis du
whereis du

echo
echo "Test Create/Copy/ Redirect files"
echo
touch Desktop/programs/tuts/tut1/ex{1..5}.txt

# copy file arg 1 to arg 2 (file-by-file not range)
cp Desktop/programs/tuts/tut1/ex1.txt Desktop/programs/module1/lectures

# redirects a single carat overwrites content of file, the double carat appends the content at the end of the file
ls -a > Desktop/programs/tuts/tut1/ex4.txt Desktop/programs/tuts/tut1/ex5.txt  
ls -a >> Desktop/programs/tuts/tut1/ex4.txt Desktop/programs/tuts/tut1/ex5.txt  

echo
echo "Test Rename files"
echo
mv lab1/ex2.sh lab1/ex12.sh 


echo
echo "Test Compare files"
echo
cmp lab1/ex2.sh lab2/ex2.sh 

echo
echo "Test Open file and read more"
echo
cat Desktop/programs/module1/lectures/ex1.txt 
more Desktop/programs/module1/lectures/ex1.txt # space bar to read more command q to quit

echo
echo "Test Destructive actions - delete"
echo
rm Desktop/programs/tuts/tut1/ex5.txt
rmdir Desktop/programs
rmdir ../assign # cd into programs directory and use dot notation 
