#!/bin/bash

#called the shebang line 
#You need the whole shebang to identify interpreter

# Sources: Notes Bash part1.pdf Pg 11 onwards/Bash cookbook Ch1
# George Charamboulous lecture - Wk1 Linux commands
# Pantopto link: 
# purpose: Basic linux operations - alias, read, write and execute files
# execute: ./read-write-execute.sh 

echo
echo "Lesson 1.0: Read-write-execute bash files"

echo
echo "Test Create .sh file"
echo
echo "Using nano in terminal create a file with nano <filename> command"
echo "Using vim in terminal create a file with touch <filename> command"

echo
echo "Display pwd and ls -a commands:"; pwd; ls -a # executed sequentially

echo
# read, write and execute chmod +x <filename>
# once the file is changed to executable it is "callable"
echo -e "Display date and time: \c" ; date # supress carriage return print on 1 line
# Creating scripts helps sysops engineers to automate repetitive tasks
# In this eg you see who is logged in and the number of users logged in

echo
echo -e "Display num of users logged on: \c"; who | wc -l

echo
echo "SETTING PERMISSIONS"
echo -e "9 possible permission settings - r/w/e self-groups-others"
# ls -p & cat bash-tutes/user-inputs.sh & ps # executed concurrently - in any order

echo
echo "Test Setting alias"
echo
echo "Set an alias with alias <aliasName>="string of the alias""
echo "List alias' with the alias command and unalias<aliasName> to remove"

echo
echo "Test Cron jobs"
echo
echo "Run jobs at a particular time with command at time [date] <commands>"
# FIXME - Why garbled time?
# at 12.00 18/10/2024 -f bash lab1/strings.sh >out1 2 carats >> at -l/ at -r
# echo -e "Each command is given a job number and date stamp"

echo
echo "3 main file streams or buffers are std input, std output and std error"
echo "CLI commands are picked up by an interpreter from these buffers"
echo "Commands are compiled and returned to error or output streams"
echo "RAM uses 3 buffers in memory to process information locally"

echo
echo -e "Open Lesson 1.1: Strings file and read its contents: \c"
echo 
cat  lab1/strings.sh lab3/loops-for-do.sh  # prints all contents of the files
cat -n lab1/strings.sh # prints with numbered lines

echo -e "See ex1.sh - how to write a script and test results"

# FIXME - Why cat -A fail? 
# cat -A lab1/strings.sh
# Unix commands - Page 12 - cat -A

echo
exit

