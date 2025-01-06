#!/bin/bash
# Invoke bash

# id: w2095779
# author: Sumitra Sastri
# file:  revision/w2095779.sh

date -u

echo "Request positional param"
read -p "Enter param - " params
echo "Param is: $params"
# echo "exit1"

# echo "Test at least 1 positional param"
if [ $# -ne 1 ] 
then 
   echo "Pls enter at least 1 param "
  exit 1
else echo "Param is $params"
 fi 
echo "exit1"

echo "Print file name to be copied use data.txt to test"
read -p "Enter file to be copied - " file
echo "Test if file is file"
if [ -f  $file -a -r  $file ]; then echo "Proceed"; else echo "Check file"; fi 
echo "exit 2"

echo "Display contents of:  $file"
echo "Test if file is directory"
if [ -f $1 ]; then echo "$1 is a regular file"; elif [ -d $1 ]; then echo "$1 is a directory "; fi 
cat $file 
echo "exit 3"

echo "Get student id use example W1234567 to test"
studentIdregex="^W[0-9]{7}$" #Student ID pattern match starts with W ends with a number and has 7 digits
read -p "Type a student id " studentID
echo "Student id is : $studentID"
echo "Test if id matches regex pattern"
if [[ $studentID =~ $studentIdregex ]]; then echo "Match"; else echo "Check id"; fi
echo "exit 4"

echo "print first 2 lines of data.txt"
head -n 2 data.txt; head -n 3 data.txt
echo "exit 5"

echo "Read the header and modify it"
header=$(head -n 2 data.txt)
modifiedHeader="${header} TOTAL STATUS"
weighting=$(head -n 3 data.txt)

echo "Print the modified header"
echo "$modifiedHeader"
echo  "$weighting" | tail -n 1 #avoid header printing 2x
echo "exit 6"

echo "Count and print number of students"
students=0
# Loop through the lines of the file starting from the third line
while read -r line; do
    # Check pattern starting with W
    if [[ $line == W* ]]; then
        ((students++))
    fi


echo "Number of students: $students"
echo "exit 7"

echo "Calculate scores"
# sources: https://phoenixnap.com/kb/bash-read - read flags  / https://linuxsimply.com/read-command-in-linux/
#          https://linuxize.com/post/bash-read/ - combined flags / https://www.baeldung.com/linux/read-command
# 
# read -a wm=(23 27 50) # extract weighting and read it into an array
# read -n (read only certain number of characters)
wm[0]=23; wm[1]=27; wm[2]=50
echo
# if the line starts with w read without backslashes/ tabs - remove formatting
while read -r line; do
    if [[ $line == W* ]]; then

    # Read lines of data related to student into array
        read -a student_data <<< "$line"
        student_id=${student_data[0]}
        cwk1_score=${student_data[1]}
        cwk2_score=${student_data[2]}
        exam_score=${student_data[3]}

        # Calculate weighted scores
   total_score=$(echo "scale=2; ($cwk1_score * ${wm[0]} / 100) + ($cwk2_score * ${wm[1]} / 100) + ($exam_score * ${wm[2]} / 100)" | bc)

        # the arithmetic operator bc
        # source https://www.geeksforgeeks.org/bc-command-linux-examples/
        # Determine pass/fail
        if (( $(echo "$total_score > 40" | bc -l) )); then
            status="PASS"
        else
            status="FAIL"
        fi

        # Print the student ID, total score, and status
  echo "StudentId: $student_id/ Score: $total_score / STATUS: $status"
    fi
done < <(tail -n +3 data.txt)
echo "exit 8"

# echo "Bar graph of scale 0-100 in steps of 10"
# yaxis={1..10..100} && display astrisk
# xaxis=student marks
# use bubble sort to sort marks in ascending order
# Display marks as a star instead of a number

# echo "TO BE COMPLETED"
# echo "exit 9"
