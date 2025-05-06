---
layout: default
title: Insert and delete algorithms
nav_order: 13
parent: DSA - data structures and algorithms
last_updated: May 2025
---


# Insert and delete algorithms

In any data set, data will need to be updated. This involves both insert and delete operations. Linear data structures have different algorithms and operations to insert data with different asymptotic time efficiencies.

### Insert operations for linear data structures

_Arrays_
Insertion at the beginning of an array requires shifting all existing elements to the right, which results in O(n) time complexity. In many languages (like JavaScript), unshift() is used to insert at the beginning, while push() adds to the end of the array, which is generally O(1) (amortized).

_Linked Lists_
Insertion can occur at any position in a linked list (beginning, middle, or end). To insert in the middle, you must traverse to the desired location, then update the next (and prev, in a doubly linked list) pointers of adjacent nodes. This operation is efficient at the head (O(1)) but O(n) in the middle or end due to traversal.

_Stacks_
A stack can be implemented using arrays or linked lists. Stacks can be implemented using non-linear data structures, though it's less common than arrays or linked lists. This is because non-linear structures do not have the same structures that facilitate the operation of a stack's LIFO properties and the simultaneous management of their own tree or graph structure requirements.

Insertion happens only at the top of the stack using push(). This follows the Last-In, First-Out (LIFO) principle. Regardless of implementation, insertion is typically O(1).

_Queues_
A queue is a linear data structure that follows the First-In, First-Out (FIFO) principle. Elements are enqueued (added) at the rear and dequeued (removed) from the front. Unlike stacks, queues can use both linear and non-linear data-structures.

Array-Based Queues - If using a basic array, enqueuing at the end is O(1) if there's space.If the array is not circular, dequeuing from the front requires shifting elements → O(n) time.Circular arrays avoid shifting by wrapping around — both enqueue and dequeue operations are O(1).

Linked List-Based Queues:Enqueue at tail and dequeue at head are both O(1), assuming front and rear pointers are maintained.
No need to shift elements, and memory is dynamic.

Heap-Based Queues (Priority Queues):Implemented using binary heaps (MinHeap/MaxHeap).Not true FIFO — instead, items are dequeued based on priority. Both enqueue (insert) and dequeue (remove-min or remove-max) are O(log n) due to heap property maintenance.

### Tree insert operations

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


_Insert operations for linear data-structures_

## What algorithms are used for delete operations for different data structures?

Lists, arrays, and stacks have relatively rigid structures with well-defined and predictable operations. Their operations—such as insertion, deletion, or traversal—follow fixed rules, often with consistent time complexities (e.g., O(1) or O(n)), depending on implementation.

Queues are more flexible in application. They can be implemented using arrays, linked lists, or even non-linear structures like heaps (in the case of priority queues). The specific operations—enqueue and dequeue—may vary in time complexity based on the underlying data structure (e.g., O(1) in a linked list vs. O(log n) in a heap).

Trees, being hierarchical and non-linear, require more complex maintenance during operations like deletion or insertion. For example, binary search trees (BSTs), AVL trees, or heaps all have specific algorithms to maintain their structure. These operations often involve rotations, heapify, or traversal, with time complexities typically ranging from O(log n) to O(n), depending on tree type and balance."

### Delete operations for linear data structures

_Arrays_
Deletion in arrays involves identifying the index of the element to be removed. Once located, all elements to the right of the deleted element are shifted left to fill the gap. This operation has a time complexity of O(n) in the worst case due to the shift. Only deletion at the end of the array (like using pop() in JavaScript) is O(1).

_Linked Lists_
Deletion, like insertion, can occur at the beginning (O(1)), or at any arbitrary position (O(n) due to traversal). Once the node is located, adjusting pointers (next and prev) makes the actual deletion O(1). In doubly linked lists, backward traversal is also possible, but traversal still dominates complexity.

_Stacks_
Stacks as we have seen are more rigid structures that allow deletion only at the top, using pop(). This follows the Last-In, First-Out (LIFO) model. Whether implemented via array or linked list, deletion is typically O(1). Deletion cannot occur in the middle.

_Queues_
Deletion with queues depends on the data structure.

- Array-Based Queues: _Basic (Non-Circular) Array_ Dequeue Time Complexity: O(n) When an element is removed from the front, all subsequent elements must be shifted left to maintain proper order, increasing time complexity. Not space-efficient as it creates gaps and shifting overhead. _Circular Array_ Dequeue Time Complexity: O(1). Uses modulo indexing to wrap around the array, eliminating the need for shifting. Maintains front and rear pointers to manage the queue efficiently.

- Linked List-Based Queues Dequeue Time Complexity: O(1).The head node is removed directly, and the front pointer is updated to the next node.No shifting is needed, and memory is dynamically allocated.Works efficiently for large or variable-sized data streams.

- Heap-Based Queues (Priority Queues) Dequeue Time Complexity: O(log n).Items are removed based on priority, not order of insertion. Implemented as a MinHeap or MaxHeap, the root node (highest or lowest priority) is removed. The heap must then be restructured (heapified) to maintain the heap property.

### Tree delete operations

Delete operations are more articulated with trees, each tree has its own rules for deletion to maintain the tree structure.

_Binary tree operations: level-order delete_
Delete: Lets look at deleting 54 from the tree - we now perform a _level-order traversal_ traversal, and replace the deleted node with the value from the last visited node, which is 3. Like a linked list, now 3 and its edge are deleted.

Simlarly if wanted to delete 15 then 3 would replace 15 and the edge of 3 and the value 3 would be deleted.  This method helps preserve the structure of a complete binary tree — keeping it balanced and filled left-to-right.
  
               1
              / \
             2   3
            / \  / \
          19 103 6 15

   Lets look at a structure with both right and left children

             1
            / \
          2   54
          / \  / \
          19 103 6 15
         / \
       3   18

  Using the same principle, the last visited would be 18 so if we wanted to delete 54 we would replace it with 18

            1
           / \
          2   18
         / \  / \
        19 103 6 15
        /
      3

The node is not removed directly because it could leave a gap in the structure, break the completeness of the tree and lead to undefined behavior in traversal and storage.

In practice, level-order deletion is the standard and most effective way to delete nodes in a general binary tree as there is no sorting rules like BSTs, or balancing rules as in AVLs.

_BST operations: delete 4 cases_

  - _Case 1: Leaf node deletion_ remove the pointer and delete the node - 97 delete

             51
           /    \
          12     64
         / \      \
        9   16      82
        \  
         31
         / \
        25 43
        /
        20

  - _Case 2: Delete one child node_ - replace the parent node deleted with the child node - delete 25

            51
          /    \
         12     64
         / \      \
       9   16      82
        \  
         31
         / \
        20 43
  
  - _Case 3A: Delete node with 2 children_ - replace with inorder successor delete 31

              51
            /    \
         12      64
          /  \       \
         9   16       82
         \
         43
        /
      20

- _Case 3B: Delete node with 2 children_ - replace with inorder predecessor delete 31

             51
           /    \
         12      64
         /  \       \
        9   16       82
         \
         20
            \
            43

<!-- _AVL operations: insert and delete rotations_

As the AVL has a structure that needs to maintain values of the BST and remain in balance for compact data stroage, a series of node rotations have to be performed for both insert and delete operations. -->

