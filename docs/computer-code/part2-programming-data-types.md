---
layout: default
title: What are the different data types in a programming language?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Feb 2024
---

# What are the different data types in a programming language?

All programming languagues share one thing in common. They have different data types. These types are stored, retrieved and mutated.

This section looks at data-types common to most programming languages. And the data-life-cycle.

As we have seen in the [last section](https://sumisastri.github.io/dev-blogs/computer-code/part1-code-modules/), programming lanugages are considered top-level or "source" code. 


## Primitive data types

A primitive data type is also known as a literal. It is literally what it says on the tin.

Examples of a primitive types are numbers and characters. Numbers if they are round numbers are called integers and if there are decimal places they are known as floating types.

A character is an alphabet of language and refers to a single character in the alphabet. In programming terms this type of primitive data is called a string.

## Lists of data

Lists are multiple sets of data. A word, for example is a list of primitive characters. As the words must be in a particular order to make sense, words are ordered lists.

If a list does not need to be stored in a strict order, it may be stored in an unordered list.

Different programming languages have different names for lists. In JavaScript, for example an ordered list is an array. An unordered list is an object. In Python a set is an unordered list. 

Descriptions such as collections, sort lists, indexed lists are all variations to the names given to ordered and unordered lists in a programming language.


## Arithmetic operators

For arithmetic operations, the operators `+`, `-` are used for addition and subtraction. The minus sign is also a dash as a character. This can be confusing as strings which make up words maybe hypenated.

When characters are defined as a primitive type of a string, the minus sign is read as a hyphen and when the data is defined as a number as an arithmetic operator.

The same is true of the multiplication and division operators, which are respectively `*` and `/`.


## Logical operators

Code blocks are recognised by the syntax of the language they are written in and the file extensions. 

For example, a `.js` file or a `.tsx` file - JavaScript and TypeScript compilers for the JavaScript Library React - are recognised by JavaScript and TypeScript compilers and processors. 

Java and C++, will have their own compilers, interpreters and processors.

Each of these logical operators may have a slightly different meaning in the language they are written in - but the key operators are greater than and less than are represented by the horizontal carats `>` and `<` respectively. The double amperestand `&&` evaluates 2 statements both of which have to be true for the program to execute, `||` the double pipe symbol evaluates 2 statements and executes if one of the statements is true.

Other operators and operands are used, and while learning the syntax of a particular language, it is useful to look at the specific meaning of these operators and operands and how they execute the instructions of the program according to the documentation and syntax prescribed.

## Initialisation of data and data state management

These primitive data types have no programming logic and merely represent the type of data and how it is stored. The initial state of data is "initialised" by a program.

Instructions provided after initialisation by logical statements, blocks of code and alogrithms are what transform data into programs that are executable. 

The execution of these instructions change or mutate the behaviour of the underlying data in some way.

This changing of the initial state of data is called mutation and the process that the cycle of data mutation is managed is called data state management, often abbreviated to state management.