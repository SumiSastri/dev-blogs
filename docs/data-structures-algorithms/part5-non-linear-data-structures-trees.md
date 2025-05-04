---
layout: default
title: Non-linear data structures - trees
nav_order: 13
parent: DSA - data structures and algorithms
last_updated: May 2025
---

# Non-linear data structures - trees

Trees are a fundamental non-linear data structure used extensively in computer science to represent hierarchical data. Unlike linear structures such as arrays or linked lists where data is organised in a sequence, trees organise data in a branching structure. This enables a more efficient representation and access pattern for many computational tasks.

Linear structures like arrays and linked lists suffer from performance limitations when it comes to insertion and deletion in the middle of the structure. In arrays, inserting or deleting elements requires shifting elements, costing O(n) time. Linked lists improve this with O(1) insertion or deletion at the head, but they still require traversal (O(n)) to locate arbitrary positions.

Furthermore, linear structures lack the flexibility of multiple traversal orders. Binary trees, however, offer multiple ways to traverse and interact with data. This, combined with hierarchical organization, often provides better time efficiency for common operations such as search, insertion, and deletion — especially when the tree is balanced.

_Tree traversal_

Tree traversal is the process of visiting each node in the tree in a specific order. Common traversal strategies include:

-In-order (L → R): Left subtree → Root → Right subtree
-Pre-order: Root → Left → Right
-Post-order: Left → Right → Root
-Level-order (Breadth-First): Visit nodes level-by-level from the root down

Traversal is critical for tasks like printing the tree, evaluating expressions, and converting data structures. The time efficiency of operations such as search, insertion, deletion, and sorting can vary significantly depending on the specific type of tree and its structure. For instance, binary trees provide hierarchical organization but may become inefficient if unbalanced. AVL trees maintain balance through rotations, ensuring consistent logarithmic performance. Min-heaps, while also binary trees, are optimized for retrieving the minimum element efficiently and combine hierarchical structure with some benefits of array-based linear storage.

## Binary Trees

A binary tree is a type of hierarchical data structure where each node has at most two children — referred to as the left child and the right child. This branching property allows binary trees to represent a wide variety of data efficiently.

_Core terminology_
- Root: The topmost node in the tree. It has no parent
- Parent/Child: A node connected to another node one level down
- Leaf: A node with no children
- Subtree: A tree formed by any node and its descendants
- Depth: The length of the path from the root to a given node
- Height: The length of the longest path from a node to a leaf

Each node in a binary tree has:
- A data element
- A pointer to the left child (or null)
- A pointer to the right child (or null)

This allows the tree to grow non-linearly, branching in both directions. Traversal methods exploit this branching nature.

_Efficiency considerations_

A balanced binary tree has average-case time complexities:

Search: O(log n)
Insert/Delete: O(log n)

However, if the tree becomes unbalanced — resembling a linked list — the performance can degrade to O(n). Therefore, maintaining balance is critical, which leads to specialized structures like the Adelson-Velsky and Landis (AVL) Tree and Red-Black trees.

## Binary Search Trees (BST)
A Binary Search Tree (BST) is a binary tree with an ordering constraint that facilitates fast lookup. Each node contains a key (used for comparisons) and optionally a value. Unlike general binary trees, BSTs must maintain a sorted structure even after insertions and deletions.

Key Features of a BST:
- All nodes in the left subtree of a node contain values less than the node's value
- All nodes in the right subtree contain values greater than the node's value
- Both subtrees must also be valid BSTs
- In-order traversal of a BST yields a sorted sequence
- Easy access to min/max: follow the leftmost or rightmost path respectively.
- Efficiently locate predecessor/successor using left/right subtrees.

_Efficiency considerations_

BSTs provide efficient average-case performance for dynamic, ordered data:

- Search: O(log n)
- Insert/Delete: O(log n)

However, this assumes the BST remains balanced. Without self-balancing mechanisms, performance can degrade to O(n) in the worst case. BSTs are used for symbol tables (e.g., in compilers)/database indexing and ordered data representations (e.g., dictionaries)

_Binary Tree Example (arbitrary values, no ordering)_

Values: 51, 12, 64, 82, 16, 9, 97, 31, 43, 25, 20

   51
 /    \
12     64
/ \     / \
82 16  9  97
/         /\  
31       43 25
/
20

_Binary Search Tree Example (ordered, not compact)_

          51
       /     \
     12       64
    /  \         \
   9   16        82
         \          \
         31         97
        /  \
      25    43
     /
   20

In this BST, the values are organized to satisfy the BST property, allowing efficient operations and yielding a sorted output from in-order traversal.

## Adelson-Velsky and Landis (AVL) Tree

An AVL tree is a self-balancing BST that maintains its balance through rotations during insertions and deletions. The tree ensures that the height difference (balance factor) between the left and right subtrees of any node is at most one. This guarantees compactness of the tree and efficient data storage. Unlike a simple binary tree that can become unbalanced, the AVL tree maintains structural balance with each insertion and deletion.

This balance is maintained through rotations. For every node, the balance factor is calculated as the height of the left subtree minus the height of the right subtree. Valid balance factors are −1, 0, or +1. As soon as the balance factor exceeds these bounds (e.g., becomes −2 or +2), the tree rebalances using one or more of the following rotations:

Rotations to Rebalance
- Right Rotation (RR): Used when a node is inserted into the left subtree of the left child.
- Left Rotation (LL): Used when a node is inserted into the right subtree of the right child.
- Left-Right Rotation (LR): Used when a node is inserted into the right subtree of the left child.
- Right-Left Rotation (RL): Used when a node is inserted into the left subtree of the right child.

These rotations restore the balance factor to an acceptable range and preserve the binary search tree ordering. AVL trees are particularly valuable in systems with frequent insertions and deletions, guaranteeing O(log n) time for search, insert, and delete operations — even in the worst case.

_AVL Tree Example (balanced, compact and ordered)_
Using the same values:
51, 12, 64, 82, 16, 9, 97, 31, 43, 25, 20, 41

After inserting these values into an AVL Tree (which rebalances after each insertion), the resulting structure maintains balance at every node:

             43
           /    \
         16      64
        /  \       \
      12   31      82
     /    /  \        \
    9   25   41       97
       /               
     20                
Each node satisfies: Balance factor ∈ {−1, 0, +1}

All subtrees maintain BST ordering properties

This tree guarantees consistently efficient O(log n) time for all major operations, making it ideal for applications requiring fast, frequent updates and lookups.

### Conclusion

Trees are essential in data structure design due to their hierarchical and recursive nature. Binary trees form the foundation for more advanced structures like Binary Search Trees and AVL Trees, which bring balance and efficiency to operations like search, insert, and delete.

While linear structures serve well for simple tasks, trees provide more control over traversal, better average-case complexity for search-related operations, and adaptable forms like AVL Trees that self-regulate balance.

Understanding the differences between general binary trees, binary search trees, and self-balancing variants like AVL trees is critical for designing efficient software systems that manage data in scalable ways.
