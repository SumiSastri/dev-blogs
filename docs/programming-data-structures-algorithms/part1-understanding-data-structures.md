---
layout: default
title: What is the difference between an abstract data type and a data structure?
nav_order: 13
parent: DSA - data structures and algorithms 
last_updated: May 2025
---

# What is the difference between an abstract data type and a data structure?

A data structure organizes related data for efficient storage, access, and processing. Understanding data structures involves distinguishing between structured data. Structured data is when data is organised in a particular way. Data structures, takes structured data one step further by managing this data in a pre-determined fashion. Data structures, therefore, have underlying mathematical properties that determine their use and application.

The key uses and features of a data structure are:-

- to provide operational and internal representations of data in a system (eg: classes in object-oriented programming)
- to connect data accurately
- to deal with different data types - static vs. dynamic structures (stable vs. modifiable)
- to protect data, control its movement and storage
- convert data into byte-size - 4 to 8 bytes - for machine registers to process
- to provide an interface or relationship with ICT (Information and Communication Technology)

__What is an abstract data type (ADT)__

Abstract Data Typess define how data can be used without specifying the underlying implementation. When a class is created, privately stored data through the process known as data encapsulation ensures the internal details of the data can only be accessed by the class via the class methods. Public methods and interfaces provide controlled access to this data. vADTs allow flexibility in modifying data without changing the class data structure.

## A closer look at the different types of data structures and their uses

- Linear (sequential): Data is arranged in a sequence (e.g., Arrays, Linked Lists)
- Non-linear (non-sequential): Data is not arranged in a straight line (e.g., Trees, Graphs)
- Static (fixed size): Data has a set size and cannot expand (e.g., Arrays)
- Dynamic (flexible size): Data can grow or shrink during execution (e.g., Linked Lists)
- Indexed (key-value pairs): Data is stored in key-value form (e.g., Hash Maps).
- Linked (non-indexed): Data elements are connected via pointers (e.g., Linked Lists).
- Hierarchical: Data is organized in a tree-like structure (e.g., Trees, Heaps).
- Hash-based:  Data is stored based on a hash function (e.g., Hash Tables, Hash Maps).
- Matrix: Data is stored in multi-dimensional structures (e.g., 2D Arrays).
- Priority-based: Data is stored based on priority rather than order (e.g., Priority Queues, Heaps).
- Distributed: Data is spread across multiple locations or systems (e.g., Distributed Hash Tables).

## Data structures and and memory management

- Static Data: Fixed, small, may waste memory due to fragmentation.
- Dynamic Data: Can grow/shrink at runtime, requires careful management during compilation.
- Memory Allocation: The new keyword allocates memory for objects/classes, storing references using a stack pointer.

_Memory Management and Complexity_
In data structures, memory management refers to efficiently utilizing memory resources to ensure that data can be stored, accessed, and modified without unnecessary waste or performance hits. In practice:

- Dynamic memory allocation (e.g., using pointers in linked lists, trees) allows for flexible memory usage.
- Efficient storage (e.g., binary trees or hash tables) allows faster access and manipulation.

_Example of PIN and Password Complexity_
PIN (Personal Identification Number): A 3-digit PIN has 1,000 possible combinations (from 000 to 999).
Password with Letters: For a password of length 3 using 26 letters, the number of possible combinations is 26 to the power of 3 taking a brute force attack to run 17,576 iterations to crack the code. Adding more characters or including uppercase, lowercase, or special characters increases the complexity exponentially making the password more difficult to crack.

## Conclusion

Understanding data structures is essential for efficient storage and management of data, different structures offer programmers different ways to access data to insert new data records, delete or update them. Some data structures are lighter and occupy less storage than other data structures, but this is not the main consideration, how data can be accessed and mutated forms a greater part in data-retrieval and management. Data on its own is inert, programs with well-defined algorithms are essential. Algorithms determine the efficieny of the data type and the combination of the right data structure and alorithm is crucial in data processing.
