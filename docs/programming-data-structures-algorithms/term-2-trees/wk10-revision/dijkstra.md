Source node A

A = 0
B, C, D, E = infinity
A,B = 4
A,C = 9
B,C = 5
A,B,C = 4 + 5 = 9
A,C,B = 9 + 5 = 14
A,B,D = 4 + 9 = 13
A,B,C,D = 9 + 7 = 13
A,B,D, E = 13 + 2 = 15
A,B,C,D, E = 13 + 2 = 15

2 paths to E are equi-distant at 15

Dijkstra Practice #1 (A as source)

     4       5       2
 A ----- B ----- D ----- E
 |       \      /        |
 |         \ 1 /         |
 2           C ---------- 
                \  10
Edges:

A-B: 4

A-C: 2

B-C: 1

B-D: 5

C-D: 8

C-E: 10

D-E: 2

✅ Dijkstra Practice #2 (S as source)

    7       3       4
S ----- A ----- B ----- D
 \      \           /
  \ 2    \ 4       /
   \      \       /
     ------> C --
              \1
               |
               E
Edges:

S-A: 7

S-B: 2

A-B: 3

A-C: 4

B-D: 6

C-D: 1

D-E: 5

✅ Dijkstra Practice #3 (X as source)

X ----- Y ----- Z ----- W
 \     /         \     /
  \10 /3           \2 /6
Edges:

X-Y: 1

Y-Z: 3

X-Z: 10

Z-W: 2

Y-W: 6

✅ Dijkstra Practice #4 (P as source)

P ----- Q ----- R ----- S
 \           \       /
  \10         \6    /
               ----
Edges:

P-Q: 2

Q-R: 2

R-S: 2

P-S: 10

Q-S: 6

✅ Dijkstra Practice #5 (A as source)

A ----- B ----- E ----- C
 \     / \     /
  \ 1 /   \2  /5
   \ /     \ /
    D ------ 
       \1
        \
         C
Edges:

A-B: 6

A-D: 1

B-D: 2

B-E: 2

D-E: 1

D-C: 1

E-C: 5
