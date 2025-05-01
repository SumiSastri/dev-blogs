__Binary Search Tree (BST)__

A BST is a specialized form of a binary tree that follows a strict ordering rule, for any node in a subtree:

- All nodes in its left subtree contain values less than the node’s value.
- All nodes in its right subtree contain values greater than the node’s value.

This ordering allows for efficient search, insertion, and deletion in O(log n) time on average (when balanced).

       7
      / \
     3   9
    /     \
   1       10

A binary tree does not demand a pre-fixed order of its nodes. It is  general structure, used for various purposes like expression trees, heaps, traversal algorithms, etc. In pseudo code this is represented as:

Node = x
x.r (right node)
x.l (left node)

A traversal iterates through x, on the left  x.l until x.l === null

In a binary search tree ordering is important so the pseudo code also changes

       7
      / \
     3   9
    /     \
   1       5

Traveral checks whether the value is greater than the node then selects either x.r or x.l ignoring x.r or x.l if the value is one of the children of the node.

x.p is node traverses up to the parent - there is no left or right - only a single parent for the 2 children.

Operations of a BST

Insert must order the tree with all the left nodes smaller than the right nodes. Using the same example as a binary tree the numbers 1, 2, 54, 19, 103, 6, 15,3 would now be inserted not in hierarchical level order but in a sorted hierarchy where the left child is always populated with a smaller value than the right child. You make a choice at node with the value of 3 - if the number is greater than 3 it goes to the right, while a smaller number than 3 goes to the left.
        1
         \
          2
           \
            54
           /
         19
        /
      6
       \
       15
      /
     3

__Tabling the differences__

   | Feature              | Binary Tree                        | Binary Search Tree (BST)               |
|----------------------|------------------------------------|----------------------------------------|
| Structure            | Nodes have ≤ 2 children            | Same as binary tree                    |
| Ordering             | No ordering rule                   | Left < Root < Right                    |
| Usage                | General-purpose (e.g., parsing)    | Efficient searching and sorting        |
| Search Efficiency    | No guarantee (can be O(n))         | O(log n) on average (if balanced)      |
| Examples             | Expression trees, heaps            | Phone books, dictionaries, indexes     |

A BST is a binary tree that uses a classic divide and conquer technique to search for values which are stored in key-value pairs. The value can be a large data set, but the key represents the node. In the BST each node has a left subtree that contains values less than the node and a right subtree contains values greater than the node

BST nodes can have a maximum of two children. A single child is also possible. It has to be an ordered tree and maintain a sorted order even when insert/delete operations are conducted to enable fast lookup, every subtree is a BST allowing for recursive searches.

BSTs are useful in search-intensive applications, when storing data in an ordered, hierarchicaly and dynamically changing manner. Eg usecases: Database indexing/ Symbol tables in compilers

Tree traversals are the same but the outcome and usecases are different. In-order traversal does not guarantee sorted output because the structure does not follow BST ordering rules. In-order traversal gives you the nodes in sorted order.

This is a powerful property unique to BSTs.

| Aspect              | Binary Tree          | Binary Search Tree (BST)        |
|---------------------|----------------------|----------------------------------|
| Traversal Methods   | Same                 | Same                             |
| In-order Output     | Arbitrary order      | Sorted (ascending)               |
| Use of Traversals   | Structural tasks     | Searching, sorting, balancing    |

__BST operations__

- Search: O(log n) average time, O(n) worst case, check left and right node against the root
- Insert: Check value against root, if larger than root to left, if smaller to right, issue is that duplicates are allowed, if unique only then code must specify only unique entries possible
- Delete: Three cases:
  - Node has no child no need to check left or right, remove it as it is a leaf
  - Node has one child only one side of the tree exists as it is in order, replace it
  - Node has two children here a recursive check left and right against root, replace and maybe reorder

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

Comparison chart.

| Structure      | Insert/Delete/Search Avg | Insert/Delete/Search Worst |
|----------------|--------------------------|-----------------------------|
| Array (unsorted) | O(1)/O(n)/O(n)           | O(1)/O(n)/O(n)              |
| Array (sorted)   | O(n)/O(n)/O(log n)       | O(n)/O(n)/O(log n)          |
| Linked List      | O(1)/O(1)/O(n)           | O(1)/O(1)/O(n)              |
| BST (balanced)   | O(log n)                 | O(log n)                    |
| BST (unbalanced) | O(n)                     | O(n)                        |

__Summarised in these resources__

- [UIUC CS225 – BST Notes](https://courses.grainger.illinois.edu/cs225/fa2019/notes/bst/)
- [W3Schools – Binary Search Trees](https://www.w3schools.com/dsa/dsa_data_binarysearchtrees.php)
- [GeeksforGeeks – Introduction to BST](https://www.geeksforgeeks.org/introduction-to-binary-search-tree/)
-[ Eric - MIT open courseware 2021](https://www.youtube.com/watch?v=76dhtgZt38A&ab_channel=MITOpenCourseWare)
