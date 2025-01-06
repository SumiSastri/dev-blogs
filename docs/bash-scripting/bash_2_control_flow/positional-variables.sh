#!/bin/bash

# Source: Tutorial notes - Bash part1.pdf Pg20/ Page 35
# Panopto link: 
# purpose: How positional params are set and accessed
# Execute: ./positional-variables.sh 

echo
echo "Lesson 1.41 : Positional variables"

# echo
# echo "Test Setting positional params use the set keyword:"
# set player1 player2 counter dice score1 score2 winner loser nextGame resetScore
# echo

# echo "Param 1 is: $1"; echo "Param 2 is: $2" ; echo "Param 3 is: $3"
# echo "Param 4 is: $4" ; echo "Param 5 is: $5"; echo "Param 6 is: $6" 
# echo "Param 7 is: $7"; echo "Param 8 is: $8" ;echo "Param 9 is: $9"
# echo "Param 10 is: $10" #note resetScore is not picked up -only 9 allowed
# echo "The script name is $0"
# echo "The list of params is: $*"
# echo "Print all params: $@"
# echo "The PID of the current pocess is $$"
# echo "The exit status of the last command is $?"
# echo

echi
echo "Test positional or script variables with a for loop"
echo "Useage - run file <variables>"
echo

echo
for i in "$@"; do echo $i; done # $@ array of elements $* list not array
echo "The number of params the user typed is: $#" # number of arguments
echo

echo "What is the difference between $# $@ and $* in bash scripting"
echo "See link https://www.baeldung.com/linux/dollar-star-at We see that $* splits them so that each argument becomes a separate string.
     The variable $@ treats each command-line argument as a separate element in an array.In most cases, using $@ or “$@” instead of $* is safer 
     and more flexible when working with command-line arguments because they preserve the original argument structure and make it easier to work 
     with individual arguments in our bash script. They behave the same way when not quoted: They treat each argument as a separate entity and 
     preserve spaces and special characters within individual arguments. However, their behavior is different if we quote them. While “$@” keeps 
     individual arguments, “$*” treats them as a single entity."


What is the emac editor

Emacs is a tiny C core that forms the foundation of how it interacts with your operating system. The core is several hundred thousand lines of C code.Community packages add up to millions of lines of code also.

Although you can easily recompile Emacs from source, the guiding philosophy is that anything that a user would reasonably want to modify belongs in the Lisp layer.

Extending Emacs is as simple as writing a little bit of Lisp and evaluating it from inside your running Emacs instance.

https://www.masteringemacs.org/article/beginners-guide-to-emacs

exit