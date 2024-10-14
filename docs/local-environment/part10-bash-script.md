---
layout: default
parent: The developer environment
nav_order: 7
title: What is the difference between Bash and Bash Script?
---

# What is the difference between Bash and Bash Script?

Bash, is a shell and refers to the specific Bourne again shell. The Bash script is a scripting language that allows you to write a script to automate processes.

There are as many scripting languages as they are shells. For example, the Bash Script takes the file extension `.sh` whereas the `.ksh` files are for Korn shells and `.csh` for c-shells. The syntax for these scripting languages also differ. The environments and how to set up these environments also differ - in part 8 and part 9 - you see that setting up the environments for Bash and Zish differ substantially.

Shell scripts help system operators to manipulate files in the file system (FS) and set user read, write and execute levels to files and folders.

[Read more](https://linuxconfig.org/bash-scripting-vs-shell-scripting)

## What is the difference between scripting languages and programming languages?

Scripts share, with programming languages, data types and programming logic. However, they are not programming languages as they are dynamic and loosely typed.

[Read more](https://pages.cs.wisc.edu/~deppeler/tutorials/scripting/)

This means the languages are interpreted and not compiled. An interpreter reads code line by line and executes each line until an error is encountered. A compiler bundles a whole code block, reading it once and reducing it down to machine code.

Examples of scripting languages are JavaScript, Python, PHP. JavaScript, started as a scripting language to add simple scripts to user events - clicks, mouse and keyboard inputs. However with the rapid advancement of the popularity of JavaScript, it has turned into a compiled language rather than a scripting language with its own set of specialised compilers and interpreters.

[Read more](https://www.geeksforgeeks.org/whats-the-difference-between-scripting-and-programming-languages/)


## The characteristics of programming languages that are incorporated in the Bash script

Bash shares these programming conventions with its own syntax and useage:-

__Primitive data types__

- Strings - the default type 

- Integers - Bash does not support decimal places or floating point numbers

__Basic arithmetic operators__

- Addition `+` , subtraction `-`, multiplication `*` , division `\` and modulus `%`

__Logical operators__

- Both statements evaluate to true `&&`, the or `|` operator where 1 or more evaluate as true

- The greater than and less than are `gt` and `lt` not carats

__Variable storage__

- immutable named variables and the `let` key word with an assignment operator `=` for mutable variables

- value of one variable can be assigned to another variable with a different name eg: 
```.sh
num_1 = 10 
num_2 = num_1
```

__Nullish types__

- Ideally not recommended as any empty type may be considered a string - spaces represent ASCII char 32 and is an empty string

__Control flow__

- There are data control flows with `if-then` blocks as well as nested conditions, looping as well as switch statements.

Bash files can be created with the `.sh` file extension. You can use any editor - nano or vim - to create a file. 

With nano -`nano <filename>` and with vim `touch <filename>`. Logic can be written into these files and executed by calling the file after changing the default read-write to files that are executable with the `chmod +x <filename>` command and then calling the file with the command `bash <filename>`.

