bash - alias quote=`usr/bin/quote-v`
unalias quote
quote is a variable - the short cut is in inverted commas

reading from standard input - keyboard
system buffer
standard buffer

Shell picks up commands in CLI - stores in std input
Reads the data sequentially

Std error - Error messages - a separate buffer - only to log errors coming from the terminal

Separate memory locations
3 blocks - input/ output and error
Each has separate purposes
CLI - redirect - for cron jobs
~/bscrt$ at time/date commands

cat - concatinates
at - sets time to run a pograme
cal - calendar
cat -n (new line)
cat -a (new line with $)
cmp - compare
cp - copy

chmod - change mode - change permissions
chown - change user ownership change file owner
cksum - check sum - number of bytes in the file

Nano
!/bin/bash


the .sh colorises the text editor
save control s
exit control x
escape control c if you escape editor
change mode to get the executable on file so `chmod 700`


For data to change, a block of code has to be written to change the initial state of the data stored in memory.

A block of code that changes the nature of the initial value of the data, or the initial state of the data, is called an alogrithm.

An alogrithm is a mathematical term which dpends on an input a mutation and an output.

While vs for - condition is known in advance
While can run into infinite loop eg if i= 0 execute i+1 - need a break with a condition within the program

Compound assignment

Switch checks patterns
If-else checks conditions


Logical operators

&& - logical and - both have to be true
! - logical not - can only be operated on 1
|| - logical or - only one needs to be true


Selection statements - only one block executed if true, or default printed
if
else if
default else


loops and iterations
