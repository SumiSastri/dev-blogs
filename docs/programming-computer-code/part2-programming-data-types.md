---
layout: default
title: What are the different data types in a programming language?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Oct 2024
---

# What Are the Different Data Types in a Programming Language?

All programming languages share one core principle: they rely on data types to store, retrieve, and manipulate data. Understanding data types, the instruction sets that change this data and how they interact with memory is fundamental to programming.

This section explores common data types across programming languages, their roles in memory allocation, and the lifecycle of data.

_Primitive Data Types_

Primitive data types, also known as literals, are the simplest data forms. They directly represent data and are immutable.

Examples include:

*Numbers*

- Integers (int): Whole numbers (e.g., 1, 42, -7).
- Floating-Point Numbers (float): Numbers with decimal points (e.g., 3.14, -0.001).

*Characters (char)*

- Single letters, digits, or symbols (e.g., 'a', '7', '@').

*Booleans (bool)*

Represent truth values (e.g., true or false).

Primitive, also known as scalar, types form the foundation of all data structures and operations in programming.

_Lists and Collections_

A list is a collection of multiple data items, often grouped and manipulated together. 

Lists can be:

*Ordered Lists* 

Data items are arranged sequentially (e.g., arrays in JavaScript, lists in Python). 
eg: A word is an ordered list of characters.

*Unordered Lists*

Data items have no specific order (e.g., objects in JavaScript, sets in Python).
eg: A set of unique items, such as {1, 3, 5}, is an unordered list.

Lists can also be static or dynamic (vectors). A static list can not be changed, while vector lists allow for insertions, deletions and changes in the ordering of the lists even after the list is created.

Different programming languages use various names for lists, such as arrays, collections, sets, or dictionaries, depending on their specific features (e.g., ordering, mutability, indexing).

_Arithmetic Operators_

Arithmetic operators allow calculations between numbers:

Addition (`+`), Subtraction (`-`), Multiplication (`*`) and Division (`/`)

Note: Characters like - may have multiple meanings depending on context—for example, as a hyphen in strings versus subtraction in numeric data.

_Logical Operators_

Logical operators evaluate relationships or conditions. Common operators include:

- Greater Than (`>`): Checks if the left operand is larger than the right.
- Less Than (`<`): Checks if the left operand is smaller than the right.
- AND (`&&`): Ensures both conditions are true.
- OR (`||`): Ensures at least one condition is true.

Each programming language may have unique syntactical rules for using these operators, so consulting language-specific documentation is essential.

_Functions: Adding Behavior to Data_

Functions encapsulate logic and provide reusable behaviors. 

For example:

```javascript
//  method signature
function add(a, b) {
  return a + b; // return statement or method body
}

add(1, 2); // output, executable, instructions that work on function call

```

Key components of functions:

- Parameters: Input variables (e.g., a, b).
- Return Values: Output of the function (e.g., a + b).
- Function Body: Instructions executed when the function is called.

Functions occupy memory and manipulate data, integrating behavior with data for program execution.

Data Initialization and State Management
Data Initialization
Data is "initialized" by assigning a data type and a memory location. For example:

```javascript
let x = 10; // Integer
let name = "Alice"; // String
Primitive data types (e.g., integers, characters) are stored in fixed-size memory spaces. More complex data (e.g., lists or objects) requires additional memory allocation.
```

## State Management - the data lifecycle

State management refers to the lifecycle of data, the stages of the lifecycle are:

- Creation: Data is initialized.
- Mutation: Data is transformed by program instructions.
- Deallocation: Data is removed from memory when no longer needed.

Efficient state management ensures programs run smoothly without excessive memory use.

## Data Storage: Little Endian vs. Big Endian

Endianism in computer science derives its source from Gulliver’s Travels where the Lilliputians ate eggs in different ways - either from the larger side of the egg or the smaller end of the egg.

When data is stored in memory, it is broken into bytes (8 bits per byte). How these bytes are arranged depends on the system architecture:

__Little Endian__ also known as LE Stores the least significant byte (LSB) at the smallest memory address.

__Middle-Endian__ also known ass the Mixed-Endian, ME, stores the numbers between the SE and BE

__Big Endian__ or BE Stores the most significant byte (MSB) at the smallest memory address.
For example: The hexadecimal number 0x1234 would be stored as:

Little Endian: 34 to  12
Mixed Endian: 15 to 24 (ME is not always notated)
Big Endian: 12 to 34

Endianism is crucial for compatibility between systems with different architectures.

## Data processing - memory allocation and efficiency

The efficiency of data processing depends heavily on how memory is allocated and the proximity of data (latency) to the processor (CPU). Different types of memory offer varying speeds and capacities, influencing the overall performance of a program. Latency - longer distances from the CPU - adds to both costs and efficiency as we will see from this memory hierarchy.

__Memory Hierarchy and Processing Efficiency__

*Random Access Memory (RAM)*

RAM is ideal for high-speed processing but cannot store large amounts of data due to physical size and cost limitations.

Proximity to CPU: Closest to the CPU, making it the fastest storage medium.
Use Case: Stores frequently accessed data and active processes for quick retrieval.
Capacity: Limited in size compared to secondary storage options.
Dynamic RAM (DRAM): A type of RAM that requires periodic refreshing to retain data, used widely for its cost-effectiveness.

*Thrashing and Swap Memory*

When RAM becomes full, the operating system swaps data between RAM and slower storage devices (e.g., hard drives) to free up space.
Thrashing: Frequent swapping degrades performance as more time is spent managing data transfers than executing processes.
Thrashing is inefficient and energy-intensive, making it a bottleneck in high-demand scenarios.

Solid-State Drives (SSDs) are faster than traditional hard drives but slower than RAM. They are used for storing larger datasets that are not actively processed but still require faster retrieval compared to hard drives.

*Secondary storage hard-drives, servers, cloud*

Hard-drives are slower than SSDs and RAM, but offers significantly larger storage capacity. They are ideal for less frequently accessed data or backup storage.

*Servers - on premise or cloud*

Servers provide virtually unlimited storage but introduces latency due to the need to transfer data over a network. Servers and cloud based storage are best suited for archival data or applications with distributed access needs. Network dependency and bandwidth constraints can add delays.

All programming languages use data types to store, retrieve, and manipulate data. The data or state management, the process of  creation, mutation, deallocation of data from memory is crucial to the performance of a software program. Efficient data handling ensures optimal memory use.Memory hierarchy impacts processing speed.

For all these reasons, effective data-management remains at the centre of every software programmers code design, planning and execution.

#### EXTERNAL REFERENCES

- [Documentation W3 schools - strings](https://www.w3schools.com/jsref/jsref_obj_string.asp)
- [Documentation Mozilla - numbers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)
- [Documentation Mozilla - strings](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)
- [Java Script dotcom - strings](https://www.javascript.com/learn/strings)
- [Free code camp - what is JavaScript](https://www.dofactory.com/tutorial/what-is-javascript)
- [Scrimba - boolean logic](https://scrimba.com/p/pPPeCy/caJVKfv)
- [Endianism - Wikipedia](https://en.wikipedia.org/wiki/Endianness)
- [Endianism - Freecodecamp](https://www.freecodecamp.org/news/what-is-endianness-big-endian-vs-little-endian/)
- [9] __Ada computer science__ Accessed Dec 13, 2024 [Available](https://adacomputerscience.org/concepts/trans_bnf)
