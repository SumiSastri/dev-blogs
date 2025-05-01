__Trees__

In linear data structures like arrays and linked lists, efficiency is compromised - especially if you want to insert or delete elements in the middle or end of the structure. These operations typically require O(n) time due to the need to traverse or shift elements.

Tree-based structures, particularly binary trees, offer a more efficient. They offer a dynamic way to manage data. Efficiency, on average is O(log n) if the tree is balanced. This efficiency arises from the hierarchical organization of data.

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

Minus 1 is sometimes used to indicate that a node or value was not found, but this is a convention, not a formal property of trees.

Nodes in a binary tree are connected via these pointers. Unlike linked lists, which are strictly linear, binary trees form a branching structure, allowing for more efficient search and organization.

While both linked lists and trees use nodes and pointers, the key difference is in structure:

Linked lists are linear, with each node pointing to a single next (and optionally previous) node. Linked lists have no subtrees and the only way to build a linked list is linear - even if the list is bi-directional.

Binary trees are hierarchical and can grow in multiple directions via left and right children, forming subtrees. Visiting of nodes is non-linear and is known as tree-traversal.

With trees traversal can be breadth first or depth first or a combination of breadth and depth in a brute force alogrithm, where every node in tree is visited.

_Binary Tree operations: Insert_

This insertion is often implemented using level-order traversal Level order traversal operates from left to right, top to bottom, sharing some similaries to a queue. The goal is usually to maintain compactness of the tree, not sorted order. A new number is then inserted at the same level as 3 with 19 as the parent node. The next node to get populated will be 103.

For example the numbers inserted in level order traversal: 1, 2, 54, 19, 103, 6, 15,3

        1
       / \
      2   54
     / \  / \
   19 103 6 15
   /
  3

_Binary Tree operations: Delete_

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

_Binary Tree operations: Search_

__Breadth-first level-order search__

To search for a value in a general binary tree, the operation is typically a linear level-order search, which is similar to the search performed to a linked list.

In our example,  the numbers inserted in level order traversal: 1, 2, 54, 19, 103, 6, 15,3
Looking for 103, a linear level-order search makes the efficiency o(n) as every node has to be visited.

__Depth-first in-order search(Left → Root → Right)__

- Go down the left side of the tree first, all the way to the leftmost leaf - (3)
- Now move up to its parent node (19) you go right to the next node (103).
- After completing the left subtree visit root - (2)
- Then, you go to the root’s right subtree and apply the same method recursively
- First, go down to the left leaf (6) then go up to its parent node (18), then right (15)
- The root node (1) is not revisited once you move past it as it's only visited once

Traversal order and log efficiency of  O(n) — where n is the number of nodes in the tree
3-19-2-103-1-6-18-15

In-order traversal visits every node exactly once. At each node, it performs a constant amount of work (e.g., printing, comparing, etc.). Even though it goes deep into the tree (depth-first), no node is revisited, and there's no unnecessary repetition

