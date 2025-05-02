(a) What is the main property of a Binary Search Tree (BST)? [2 marks]
(b) Create a BST by inserting the following list of integers:
50, 30, 61, 48, 17, 72, 66, 91
one number at a time, in the order given, into an initially empty BST.
Illustrate the result of each insertion by drawing the BST after each inser-
tion, i.e. 8 BST diagrams in total. [6 marks]
(c) Using your ﬁnal BST from part (b) as the current state of the tree, then
assume the number 50 has been deleted from it using the BST deletion operation, thus resulting in a BST with all the original numbers except 50.
Draw the state of this resultant BST after 50 has been deleted from it. [2 marks]
[TOTAL 10]


- BST is a special type of binary tree where the the data is ordered and sorted
- The left node always has values smaller than the values of the right node
- Both the left and right subtrees must also be BSTs

       50
   /       \
 30        61
/  \         \
17 48         72
               /\
              66   91


Post deletion of the root 50
       61
   /       \
 30        72
/  \         \
17 48         66
               \
               91

Practice questions
1.
(a) Define a binary search tree and explain how it maintains order. [2]
(b) Insert the following integers into an empty BST:
45, 20, 55, 10, 30, 50, 60, 25
Draw the BST after each insertion. [6]
(c) Delete the node 45 and draw the resulting BST. [2]

2.
(a) What are the time complexities (best, average, worst case) for search operations in a BST? [2]
(b) Insert the integers:
70, 40, 90, 60, 20, 50, 65, 85
Draw the BST after each insertion. [6]
(c) Delete the node 60 and show the updated tree. [2]

3.
(a) How does a BST differ from a regular binary tree? [2]
(b) Insert into a BST:
100, 80, 120, 70, 90, 110, 130
Draw each step. [6]
(c) Delete the node 100 and draw the resulting BST. [2]

4.
(a) List two scenarios in which a BST becomes unbalanced and inefficient. [2]
(b) Insert:
15, 10, 20, 8, 12, 17, 25, 19
Draw each step. [6]
(c) Delete node 20 and update the tree. [2]

5.
(a) What is an in-order traversal and what does it return in a BST? [2]
(b) Insert:
35, 20, 50, 15, 25, 45, 55
Draw step by step. [6]
(c) Delete node 35 and show the final tree. [2]

6.
(a) Why is it important for BST deletion to maintain the BST property? [2]
(b) Insert:
60, 40, 80, 30, 50, 70, 90
Show steps. [6]
(c) Delete node 80 and draw the result. [2]

7.
(a) Explain the concept of in-order successor and in-order predecessor in BSTs. [2]
(b) Insert:
25, 15, 35, 10, 20, 30, 40
Draw all insertions. [6]
(c) Delete node 25 and update the tree. [2]

8.
(a) What does a post-order traversal of a BST return? [2]
(b) Insert:
90, 60, 120, 30, 75, 105, 150
Draw the BST after each insertion. [6]
(c) Delete node 90 and show the updated tree. [2]

9.
(a) Which traversal order(s) of a BST can be used to recreate it uniquely? [2]
(b) Insert:
10, 5, 15, 2, 7, 12, 17
Draw each step. [6]
(c) Delete node 10 and update the tree. [2]

10.
(a) What happens if duplicate values are inserted into a BST? How can they be handled? [2]
(b) Insert:
55, 35, 75, 25, 45, 65, 85
Draw step-by-step. [6]
(c) Delete node 55 and show the resulting tree. [2]