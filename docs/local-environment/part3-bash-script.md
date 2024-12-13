---
layout: default
parent: The developer environment
nav_order: 7
title: What is the difference between Bash shells and the Bash Script?
---

# What is the difference between Bash shells and the Bash Script?

Bash, is a shell and refers to the specific Bourne again shell. The Bash script is a scripting language that allows you to write a script to automate processes using the Bash shell. 

Scripts are interpreted language. What that means is that each line of the code is interpreted, executed and then the interpretation moves to the next line. 

Code compilers do not scan through the whole script as a block, instead they look at the code line-by-line.

There are as many scripting languages as they are shells. There are different scripts for Korn, C and Zee shells. For example, the Bash Script takes the file extension `.sh` whereas the `.ksh` files are for Korn shells and `.csh` for c-shells. The syntax for these scripting languages also differ. The environments and how to set up these environments also differ - in part 8 and part 9 - you see that setting up the environments for Bash and Zish differ substantially.

Shell scripts help system operators to manipulate files in the file system (FS) and set user read, write and execute levels to files and folders.

[Read more](https://linuxconfig.org/bash-scripting-vs-shell-scripting).

Bash files can be created with the `.sh` file extension. You can use any editor - nano or vim - to create a file. 

With nano -`nano <filename>` and with vim `touch <filename>`. Logic can be written into these files and executed by calling the file after changing the default read-write to files that are executable with the `chmod +x <filename>` command and then calling the file with the command `bash <filename>`.


## What is the difference between scripting languages and programming languages?

Scripts share, with programming languages, data types and programming logic. However, they are not programming languages as they are dynamic and loosely typed.

[Read more](https://pages.cs.wisc.edu/~deppeler/tutorials/scripting/)

This means the languages are interpreted and not compiled. An interpreter reads code line by line and executes each line until an error is encountered. A compiler bundles a whole code block, reading it once and reducing it down to machine code.

Examples of scripting languages are JavaScript, Python, PHP. JavaScript, started as a scripting language to add simple scripts to user events - clicks, mouse and keyboard inputs. However with the rapid advancement of the popularity of JavaScript, it has turned into a compiled language rather than a scripting language with its own set of specialised compilers and interpreters.

One of the downsides of scripting languages is that error messages are not very detailed as scripts are lightweight applications. The error might point to the line that the interpreter has stopped working but the actual error could be a few lines above the actual error message.

[Read more](https://www.geeksforgeeks.org/whats-the-difference-between-scripting-and-programming-languages/)


## The characteristics of programming languages that are incorporated in the Bash script

Bash shares these programming conventions with its own syntax and useage:-

__Primitive data types__

- Strings - the default type 

- Integers - Bash does not support decimal places or floating point numbers

__Nullish types__

- Ideally not recommended as any empty type may be considered a string - spaces represent ASCII char 32 and is an empty string. Another reason is that there are no user inputs like clicks, scrolling that are recognised by bash as it is a direct relationship between the keyboard and the computer kernel. Zero is not considered a nullish type but an integer.

__Variable storage__

- immutable named variables and the `let` key word with an assignment operator `=` for mutable variables.

- value of one variable can be assigned to another variable with a different name eg: 
```.sh
num_1 = 10 
num_2 = num_1
```

__Basic arithmetic operators__

- Addition `+` , subtraction `-`, multiplication `*` , division `\` and modulus `%`

__Logical operators__

- Both statements evaluate to true `&&`, the or `|` operator where 1 or more evaluate as true

- The greater than and less than are `gt` and `lt` not carats are used for numerical evaluations


__Control flow conditional statements__

- There are data control flows with `if-then`, `if-then-else-then` as well as `if-then-elif-then-else-then` blocks as well as nested conditions.
- The key loop structures are `for-do`,`until-do` and `while-do` as well as the `switch statement` for complex looping.

__Lists__

Bash. like other programming languages, has ordered lists or arrays that allow you to access data and loop through the data performing logical and arithmetical operations.

__Where data is stored__

In the terminal, data moves from the inputs of the user into 3 streams - a standard input, standard output and standard error.

The `$#!/bin/bash` is the file entry point and instructions are picked up by the hardware's interpreter, sent into the standard input stream, where it is stored with the instructions in memory. The data is processed and returned in the standard output stream or standard error stream.

__Positional variables__

Another feature of bash is the ability to initialise variables directly on the terminal. These variables are called positional or script variables.

## Pros and cons of Bash

Bash isn't the right choice for complex arithmetic operations or computing challenges as it has only 2 primitive types of data - strings and numbers. Numbers, are not decimal floating points but inttegers.

Shell programming works due to several packages of free software from GNU, allowing piping and diverting of code via sempahores to run parallelly. Natively however, bash is programmed to run serially. GNU offers a collection of programs, applications, developer tools and even games that are embedded in the Bash script.

It is a low-level script that is good for system operators to manage read-write-execute operations on files in the filing system for internal groups and individuals as well as external groups or individuals wishing to access server-based data.

It is powerful and quick, interacting with the key processes in a computer. It is not easy to learn and formatting is manual.

Editors like nano and vim are basic and code is clunky - not an ideal developer experience.

#### EXTERNAL REFERENCES - What is the difference between Bash shells and the Bash Script?

- [1] _Bash Cookbook:_ Ron Brash, Ganesh Naik, Packt Publishing, July 2018

- [2] Stallings W & Mohan R, __Computer organization and architecture: designing for performance__ , 1st edn (Packt Publishing, July 2018), 9th ed., International ed., (Pearson Education, March 2013) chap.1, pg 35

- [3] Scott Simpson, _Learning Bash Scripting_, (Linked-in Learning, Sept, 2022), [Accessed: Oct. 29, 2024](https://www.linkedin.com/learning/learning-bash-scripting-17063287/what-s-bash?resume=false&u=42314660)

- [4] __GNU__(Accessed: Oct. 27, 2024) [Available]https://www.gnu.org/

- [5] George Charalambous (2024), __BASH part 1__, PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5330159_1)
