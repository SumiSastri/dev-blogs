Tutorial 2 solutions

Q1
#!/bin/bash
read -p "Please type filename to be copied " Fname
echo "The filename selected is $Fname"
echo -e "\n$Fname copied as temp, Content of temp: "
cp $Fname temp
cat temp
exit 0echo "bye"

Q2
#!/bin/bash
# Author : George         Date Created: 16/10/2021
# Version: 1.0		  Date Modified: 
#
#  Prompt user for a filename and copy it into the home  folder
#
read -p "Type in a filename to be coped to your home folder" Fname
echo "You typed $Fname to be copied into your home folder"
cp $Fname ~/.  #copy filename into the home folder with the same name
ls ~/$Fname
exit 0

Q3
#!/bin/bash
read -p "Type in path for folder to seach for  C files " Upath
echo "You typed the folder $Upath"

Noc=`eval ls $Upath/*.c |wc -l` #  using eval to evalute expand string ~ pipe result into wc to count number of lines
echo "Number of C files in $Upath is $Noc"
Uhome=~
echo "Home address is $Uhome"
#string substitution ${orig_string/sub_string_to_be_swapped/string_to_be swaped_with}
Epath=${Upath/"~"/$Uhome}
echo "Expanded path defined is $Epath"
Noc2=`ls $Epath/*.c|wc -l`
echo "Number of C files in folder $Upath is $Noc2"
exit 0


Q4
#!/bin/bash
read -p "Please type in your name" name sname
echo "Hello $name I'm pleased to meet you"
echo
exit 0


Q5
#!/bin/bash
echo -e "The number of users logged on is \c" #\c suppress carrahe return
noU=`who | wc -l`
echo "$noU"
echo
exit 0

Q6
#!/bin/bash
mtime=`date +%M`
echo "The Number of minutes in the hour is currently $mtime"
exit 0

Q7
#!/bin/bash
hour=`date +%H` # return the hour from the date cmd
echo -e "The hour is $hour \c"
if [ $hour -le 18 ]
then
    echo "Day Time"
else
    echo "Night time"
fi

