__Trees__

In linear data structures like arrays and linked lists, efficiency is compromised - especially if you want to insert or delete elements in the middle or end of the structure. These operations typically require O(n) time due to the need to traverse or shift elements. If you insert or delete items at the beginning, then constant time O(1) is the best option possible, the worst option is not-found which will require iterations through all items. Search in linear structures can be O(log n) as the linear list can be divided into 2 sets with each set performing a binary-search. What linear structures do not offer are different orders of traversal of the data as a tree does.

Tree-based structures, particularly binary trees, offer dynamic way to manage data which can offer greater time efficiencies but may not offer the same space efficiencies as linear data structures. Efficiency, on average is O(log n) if the tree is balanced. This efficiency arises from the hierarchical organization of data.

However, in unbalanced binary trees, performance can degrade to O(n), similar to linked lists, because every node might need to be visited during an operation. Maintaining balance in the tree is essential for optimal performance, which is why balanced tree structures, like the AVL tree are more efficient. Balanced binary trees, such as AVL trees or Red-Black trees, ensure O(log n) performance for search, insertion, and deletion, even in the worst case.

The efficiency of data structures also depends on whether the data is sorted and how it is organized.

__Tree traversal__

Tree traversal refers to the process of visiting all nodes in a tree in a specific order. The three main types of traversal in a binary tree are:

- Depth-First Traversal - follows a path as deep as possible before backtracking
- In-order: Left → Root → Right - In-order traversal is about visiting nodes in the left subtree first as deep as possible (the left most leaf node). Then the recursive backtracking visiting the node itself, and then the visiting the right subtree.
- Pre-order: Root → Left → Right
- Post-order: Left → Right → Root (anticlockwise starting at left child)
- Breadth-First Traversal (also called Level Order): Nodes are visited level by level, from top to bottom.

In brute-force approaches, such as exhaustive search algorithms, all nodes in the tree may be visited regardless of structure.

__Binary Tree__

A binary tree is a hierarchical data structure, where every node in the tree is further divided into a maximum of 2 nodes, or children, referred to as the left child and right child. Valid trees may also have just one node, or one child.

The root is set at the null pointer, representing the start of the data set. The root has no parents or predecessor nodes and only has sucessors, or child nodes.

As the parent of all the nodes in the tree, the root branches out into subtrees. Every every node in the subtrees has a left=pointer and a right-pointer that connects to the left and right nodes (edges and vertices may also be used) respectively. If the left or right child have null pointers, that marks the end of the subtree at the leaf node.

A leaf in a subtree counts all the previous nodes as ancestors - parents, grand-parents and great-grand-parents. The root of a subtree has descendent nodes.

The depth of a tree refers to the number of its ancestors and the height is the number of ancestors to the root of the tree. Depth is measured from root downwards, while height is measured from leaf upwards. The leaf node being zero sets the next level up (traversing up the edge of the tree nodes) as 1.

Calculating the height of tree 

Minus 1 is sometimes used to indicate that a node or value was not found, but this is a convention, not a formal property of trees.

Nodes in a binary tree are connected via these pointers. Unlike linked lists, which are strictly linear, binary trees form a branching structure, allowing for more efficient search and organization.

While both linked lists and trees use nodes and pointers, the key difference is in structure:

Linked lists are linear, with each node pointing to a single next (and optionally previous) node. Linked lists have no subtrees and the only way to build a linked list is linear - even if the list is bi-directional.

Binary trees are hierarchical and can grow in multiple directions via left and right children, forming subtrees. Visiting of nodes is non-linear and is known as tree-traversal.

With trees traversal can be breadth first or depth first or a combination of breadth and depth in a brute force alogrithm, where every node in tree is visited.

_Binary tree operations: insert_
This insertion is often implemented using level-order traversal Level order traversal operates from left to right, top to bottom, sharing some similaries to a queue. The goal is usually to maintain compactness of the tree, not sorted order. A new number is then inserted at the same level as 3 with 19 as the parent node. The next node to get populated will be 103.

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

_Binary tree operations: delete_
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

_Binary tree operations: search_
Efficiency of all searches are O(n) since each node is visited once in the worst case for all types of traversal (level-order, in-order, pre-order, post-order).

__Breadth-first level-order search__

        1
       / \
      2   18
     / \  / \
   19 103 6 15
   /
  3
To search for a value in a general binary tree, the operation is typically a linear level-order search, which is similar to the search performed to a linked list.

In our example,  the numbers inserted in level order traversal: 1, 2, 54, 19, 103, 6, 15,3
Looking for 103, a linear level-order search makes the efficiency o(n) as every node has to be visited.
__Depth-first in-order search(Left → Root → Right)__

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
       /    \
      25     2
     / \     / \
   82  10    7  12
   / \      /\   /\
  35  12    4 5  6 2
  /
  5

Output: 5, 35, 82, 12, 25, 10, 18, 4, 7, 5, 2, 6, 12, 2
__Depth-first pre-order search (Root → Left → Right)__

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
      25     2
     / \     / \
   82  10    7  12
   / \      /\   /\
  35  12    4 5  6 2
  /
  5
  
  Output = 18, 25, 82, 35, 5, 12, 10, 2, 7, 4, 5, 12, 6, 2
  __Depth-first post-order search (Left → Right → Root)__

  - Post order depriotises root printing - the root is printed last
  - At each subtree print the left, right leaves then the root
  - The tree root is printed last after traversing the right sub tree
  = Efficiency O (n) as every node visited

         18
       /    \
      25     2
     / \     / \
   82  10    7  12
   / \      /\   /\
  35  12    4 5  6 2
  /
  5

Output
5,35 12, 82, 10, 25, 4, 5, 7,6, 2, 12, 2, 18
