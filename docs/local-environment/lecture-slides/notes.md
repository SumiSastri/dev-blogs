- Wk 1 - Unix commands

Page 17 -  25permissions
Page 33 - df disk free space/ du disk usage pg 40
Page 43 - find
Pg 82 tee command


- Wk2 [Seminar Link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=a52f2e42-e520-414d-ac0e-b1fd00ffba98)
- Wk2 [Lab link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=c0515fc2-4d6d-4462-b4bc-b2070114b776)

-  CLI commands
-  How to connect to the university servers system
- Connect with uni server - upload work into H drive

Unix Power tools
Shell scripting chapter
https://learning.oreilly.com/library/view/unix-power-tools/0596003307/pt06.html

- Wk3 [Seminar Link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=08a7138a-231d-4a37-b12c-b2030100e0cb)
- Bubble sort
- positional params

-Wk4 [Lab link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=385ba5d2-6352-4057-a564-b20c012180c5)
- Loops
- Shift operator
- Game with 3 attempts
- Positional params
- Arrays
- Memory leaks

Redo the excercises with switch/ arrays/ math
Check for more examples with bash cookbook or google examples
  

Wk4 [Seminar Link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=fd9dff99-b5df-46f9-8d29-b20c0121dd46)

_Revision bookmarks in pantopo video_
- Test vs square brackets
- IEEE format stored in memory - concat numbers with decimals
- Loops examples
- Test key word
- Expr/ let or C style (())
- Shift and positional params

- Arrays gotchas
- Switch statement

Wk 4 [Lab link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=385ba5d2-6352-4057-a564-b20c012180c5)


Wk 5 [Seminar link](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=1e26546d-0a85-4656-88b6-b214010af668)





George Charalambous (2024), __BASH part 1__ (Semester 1) Softwared Development Environments. University of Westminster/Cavendish Campus

Coursepack
Basic Format:
●J. K. Instructor. Title of coursepack. (Semester). Title of course. University/Publisher location:
University/Publisher name.
Example:
● Q. Oden. Mud and Bones–Geology Coursepack. (2014, Winter). GEOG 042. Cranbrook, Canada: College of
the Rockies



George Charalambous (2024), __BASH part 1__, PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5330159_1)

Lecture Notes
Basic Format:
●J. K. Author. (Year). Title of lecture [Type of Medium]. Available: URL
Examples:
●J. Barney. (2011). Documenting literature [PowerPoint slides]. Available: http://moodle.cotr/english/gill
●Z. Yardish. Tumbling past data [Online]. Available: http://www.statistics.cotr.ca/classes/statistics/Yardish/
index.html
Lecture Online
Basic Format:
● University name. (year). Title of lecture. [Type of Medium]. Available: URL




Excercises Chapter 12 unix shells by example
https://learning.oreilly.com/library/view/unix-r-shells-by/013066538X/013066538X_ch12.html
https://learning.oreilly.com/library/view/unix-r-shells-by/013066538X/013066538X_ch12lev1sec14.html





Qs:
Bash part 1.pdf
Pg 45 

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

Single | pipe switches from one program to another - changes stream
eg:
who | wc -l pipes the who command (who is the user) to the wc or word count program

Selection statements - only one block executed if true, or default printed
if
else if
default else


loops and iterations



QUESTIONS FOR GEORGE

1) Why Unix not Windows OS?

Everytime you run a program diffrent base address - prevent injection into the process
Page to frame allocation tables


2) Voice activated OS interupts - research (.wav files )


2-run time stacks (kernel mode vs user mode)



Interupt signals - eyeball interaction with screens


Resource allocation - deadlocks 