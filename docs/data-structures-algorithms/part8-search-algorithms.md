---
layout: default
title: Common search algorithms
parent: DSA - data structures and algorithms
last_updated: May 2025
---

# Common search algorithms

Data often has to be searched before it is deleted or updated. With tree structures and linear data structures these operations are different with different time complexity. Some data structures like queues and stacks are not built for search. The binary search is the most commonly used search across both linear and non-linear data-structures.

## Linear Data Searches

- Linear search via iterations element by element
Time complexity: O(n).
Applies to arrays, linked lists, or any unsorted collection.

With linked-lists, linear search is used by following the next pointers. Withe doubly linked lists the previous pointer can be utilised. There is no direct access to elements by index.
Time complexity:  O(n)

Stacks and Queues typically do not support search. You can only peek() (look at the top) or pop() (remove top). Searching requires popping items off, which breaks stack behavior—so searching is not typical or efficient. To search a queue, you have to dequeue elements one by one. This breaks queue structure unless you re-enqueue them.

## Tree traversal

Search across all trees is supported via tree traversals.  _Efficiency of all searches are O(n)_ since each node is visited once in the worst case for all types of traversal (level-order, in-order, pre-order, post-order). _BST and AVL efficiency O(log n)_ as the trees are ordered. You can also efficiently find min/max; (leftmost/rightmost nodes);  successor/predecessor nodes in balanced trees.

The examples here show the traversal orders across all tree structures.

_Breadth-first level-order search_

                 1
                / \
              2     18
            / \     / \
          19 103    6 15
         /
        3
To search for a value in a general binary tree, the operation is typically a linear level-order search, which is similar to the search performed to a linked list.

**Level order output: 1, 2, 54, 19, 103, 6, 15,3**

Looking for 103, a linear level-order search makes the efficiency o(n) as every node has to be visited.

_Depth-first in-order search(Left → Root → Right)_

- In order prioritises printing the roots starting from the deepest level root
- Traversal starts at the root which is only printed recursively on the way back up the tree
- Roots are printed level by level with the left leaf printed first, the root then the right leaf
- Subtree leaf level left roots printed: 5, 35, 82 stops at this level
- Then right leaf - 12
- Move up the tree to the predecessor at this level print root 25, then the right leaf 10
- Move up the tree to the next level parent this happens to be the root print Root 18

Right subtree

- Traversal down the left leaf to deepest level  4, 7, 5 printed (same logic as left subtree)
- Traverse up to the next level 2  is the predecessor root gets printed,  then right leaf is printed 12
- The leaves l and r printed 6 2

                     18
                  /      \
                 25       2
                / \       / \
              82  10     7   12
             / \        / \  /  \
            35  12     4   5 6   2
           /
          5

**In-order output: 5, 35, 82, 12, 25, 10, 18, 4, 7, 5, 2, 6, 12, 2**

_Depth-first pre-order search (Root → Left → Right)_

- Pre order prioritises printing the root with traversal starting at the root
- Traversal starts at the root and the root is printed - depth search goes all the way down to the last left leaf
- Recursively traverse (backtrack) the left subtree
- Roots of all the left subtrees are printed first =  18, 25, 82. 35, 5
- The traversal checks for right children recursively
- Then all the right nodes are printed =  12, 10

- Right subtree - same logic
- Depth goes all the way down to the last left leaf
- Roots of all the left subtrees are printed first =  2, 7, 4
- Then all the right nodes checked recursively = 5,12, 6, 2

                         18
                        /    \
                     25        2
                    /  \      /  \
                  82   10    7    12
                 / \        / \   /  \
                35  12     4   5  6   2
                /
               5
  
**Pre-order output = 18, 25, 82, 35, 5, 12, 10, 2, 7, 4, 5, 12, 6, 2**

  _Depth-first post-order search (Left → Right → Root)_

- Post order depriotises root printing - the root is printed last
- At each subtree print the left, right leaves then the root
- The tree root is printed last after traversing the right sub tree


                  18
               /      \
              25       2
             /  \     / \
            82   10  7    12
          / \       / \   / \
        35  12     4   5 6   2
        /
       5

**Post-order output: 5,35 12, 82, 10, 25, 4, 5, 7,6, 2, 12, 2, 18**

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
