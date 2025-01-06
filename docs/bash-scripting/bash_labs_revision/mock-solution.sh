#!/bin/bash

# Read data from file into array
dataArr=($(cat $1))

# Initialize arrays
header=("StudentId" "CWk1" "CWk2" "Exam" "Total" "Status") # manual set headers - EASIER!
weights=(${dataArr[4]} ${dataArr[5]} ${dataArr[6]}) # count and set weights
student_id=()
marks=()
total_score=()

# Calculate number of students - LOGIC
# # if there are 20 elements in data, ${#data[@]} will return 20.
# # - 8 - the first student ID starts at position 8 so minus 8 from total
# # / 4: Each student's data is assumed to take 4 elements in the data array so divide by 4

numOfStudents=$(((${#dataArr[@]} - 8) / 4))

# Extract student data 
k=8 # The count starts at 8 - see logic above
for ((i=0; i<numOfStudents; i++)); do
    student_id+=(${dataArr[k]}) # start at count 8 which is assigned to k
    marks+=(${dataArr[k+1]} ${dataArr[k+2]} ${dataArr[k+3]}) # add the 3 adjacent cols which are position 9 10 and 11
    # calculate total scores
    total_score[$i]=$(((${weights[0]} * ${marks[3*i]} + ${weights[1]} * ${marks[3*i+1]} + ${weights[2]} * ${marks[3*i+2]}) / 100))
    
    k=$((k + 4)) # each student is k +4 as there are 4 marks to caculate
done

# Print header
echo -e "${header[@]}"

# Print weights
echo -e "WEIGHTINGS\t${weights[@]}"

# Print student data, total score, and pass/fail status
for ((i=0; i<numOfStudents; i++))
 do
    echo -e "${student_id[$i]}\t${marks[3*i]}\t${marks[3*i+1]}\t${marks[3*i+2]}\t${total_score[$i]}\t$(if ((total_score[i] >= 40))
     then echo "PASS"
      else echo "FAIL" 
      fi
done

# Print bar graph
echo -e "\t\tBAR GRAPH OF RESULTS"
for ((j=100; j>=0; j-=10)); do
    echo -n "$j\t"
    for ((i=0; i<numOfStudents; i++)); do
        if ((total_score[i] >= j)); then
            echo -n "*\t"
        else
            echo -n " \t"
        fi
    done
    echo
done


# SEE REFACTOR OF GEORGE'S SOLUTION ABOVE
dataArr=(`cat ./data.txt`)
# header=()
# weights=()
# ID=()
# marks=()
# fmarks=()
# status=()
for data in $dataArr; do echo "Data in array is: ${data.Arr[*]}" ; done

# ((nstu = (${#dataf[*]} - 8)/4))

# for ((i=0;i<4;i++))
# do
#    header[i]=${dataf[i]}
# done
#    header[i]="Total"
#    ((i = $i + 1))
#    header[i]="Status"   


# for ((j=0;j<3;j++))
# do
#    weights[j]=${dataf[i]:0:2}
#   ((i = $i + 1))
# done

# k=$i
# m=0
# n=0  
# for ((j=0;j<$nstu;j++))
# do
#    ID[m]=${dataf[k]}
#    ((m = $m + 1))
#    marks[n]=${dataf[k+1]}
#    marks[n+1]=${dataf[k+2]}
#    marks[n+2]=${dataf[k+3]}
#    fmarks[j]=$(( (${weights[0]}*${marks[n]}   + ${weights[1]}*${marks[n+1]}   + ${weights[2]}*${marks[n+2]})/100 ))
#    ((n = $n + 3 ))
#    ((k = $k + 4))
# done
# i=0
# while test $i -lt "${#header[*]}"
# do
#     echo -e "${header[i]}\t\c"
#     ((i = $i + 1))
# done
# echo
# i=0
# echo -e "WEIGHTINGS\t\c"
# while test $i -lt ${#weights[*]}
# do
#     echo -e  "${weights[i]}%\t\c"
#     ((i = $i + 1 ))
# done
# echo
# k=0
# for ((i=0;i<$nstu;i++))
# do
#    echo -e "${ID[i]}\t\c"
#    for ((j=k;j<k+3;j++))
#    do
#       echo -e "${marks[j]}\t\c"
#    done
#    echo -e "${fmarks[i]}\t\c"
#    if test ${fmarks[i]} -ge 40
#    then 
#        echo "PASS"
#    else
#       echo "FAIL"
#    fi
#    ((k = $k + 3))
# done
# echo -e "\t\tBAR GRAPH OF RESULTS"
# #plot histogram
# for ((j=100;j>=0;j-=10))
# do
#    echo -e "$j\t\c"
#    for ((k=0;k<$nstu;k++))
#    do
#        if test ${fmarks[k]} -ge $j
#        then
#            echo -e "   *\t\t\c"
#        else
#            echo -e "    \t\t\c"
#        fi
#    done
#    echo
# done
# echo -e "\t\c"
# for ((k=0;k<$nstu;k++))
# do
#    echo -e "${ID[k]}\t\c"
# done 
# echo
# exit
