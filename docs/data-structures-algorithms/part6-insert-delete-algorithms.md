---
layout: default
title: What algorithms are used for insert and delete operations for different data structures?
nav_order: 13
parent: DSA - data structures and algorithms
last_updated: May 2025
---


# What algorithms are used for insert operations for different data structures?

_Insert operations for linear data-structures_

_Arrays_
Insertion at the beginning of an array requires shifting all existing elements to the right, which results in O(n) time complexity. In many languages (like JavaScript), unshift() is used to insert at the beginning, while push() adds to the end of the array, which is generally O(1) (amortized).

_Linked Lists_
Insertion can occur at any position in a linked list (beginning, middle, or end). To insert in the middle, you must traverse to the desired location, then update the next (and prev, in a doubly linked list) pointers of adjacent nodes. This operation is efficient at the head (O(1)) but O(n) in the middle or end due to traversal.

_Stacks_
A stack can be implemented using arrays or linked lists. Insertion happens only at the top of the stack using push(). This follows the Last-In, First-Out (LIFO) principle. Regardless of implementation, insertion is typically O(1).

_Queues_
A queue can also be implemented using arrays or linked lists. Data is enqueued at the rear (end) and dequeued from the front, following the First-In, First-Out (FIFO) principle. Insertion is typically O(1) if the rear pointer is maintained.

_Insert operations for tree data-structures_

Non-linear data structures use different algorithms for insert operations.

_Binary tree operations: insert_

BST insert operations are often implemented using level-order traversal Level order traversal operates from left to right, top to bottom, sharing some similaries to a queue. The goal is usually to maintain compactness of the tree, not sorted order. A new number is then inserted at the same level as 3 with 19 as the parent node. The next node to get populated will be 103.

For example the numbers inserted in level order traversal: 1, 2, 54, 19, 103, 6, 15,3

               1
              / \
             2   54
            / \  / \
          19 103 6 15
        /
       3

  While there are many methods of insertion, level order is most common - this table encapsulates the differences

| Insertion Method     | Maintains Structure?     | Common for General Binary Trees? | Notes                            |
|----------------------|---------------------------|----------------------------------|---------------------------------|
| Level-order          | ✅ Yes (keeps it compact) | ✅ Yes                            | Most common method              |
| Manual/Custom        | ❌ No                     | ✅ Yes                            | No guarantees about structure   |
| Pre/In/Post-order    | ❌ No                     | ❌ Rare                           | Not practical for general trees |


_BST operations: insert_

As the BST has a structure that needs to maintain values on the left subtree being smaller than the right subtree, insertion follows a different pattern versus the general binary tree.

- Check value against root, if larger than root to left, if smaller to right, issue is that duplicates are allowed

Values inserted in this order will be sorted to BST requirements: 51, 12,64, 82, 16, 9, 97, 31, 43, 25, 20 

           51
         /    \
       12      64
      /  \        \
     9   16       82
           \         \
           31        97
          /  \
        25    43
       /
     20

_AVL operations: insert_

As the AVL has a structure that needs to maintain values of the BST and remain in balance for compact data stroage, a series of node rotations have to be performed for both insert and delete operations.

