---
layout: default
title: What are linear data structures?
nav_order: 13
parent: DSA - data structures and algorithms
last_updated: May 2025
---

# What are linear data structures?

Linear data structures follow a sequential order. This sequential order must be preserved during any data operations such as insertions or deletions. Linear data structures could be either static, a fixed size, or dynamic where the size can grow with insertions or shrink with deletions. If a list has an index, searching is efficient happening in constant time O(1).

There are four commonly used linear data types arrays, linked lists, stacks and queues.

A more complete list can be found on [Wikipedia](https://en.wikipedia.org/wiki/List_of_data_structures)

### Arrays

An array is a fixed-size, sequential data structure that stores elements of the same data type in contiguous memory locations. Arrays are 0-indexed, meaning the first element is at index 0 and the last at n-1. Data types such as integers occupy 2–4 bytes, while strings may require more space (e.g., 28 bytes). Because memory is allocated at declaration, arrays offer fast access with constant time O(1) indexing.

Arrays can be one-dimensional (1D), two-dimensional (2D), or multidimensional (e.g., 3D arrays). For example, in a 3D array, accessing an element like "dog" would require three indices [i][j][k].

Time complexity traversing these arrays are:

- 1D: O(n)
- 2D: O(n²)
- 3D: O(n³)
- Jagged arrays, where rows have unequal lengths, still require O(n) but without structural uniformity.

Search strategies include brute-force linear search, which scans left to right in O(n), and binary search, which operates in O(log₂n) time but requires the array to be sorted. Binary search uses a divide-and-conquer strategy by repeatedly dividing the array into upper and lower segments based on comparisons with a middle element.

Common errors that occur using arrays are:-

- Syntax errors (violating language rules),
- Logical errors (incorrect conditions or logic),
- Memory errors (exceeding system allocation).

Arrays are efficient for index-based access and structured data storage but less flexible than dynamic structures like lists. Their use cases include lookup tables, image processing (2D arrays), and matrix operations. However, resizing arrays involves costly memory reallocation, making them better suited for static data.

### Linked lists

A linked list is a fundamental linear data structure comprising nodes that store data and pointers to other nodes. Unlike arrays, linked lists do not require contiguous memory allocation, allowing dynamic memory usage and efficient insertions and deletions. There are several types of linked lists:

- Singly Linked List: Each node points to the next node, enabling unidirectional traversal.
- Doubly Linked List: Nodes have pointers to both previous and next nodes, allowing bidirectional traversal.
- Circular Linked List: The last node points back to the first, forming a loop.

Operations on linked lists include creation, insertion, deletion, and traversal. Insertion at the head is efficient with a time complexity of O(1), while insertion at other positions requires traversal, leading to O(n) complexity. Similarly, deletion by value or position necessitates traversal, making it O(n). Unlike arrays, linked lists do not support efficient random access, as accessing an element requires traversing from the head.

In doubly linked lists, each node contains two pointers: prev and next, facilitating backward and forward traversal. This structure occupies more memory but offers faster operations in certain scenarios. For instance, in social media platforms, mutual connections can be represented using doubly linked lists, as users can follow each other. Conversely, singly linked lists can model one-way communications like email or SMS, where messages are sent in a single direction.

Linked lists are particularly useful in applications requiring dynamic memory allocation and frequent insertions and deletions, such as implementing stacks, queues, and adjacency lists in graphs. However, they are less efficient for scenarios requiring frequent random access or sorting.

### Stacks

A stack is a linear, one-ended data structure that follows the LIFO (Last-In, First-Out) principle. This means elements are added and removed from only the top of the stack. Common real-world analogies include a stack of plates or books where only the top item is accessible. In programming, stack operations include: push(x) to add an element to the top, pop() to remove the top element, peek() to view the top element without removing it, and isEmpty() to check whether the stack is empty. All these operations generally run in O(1) time, making stacks efficient for top-end access.

Stacks are widely used in applications such as browser navigation, where pages are pushed and popped as users click back or forward; undo/redo functionality in editors; pattern matching to check for balanced parentheses using bracket pairing; next greatest element algorithms in arrays; and Depth-First Search (DFS) in graph traversal. Stacks also play a crucial role in function call tracking, where each function call is pushed onto a call stack and popped after execution, aiding recursion and execution flow management.

Despite their simplicity, stacks may exhibit O(n²) performance in brute-force iteration, and they lack random access capabilities. They're typically implemented using arrays or linked lists. A stack is integral to solving computational problems that require backtracking, nested structure evaluation, and maintaining a history of operations.

### Queues

A queue is a linear, double-ended data structure that follows the FIFO (First-In, First-Out) principle. It allows elements to be added at the rear (enqueue) and removed from the front (dequeue), ensuring that the earliest added element is the first to be processed. In programming, key operations include: enqueue(x) to add an element (O(1)), dequeue() to remove an element from the front (O(1)), peek() to view the front without removal (O(1)), and isEmpty() to check for emptiness (O(1)). Operations like contains() or deleting a specific item take O(n), as each element must be checked.

Queues are commonly used in print job scheduling, where tasks are executed in the order they arrive; web server request handling, ensuring fair processing of client requests; and task scheduling in operating systems, particularly round-robin scheduling using circular queues. Specialized types of queues include circular queues (to optimize space), deques (double-ended queues), and priority queues (where elements are dequeued based on priority, not order).

A priority queue is essential in use cases like emergency room triage, where critical patients are prioritized. Implemented efficiently with heaps, priority queue operations generally run in O(log n) time.

Queues also underpin algorithms like Breadth-First Search (BFS) in graph traversal, essential in web crawling, friend suggestion systems, network broadcasting, and garbage collection. Unlike stacks, queues support sequential processing, making them ideal for workflow systems and resource management where task order matters.

### Conclusion

- Arrays are great for fast lookup but rigid in size.
- Stacks and queues excel in managing ordered data with minimal overhead when used appropriately.
- Linked lists offer flexibility but sacrifice direct access and memory efficiency.

Here is a quick comparison table of the advantages and disadvantages of these linear data types

| Data Structure  | Advantages                                                                                                  | Disadvantages                                                                                                            |
| --------------- | ----------------------------------------------------------------------------------------------------------- | ------------------------------------------------------------------------------------------------------------------------ |
| **Array**       | - Fast random access: O(1) indexing<br>- Memory-efficient for static data<br>- Simple implementation        | - Fixed size (static memory allocation)<br>- Expensive resizing<br>- Insertion/deletion is O(n)                          |
| **Stack**       | - Efficient top-end operations: O(1)<br>- Ideal for LIFO logic<br>- Supports recursion, undo/redo           | - Limited access (only from top)<br>- No random access<br>- Brute-force search is O(n²) in worst cases                   |
| **Queue**       | - Fair order processing (FIFO)<br>- O(1) enqueue/dequeue with linked structure<br>- Used in scheduling, BFS | - No random access<br>- Searching/removal by value is O(n)<br>- Requires additional logic for circular/priority variants |
| **Linked List** | - Dynamic memory allocation<br>- Efficient insert/delete at head (O(1))<br>- No memory wastage              | - No random access<br>- Search, delete by value is O(n)<br>- More memory overhead (extra pointers)                       |

### Section references

- [Introduction to linear data structures](https://www.geeksforgeeks.org/introduction-to-linear-data-structures/)

- [Six data structures every programmer should know](https://www.educative.io/blog/top-linear-data-structures)
