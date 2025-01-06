#!/bin/bash


# Q1. check and display number of .sh files in home directory - copy them to your current directory

# Get user input 
# read -p "Directory name is: " directory

# # check if directory ../mock-exam (check ./mockexam for failure)
# # if [ -d $directory ]
# #  then echo "Proceed $directory exists"
# # else
# #    echo "Check if this is a valid directory"
# exit 1
# # fi   

# # find home path
# hPath=~
# echo "$hPath"

# # swap paths from directory to home
# cPath=${directory/"~"/hPath}
# echo "cPath is : $cPath"

# #find the number of files with a .sh extension and list from home directory
# numOfFiles=`eval ls ~/*.sh  |wc -l`
# echo "Num of Files: $numOfFiles in $hPath"

# # copy files from home path to changed path and list
# cp /Users/sumi-dev/ex1.sh ../mock-exam/ex1.sh
# ls ../mock-exam/ex1.sh

echo "Q1 done"


# Q2. Check if a file is called ex1.sh, and is exectuable open its contents and copy to w2095779.sh

# read -p "Please enter the file name: " file #check with data.txt for failure 

# if [ $file = "ex1.sh" -a -x $file -a -r $file ] 
# then # echo "Proceed to open $file"
# cp ex1.sh >> w2095779.sh
# cat w2095779.sh
# else echo "Check file name and if it is executable"
# exit 2
# fi

echo "Q2 done"

#Q3. Check for user input for 4 - all must be numbers

# read -p "Provide 4 numbers please :" n1 n2 n3 n4

# check no void entries
# if [ -z $n1 ] ||  [  -z $n2 ] || [ -z $n3 ] || [ -z $n4 ] 
# then
# echo "You must type 4 numbers"
# else
#   echo "You typed $1 $2 $3 $4" 
# fi  

# check they all are numbers // use one 2 3 4 for failure/
# if ! [[ $n1 =~ ^[0-9]+$ ]] || ! [[ $n2 =~ ^[0-9]+$ ]] || ! [[ $n3 =~ ^[0-9]+$ ]] || ! [[ $n4 =~ ^[0-9]+$ ]]
# then
#  echo "All must be numbers"
# else
#  echo "You typed $n1 $n2 $n3 $n4"
# fi  

echo "Q3 done"

#Q4. Check  for 4 positional params - all must be numbers useage ./top 1 2 3 4

# check must be four params
# if [ $# -eq 4 ] 
#  then
#    echo "Proceed: You typed $1 $2 $3 $4"
# else
#    echo "Please type 4 positional params all must be numbers"
# fi

# check must be 4 numbers
# if [[ $1 =~ ^[0-9]+$ ]] & [[ $2 =~ ^[0-9]+$ ]] & [[ $3 =~ ^[0-9]+$ ]] & [[ $4 =~ ^[0-9]+$ ]] 
# then
#    echo "Proceed: You typed $1 $2 $3 $4"
# else
#    echo "Please type 4 positional params all must be numbers"
# fi

echo "Q4 done"


# Put data into an array and check the elements and length of array

#Q5: Put all positional params into an array useage ./top 1 2 three four 5 6 7 8 ox goat
vars=$# #pick up number of positional parameters
dataArr=($@) #store all positional prarmeters into an array starting from $1 ..$n
li=$((vars-1)) #lastIndex
# count=0 # check counters
# count=5

# for data in $dataArr
#   do
# echo -e "Elements: ${dataArr[*]} Length: ${#dataArr[@]} li value is: ${dataArr[li]} \c"
# done

# loop trhough position 6 to 10 in the array
# while [ "$count" -lt "${dataArr[li]}" ]
#   do
#  ((count=count+1)) 
#  echo "Count is $count"
#  done
echo "Q5 done"

#Q6 put contents of a file into an array - different syntax from positional params
dataArr=(`cat $file`) 
# dataArr=(`cat ./data.txt`) substitution

echo "No of elements is: ${#dataArr[*]}"

for data in $dataArr
do
 echo "Data in array is: ${dataArr[*]}"
 echo "Student Id check  : ${dataArr[8]}"
done

# This calc works
((numOfStudents = (${#dataArr[*]} - 8)/4))
echo "numOfStudents is: $numOfStudents" 
echo "Q6 done"