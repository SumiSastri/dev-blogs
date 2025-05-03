__Binary Search Tree (BST)__

A BST is a binary tree that uses a classic divide and conquer technique to search for values which are stored in key-value pairs. The value can be a large data set, but the key represents the node. Unlike a binary tree, it has to be an ordered tree and maintain this sorted order even when insert/delete operations are conducted to enable fast lookup, every subtree is a BST allowing for recursive searches. This ordering or sorting of the data in a BST allows for efficient search, insertion, and deletion.

BSTs are useful in search-intensive applications, when storing data in an ordered, hierarchicaly and dynamically changing manner. Eg usecases: Database indexing/ Symbol tables in compilers

Key features of a BST

- All nodes in its left subtree contain values less than the node’s value.
- All nodes in its right subtree contain values greater than the node’s value
- Both the left and right subtrees must also be BSTs
- If duplicates are allowed then specifications are required on how to handle them
- Easy to find min and max - depth search to the left leaf or right leaf
- Easy to find predecessor/successor values of a given node `x.r/ x.l` where `x` is the node

BST and Binary Tree comparison table

| Feature              | Binary Tree                        | Binary Search Tree (BST)               |
|----------------------|------------------------------------|----------------------------------------|
| Structure            | Node max 2 children/ 1 child OK    | Same as binary tree                    |
| Ordering             | No ordering rule                   | Left < values Root > values Right      |
| Usage                | General-purpose (e.g., parsing)    | Efficient searching and sorting        |
| Search Efficiency    | No guarantee (can be O(n))         | O(log n) on average (if balanced)      |
| Examples             | Expression trees, heaps            | Phone books, dictionaries, indexes     |

In-order traversal does not guarantee sorted output because the structure does not follow BST ordering rules
In-order traversal gives you the nodes in sorted order
This is a powerful property unique to BSTs

| Aspect              | Binary Tree          | Binary Search Tree (BST)        |
|---------------------|----------------------|----------------------------------|
| Traversal Methods   | Same                 | Same                             |
| In-order Output     | Arbitrary order      | Sorted (ascending)               |
| Use of Traversals   | Structural tasks     | Searching, sorting, balancing    |

__Visual representations__
Visually a binary tree - looks like this
Values: 51, 12,64, 82, 16, 9, 97, 31, 43, 25, 20 

   51
 /    \
12     64
/ \     / \
82 16  9  97
/         /\  
31       43 25
/
20

In a binary search tree ordering is important so the structure of the tree now looks like this
Easy to find min-max which are 9 and 97

          51
       /    \
      12     64
     / \      \
   9   16      82
        \        \
         31      97
         / \
        25 43
        /
        20
__BST operations - insert__

- Insert: Check value against root, if larger than root to left, if smaller to right, issue is that duplicates are allowed
- An example of insert in the tree above
- Tree traversals are the same across all tree data structures but the outcome and usecases are different.
__BST operations search__
- Search: O(log n) average time, O(n) worst case, check left and right node against the root
__BST operations delete__

- Delete: Four cases:
  - Case 1: Leaf node deletion remove the pointer and delete the node - 97 delete

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
  - Case 2: Delete one child node - replace the parent node deleted with the child node - delete 25

         51
       /    \
      12     64
     / \      \
   9   16      82
        \  
         31
         / \
        20 43
  
  - Case 3: Delete node with 2 children - replace with inorder successor delete 31

         51
       /    \
     12      64
    /  \       \
   9   16       82
         \
         43
        /
      20

- Case 4: Delete node with 2 children - replace with inorder predecessor delete 31

         51
       /    \
     12      64
    /  \       \
   9   16       82
         \
         20
            \
            43

__BST Operational efficiencies__

### BST Operational Efficiencies

| Operation | Best Case       | Average Case | Worst Case      | Height-Based | Notes                                                                 |
|-----------|-----------------|--------------|------------------|--------------|-----------------------------------------------------------------------|
| Search    | O(1)            | O(log n)     | O(n)             | O(h)         | Best case: key is at root. Worst case: unbalanced (skewed) tree.     |
| Insert    | O(1)            | O(log n)     | O(n)             | O(h)         | Requires traversal to insertion point. Skewed tree → O(n).           |
| Delete    | O(1) / O(log n) | O(log n)     | O(n)             | O(h)         | Deleting node with 2 children needs successor/predecessor lookup.    |


__Summarised in these resources__

- [UIUC CS225 – BST Notes](https://courses.grainger.illinois.edu/cs225/fa2019/notes/bst/)
- [W3Schools – Binary Search Trees](https://www.w3schools.com/dsa/dsa_data_binarysearchtrees.php)
- [GeeksforGeeks – Introduction to BST](https://www.geeksforgeeks.org/introduction-to-binary-search-tree/)
-[ Eric - MIT open courseware 2021](https://www.youtube.com/watch?v=76dhtgZt38A&ab_channel=MITOpenCourseWare)
