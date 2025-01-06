---
layout: default
title: What are the different data types in a programming language?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Oct 2024
---

# What are the different data types in a programming language?

All programming languages share one thing in common. They have different data types. These types are stored, retrieved and mutated.

This section looks at data types common to most programming languages. And the data life cycle.

As we have seen in the [last section](https://sumisastri.github.io/dev-blogs/computer-code/part1-programming-vs-machine-code/), programming languages are considered top-level or "source" code.

## Primitive data types

A primitive data type is also known as a literal. It is literally what it says on the tin.

Examples of primitive types are numbers and characters. Numbers if they are round numbers are called integers and if there are decimal places they are known as floating types.

A character is an alphabet of language and refers to a single character in the alphabet.

Characters and integers are the only data types and the starting point of the data life cycle as we will see in this article.

## Lists of data

Lists are multiple sets of data. A word, for example, is a list of primitive characters. As the words must be in a particular order to make sense, words are ordered lists. Sentences are ordered lists where the space is a delimiter.

If a list does not need to be stored in a strict order, it may be stored in an unordered list.

Different programming languages have different names for lists. In JavaScript, for example, an ordered list is an array. An unordered list is an object. In Python, a set is an unordered list.

Descriptions such as collections, sort lists, and indexed lists are all variations of the names given to ordered and unordered lists in a programming language.

## Arithmetic operators

For arithmetic operations, the operators `+`, and `-` are used for addition and subtraction. The minus sign is also a dash as a character. This can be confusing as strings which make up words maybe hyphenated.

When characters are defined as a primitive type of a string, the minus sign is read as a hyphen and when the data is defined as a number as an arithmetic operator.

The same is true of the multiplication and division operators, that are respectively `*` and `/`.

## Logical operators

Code blocks are recognised by the syntax of the language they are written in and the file extensions.

For example, a `.js` file or a `.tsx` file - JavaScript and TypeScript compilers for the JavaScript Library React - are recognised by JavaScript and TypeScript compilers and processors.

Java and C++, will have their compilers, interpreters and processors.

Each of these logical operators may have a slightly different meaning in the language they are written in - but the key operators are greater than and less than are represented by the horizontal carats `>` and `<` respectively. The double ampersand `&&` evaluates 2 statements both of which have to be true for the program to execute, `||` the double pipe symbol evaluates 2 statements and executes if one of the statements is true.

Other operators and operands are used. While learning the syntax of a particular language, it is useful to look at the specific meaning of these operators and operands and how they execute the program instructions. The documentation will outline the syntax prescribed and what compilers will check against for errors.

## Initialisation of data and data state management

Programming data consists of data and instructions. Instructions is the set of programming logic that transforms base data.

Primitive data types have no programming logic and merely represent the data type and how it is stored. The initial state of data is "initialised" by a program. The initialisation process gives the data type and a location in memory on the memory stack.

The native types of data - characters and numbers - have an immutable space in memory as they are the smallest storage unit. A word is a list of characters. Numbers are converted from octals and decimals back to binary. Data that require more storage space are referenced by an address in memory on the memory heap. These tend to be the instructions that transform the data.

Instructions provided after initialisation by logical statements, blocks of code and algorithms are what transform data into executable programs. Program instructions change or mutate the behaviour of the underlying data. Mutation is the process by which data changes of data. The cycle of data creation, mutation and deallocation from memory registers on target machines  is known as data state management, often abbreviated as state management.

The parsing, interpretation, compiling and bundling of this code into a software package are all processes that are handled by individual software packages or software libraries. In today's world, a developer has to deal with packages within packages (nested packages) as well as packages that are dependent on external libraries to perform the program instructions.

The source code that they are writing is dependent on the performance of these nested packages and libraries, resulting in nested dependencies. While this may increase the features that a software package offers the end user it decreases the transparency and efficiency of the code at execution time.

## Data storage - Little Endian and Big Endian

All programs have to be compiled down into the language that target machines can understand - bits and bytes. Compilers and assemblers are programs that facilitate this process and each programming language will have its own set of compilers that will automate this process.

The data then is ready to be loaded onto a target machine for execution in the form of an "executable" or an object that contains the data and instructions in byte code - intermediate code - which can then be loaded onto memory registers and get processed as bits. There are 8 bits to a byte.

The bigger the data bytes and processing needs, the more memory space the program execution needs. Larger byte size data is stored in what is known as the Big Endian (BE) or the left side registers on a memory block and the smaller byte on the Little Endian (LE) on the right-hand side of the memory registers. This "Endianism" in computer science derives its source from Gulliver’s Travels where the Lilliputians ate eggs in different ways - either from the larger side of the egg or the smaller end of the egg.

Each byte is allocated an address, the most significant bytes (MSbytes) are stored on the BE side while the smaller, least significant bytes (LSbytes) on LE side and everything else in between in the ME or Middle-Endian, also known as the Mixed-Endian.

## Data and memory allocation - efficiency quotient

The smaller the data, the quicker it is processed, this data is stored on RAM. The larger the data the slower it is processed. Data then may be stored on ROMs, read-only-machines, hard drives, external hard drives, on-premise servers or cloud servers. The further away the data is to the CPU the longer it will take to process.

The efficiency quotient, or latency is the reference of how and where programming languages store, retrieve and process data.

#### EXTERNAL REFERENCES

- [Documentation W3 schools - strings](https://www.w3schools.com/jsref/jsref_obj_string.asp)
- [Documentation Mozilla - numbers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)
- [Documentation Mozilla - strings](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)
- [Java Script dotcom - strings](https://www.javascript.com/learn/strings)
- [Free code camp - what is JavaScript](https://www.dofactory.com/tutorial/what-is-javascript)
- [Scrimba - boolean logic](https://scrimba.com/p/pPPeCy/caJVKfv)
- [Endianism - Wikipedia](https://en.wikipedia.org/wiki/Endianness)
- [Endianism - Freecodecamp](https://www.freecodecamp.org/news/what-is-endianness-big-endian-vs-little-endian/)

