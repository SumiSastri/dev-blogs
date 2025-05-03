
__Trees__

Binary Search is efficient because it cuts the problem in half at each step, leading to a logarithmic time complexity O(log2(n))making it much faster than linear search for large datasets. The best case is O(1) (the search stops at the root).

Comparison chart.

| Structure      | Insert/Delete/Search Avg | Insert/Delete/Search Worst |
|----------------|--------------------------|-----------------------------|
| Array (unsorted) | O(1)/O(n)/O(n)           | O(1)/O(n)/O(n)              |
| Array (sorted)   | O(n)/O(n)/O(log n)       | O(n)/O(n)/O(log n)          |
| Linked List      | O(1)/O(1)/O(n)           | O(1)/O(1)/O(n)              |
| BST (balanced)   | O(log n)                 | O(log n)                    |
| BST (unbalanced) | O(n)                     | O(n)                        |



__Adelson-Velsky and Landis (AVL) Tree__

An AVL tree is a self-balancing binary search tree (BST) that maintains its balance through rotations during insertions and deletions. 

The tree ensures that the height difference (balance factor) between the left and right subtrees of any node is at most one. This balance is maintained through rotations when nodes are inserted or deleted, according to ​W3Schools. For every node, the balance factor is calculated as the height of the left subtree minus the height of the right subtree. Valid balance factors are -1, 0, or 1

To maintain balance after insertions or deletions, AVL trees perform either single or double rotations.

_Single Rotations_

Left Rotation (LL): Applied when a node is inserted into the right subtree of the right child, causing a right-heavy imbalance

Right Rotation (RR): Applied when a node is inserted into the left subtree of the left child, causing a left-heavy imbalance

_Double Rotations_

Left-Right Rotation (LR): Applied when a node is inserted into the right subtree of the left child. It involves a left rotation followed by a right rotation

Right-Left Rotation (RL): Applied when a node is inserted into the left subtree of the right child. It involves a right rotation followed by a left rotation.

These rotations restructure the tree to restore balance while preserving the BST property, according to ​Computer Science & Engineering.

__Why Is This Efficient?__

Search, Insertion, Deletion: O(log n) in the worst case, due to the tree's balanced nature.

Height Constraint: The height of an AVL tree with n nodes is at most 1.44 * log₂(n + 2), ensuring efficient operations

__Applications__

Dynamic Data Sets: AVL trees are suitable for applications where frequent insertions and deletions occur, and balanced search times are critical​ 

Databases and File Systems: Used in scenarios requiring ordered data retrieval and quick search capabilities.

__Summarised from these resources__

- [W3Schools: DSA AVL Trees](https://www.w3schools.com/dsa/dsa_data_avltrees.php)

- [AVL Tree Rotations Tutorial](https://www.cise.ufl.edu/~nemo/cop3530/AVL-Tree-Rotations.pdf)

- [Medium: AVL Trees – An In-Depth Look](https://www.cise.ufl.edu/~nemo/cop3530/AVL-Tree-Rotations.pdf)
