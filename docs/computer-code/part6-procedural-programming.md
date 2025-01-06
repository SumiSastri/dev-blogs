---
layout: default
title: What is procedural or functional programming?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# What is procedural or functional programming?

Procedural programming is another coding methodology in which the program code is divided into blocks, or functions, that carry out a task at a time. It is a series of computational steps to be carried out in a specific order [1].

Procedural programming differentiates itself as a coding paradigm from object-oriented programming, where classes create objects, and the program is driven by the functions contained within the object-oriented paradigm.

Object-oriented programming today uses functional programming as well. The primary design contract of the program data is based on objects and classes, as well as the functions or methods contained and shared by the classes. The focus is less on strict control of functions, but more about their sequence, selection and use of subroutines.

Procedural programming is also known as structured programming, but it goes one step further by focusing on both subroutines and the controlled structure of the sequence in which the programs run.

If you look at the Bash scripting language, a single procedure may have many lines of code. The code is broken into the sequence that the statements are executed in; a selection of a statement if the results of a logical test are true; and iterations with repetitions of a block of code if a statement is true, exiting only if the statement is false.

```Bash
#!/bin/bash

echo
echo "TEST 1: Did batsman score a century?"

echo
century=100
if [ $century -eq 100 ]; then echo "The batsman has hit a century!" ; fi
echo
echo "DONE exit 1"

echo
echo "TEST 2 single line for-do loop"

echo
teamMembers=( Abi Abe Abdul )
for teamMember in $teamMembers; do echo "Team players are ${teamMembers[*]}" ; done
echo
echo "DONE exit 2"

```

## What are the key features of procedural programming?

Procedural programming has common features [2] that distinguish them from object-oriented programming.

1. Procedural calls or routines
2. A linear program flow
3. Top-down design

It also shares the ability to declare global or local variables, can be designed for modularity, and allows for data or the underlying state of a program to be both read and updated. This is where the lines can blur, especially in languages such as Python or JavaScript that use both programming paradigms.

The key challenges with pure procedural programming languages like Bash are they are difficult to scale. The tight coupling of a code block with its procedures and subroutines makes the code inflexible and difficult to maintain.

Look at the bash code below - all it does is look at a table of students' marks, calculate scores and update the table with the final marks.

```Bash
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
```

## What are the advantages and disadvantages of procedural programming?

The key advantage of procedural programming is the ability to write parallel programs and procedures. In the case of Bash, specifically, it is a language that works directly with a computer kernel. In the case of C, it is good for writing programs in embedded systems. Other languages that use procedural programming [3] are BASIC, Cobol, Fortran and Pascal.

Procedural languages give developers a good foundation in programming as they are relatively simple and accessible. It is impossible to code without having a good foundation in procedural programming.

However, the disadvantages are they are difficult to read, write and maintain making the developer experience working with these languages a headache. It is good to have blended skills and most languages combine functional programming with object-oriented programming principles as pure functional programming is difficult to scale and debug.

#### EXTERNAL REFERENCES

- [1] [Ada computer science](https://adacomputerscience.org/concepts/procprog_paradigm)

- [2] [Hacker](https://hackr.io/blog/procedural-programming)

- [3] [Indeed](https://www.indeed.com/career-advice/career-development/procedural-programming-language)
