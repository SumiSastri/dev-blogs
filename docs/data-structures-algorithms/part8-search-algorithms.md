---
layout: default
title: Common search algorithms
parent: DSA - data structures and algorithms
last_updated: May 2025
---

# Common search algorithms

__Linear Data Searches__

- Linear search via iterations element by element
Time complexity: O(n).
Applies to arrays, linked lists, or any unsorted collection.

With linked-lists, linear search is used by following the next pointers. Withe doubly linked lists the previous pointer can be utilised. There is no direct access to elements by index.
Time complexity:  O(n) 

Stacks and Queues typically do not support search. You can only peek() (look at the top) or pop() (remove top). Searching requires popping items off, which breaks stack behavior—so searching is not typical or efficient. To search a queue, you have to dequeue elements one by one. This breaks queue structure unless you re-enqueue them.

__Tree traversal__
Support structured searching via traversals.

Depth-First Search (DFS): Pre-order/In-order/  Post-order or  Breadth-First Search (BFS): Level-order

In Binary Search Trees (BSTs) or AVL trees Search is O(log n) in balanced trees.You can also efficiently find:
min/max (leftmost/rightmost nodes);  successor/predecessor via traversal logic

__Binary Search__

A classic divide and conquer algorithm Works on sorted data (arrays or trees). This search is not suitable for linked-lists.
Time complexity: O(log n)

## Search Algorithms Summary

| Algorithm              | Data Structure       | Time Complexity         | Space Complexity | Description                                                                 |
|------------------------|----------------------|--------------------------|------------------|-----------------------------------------------------------------------------|
| **Linear Search**      | Array, Linked List   | O(n)                     | O(1)             | Checks each element one by one until target is found                        |
| **Binary Search**      | Sorted Array         | O(log n)                 | O(1)             | Divides array in half repeatedly to find the target                         |
| **Jump Search**        | Sorted Array         | O(√n)                    | O(1)             | Jumps ahead by steps, then linearly searches within a block                 |
| **Exponential Search** | Sorted Array         | O(log n)                 | O(1)             | Finds range with exponential steps, then uses binary search                 |
| **Interpolation Search**| Sorted, uniform data| O(log log n) best, O(n) worst | O(1)        | Estimates position based on data value distribution                         |
| **Ternary Search**     | Sorted Array         | O(log n)                 | O(1)             | Divides array into three parts; useful in optimization problems             |
| **Hash Search**        | Hash Table           | O(1) avg, O(n) worst     | O(n)             | Uses hash function to compute index directly                                |
| **DFS (Depth-First)**  | Tree, Graph          | O(V + E)                 | O(h) or O(V)     | Explores as deep as possible along each branch                              |
| **BFS (Breadth-First)**| Tree, Graph          | O(V + E)                 | O(w) or O(V)     | Explores all neighbors before going deeper                                  |
| **A\* Search**         | Weighted Graph       | O(E + V log V)           | O(V)             | Uses heuristics to find the shortest path quickly                           |
| **Dijkstra’s Algorithm**| Weighted Graph      | O(E + V log V)           | O(V)             | Finds shortest path from source to all vertices                             |

_Note_
- `V`: number of vertices
- `E`: number of edges
- `h`: height of the tree
- `w`: maximum width of tree/graph layer
