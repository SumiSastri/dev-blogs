AVL TREE

The number 28 has just been inserted into the binary search tree in Figure 3.

    25
  /    \
 10    35
 \     /
  20  33
     /
    28
Figure 3: A binary search tree
(a) Why is the binary tree in Figure 3 not a valid AV L tree? [4 marks]
(b) Re-balance the tree in Figure 3 to produce an AV L tree. Draw the newly
balanced AVL tree and state which rotation(s) were used on which nodes
to re-balance it. [4 marks]
(c) Assume that the number 12 has been inserted in to your AV L tree from
part (b).
Re-balance this tree to produce an AV L tree. Draw the newly balanced AV L tree and state which rotation(s) were used on which nodes to re-balance it. [10 marks]


An AVL Tree balance factor should be 0, 1 or -1 the balance factor for this tree is -2 on the right subtree and therefore needs to be rebalanced to the left

      35
  / \    /   \
 10  25  28  33
 \
  20 

  The balance is now restored to -1

        35

  / \    /   \
 10  12  28  33
     / \ 
     20 25

 A series of swaps result in this new structure - the tree is balanced at -1



 AVL Tree Practice Questions
1.
(a) Explain the four types of AVL tree rotations. [4 marks]
(b) Insert the following values into an initially empty AVL tree:
20, 10, 30, 5, 15, 25, 35, 3
Draw the tree after all insertions and list the rotations used. [6 marks]
(c) Insert 2 and rebalance the tree. Show the new AVL structure and rotations. [8 marks]

2.
(a) What is a balance factor in an AVL tree, and how is it calculated? [2 marks]
(b) Construct an AVL tree with these values:
50, 40, 60, 45, 70, 42
Show all intermediate steps and rebalancing. [8 marks]
(c) Delete 60 from the tree and show the final AVL tree. [8 marks]

3.
(a) Why are AVL trees considered more efficient than standard binary search trees? [2 marks]
(b) Insert into AVL:
15, 10, 20, 5, 12, 18, 25, 30
Illustrate all steps and any rebalancing. [8 marks]
(c) Delete 10 and rebalance the tree. [8 marks]

4.
(a) What happens if the AVL tree becomes unbalanced after a deletion? [2 marks]
(b) Insert:
80, 60, 100, 50, 70, 90, 110, 65
Draw AVL tree after insertion. [8 marks]
(c) Delete 100 and rebalance. [8 marks]

5.
(a) Describe how a right-left (RL) rotation works in an AVL tree. [4 marks]
(b) Insert:
25, 20, 30, 27, 35, 26
Draw the AVL tree after each step. Show all rebalancing. [8 marks]
(c) Delete 30 and rebalance. [6 marks]

6.
(a) Explain the purpose of self-balancing in AVL trees. [2 marks]
(b) Insert values:
45, 20, 50, 10, 25, 60, 55
Show the AVL tree after each step. [8 marks]
(c) Insert 52 and show all necessary rotations. [8 marks]

7.
(a) How does AVL tree balancing differ from Red-Black tree balancing? [4 marks]
(b) Insert:
33, 13, 53, 9, 21, 61, 8
Draw the tree and apply any rotations. [6 marks]
(c) Insert 11 and show the final balanced AVL tree. [8 marks]

8.
(a) Define the time complexity of AVL tree operations. [2 marks]
(b) Insert:
70, 50, 90, 30, 60, 85, 95, 25, 65
Show tree and rebalancing. [8 marks]
(c) Delete 30 and show AVL tree after rebalancing. [8 marks]

9.
(a) What is a single rotation? Give an example using a set of 3 numbers. [4 marks]
(b) Insert:
100, 80, 120, 60, 90, 110, 130, 140
Draw AVL tree and list all rotations. [6 marks]
(c) Insert 150 and rebalance the AVL tree. [8 marks]

10.
(a) Describe the difference between a left-right (LR) rotation and a right-left (RL) rotation. [4 marks]
(b) Insert:
40, 20, 60, 10, 30, 25
Draw the AVL tree after all insertions. [6 marks]
(c) Delete 20 and rebalance the tree. [8 marks]