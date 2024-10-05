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