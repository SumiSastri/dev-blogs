BINARY TREE
 51
 /    \
12     64
/ \     / \
82 16  9  97
/         /\  
31       43 25
/
20

Calculate the height of the tree = 5 from root 51
Calculate the depth of the tree = 5 from leaf 20
What are the node values at level 2 =  82,16 (left subtree) 9,97 (right sub-tree)

Provide tree traversal output:
Level order: Linear/ Output = 51, 12,64, 82, 16, 9, 97, 31, 43, 25, 20 

In order: Depth first  (left, root, right - level by level root middle)
l= 20, 31, 82, 12, 16,
root=51,
r=9,64,43,97,25

Pre order: Depth first (Root, All left then r)
root= 51
l= 12, 82, 31, 20, 16
r= 64, 9, 97, 43, 25

Post order: Depth first Left-right-Root
Output
l = 20, 31, 82, 16, 12
r = 9,43, 25, 97, 64, 
root=51

Tree 2:
       10
      /  \
     5    15
    / \   / \
   3   7 12 18

Tree 3:
    8
   /
  6
 /
4
/
2
 \
  3

Tree 4:
1
 \
  2
   \
    4
     \
      7
       \
        9
Tree 5:
       20
      /  \
     8    30
    /    /  \
   5    25  40

Tree 6:
       100
      /   \
     50    150
    / \    / 
   25 75  125 

Tree 7:
         50
        /  \
      30    70
     /  \   /
   20   40 60
         \
         45
Tree 8:
       60
      /  \
    30    80
   /  \     \
 20   45     90
      /
     35

Tree 9:
        33
       /  \
     21    47
       \   / \
       24 40 52
          /
         38
Tree 10:
     9
    / \
   4   11
      /
     10

Tree 11:
         11
        /  \
       6    14
      / \     \
     4   7     17
    /           \
   2             19
  /
 1

