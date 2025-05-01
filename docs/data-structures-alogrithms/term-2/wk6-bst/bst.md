__Trees__

__Binary Search Tree (BST)__

A BST is a binary tree that uses a classic divide and conquer technique to search for values which are stored in key-value pairs. The value can be a large data set, but the key represents the node. In the BST each node has a left subtree that contains values less than the node and a right subtree contains values greater than the node

BST nodes can have a maximum of two children. A single child is also possible. It has to be an ordered tree and maintain a sorted order even when insert/delete operations are conducted to enable fast lookup, every subtree is a BST allowing for recursive searches.

BSTs are useful in search-intensive applications, when storing data in an ordered, hierarchicaly and dynamically changing manner.
Eg usecases: Database indexing/ Symbol tables in compilers

__BST operations__

- Search: O(log n) average time, O(n) worst case, check left and right node against the root
- Insert: Check value against root, if larger than root to left, if smaller to right, issue is that duplicates are allowed, if unique only then code must specify only unique entries possible
- Delete: Three cases:
  - Node has no child no need to check left or right, remove it as it is a leaf
  - Node has one child only one side of the tree exists as it is in order, replace it
  - Node has two children here a recursive check left and right against root, replace and maybe reorder

__Traversing the tree__

  - Inorder → Ascending order
  - Preorder / Postorder → Tree structure

__Efficiency__
When we say that Binary Search is O(log2(N)), we are describing its time complexity—how the number of operations it takes grows as the size of the input (N) increases.

__Logarithmic Growth__

- The base-2 logarithm, log2(N), measures how many times you can divide n by 2 before reaching 1.
- This happens because Binary Search repeatedly divides the search space in half.

__Example Calculation__
Suppose we have a sorted list of size n, and we apply Binary Search:

| N (Size of List) | log2(N) (Max Steps) |
|------------------|--------------------|
| 8               | 3                  |
| 16              | 4                  |
| 1024            | 10                 |

Even for a large n, the number of steps remains small.

__Why Is This Efficient?__

- Compared to Linear Search, which takes O(n) steps in the worst case (checking every element), Binary Search is much faster for large inputs.
- Example:
  - Searching in a list of 1 million elements:
    - Linear Search may take up to 1-mil steps (brute force)
    - Binary Search takes at most log2(1-mil) ≈ 20 steps (classic divide and conquer)

Binary Search is efficient because it cuts the problem in half at each step, leading to a logarithmic time complexity O(log2(n))making it much faster than linear search for large datasets. The best case is O(1) (the search stops at the root).

__Summarised in these resources__

- [UIUC CS225 – BST Notes](https://courses.grainger.illinois.edu/cs225/fa2019/notes/bst/)
- [W3Schools – Binary Search Trees](https://www.w3schools.com/dsa/dsa_data_binarysearchtrees.php)
- [GeeksforGeeks – Introduction to BST](https://www.geeksforgeeks.org/introduction-to-binary-search-tree/)
