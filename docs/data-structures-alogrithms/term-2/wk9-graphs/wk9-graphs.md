
_Dijkstra's Agorithm for shortest path_

[Edsgerr Dijkstra](https://en.wikipedia.org/wiki/Edsger_W._Dijkstra) best known for his s[hortest path algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm)

It is a greedy, brute force algorithm that goes from node to node calculating the shortest path. It is a combination of a depth first and breadth first search.

1. Source (starting point) S is at zero
2. Vertices (predecessors and successors) 2 vertices A, B - set to infinity
3. Weight of vertices have to be positive - no negative values
4. Process of relaxation - reallocate values ( substitute values when values change and improve time/ distance deltas)

EXAMPLE 1:
If S to A is 1 and S to B is 3 values from infinity become the value of the vertex
If A to B is 1 then shortest path to B has to be updated

```markdown
S = 0
S, A = infinity
S, B = infinity
Relax node/ successor values
S, A = 1
S, B = 3
B, A = 1
Shortest path to B is 
S, A, B  = 2
```

EXAMPLE 2:
It is a process of going through the vertices and the succesors calculating the weight and the distance
If the weight of S to A = 3
And B to A = 2 the shortest path to B will be different

```markdown
S = 0
S, A = infinity
S, B = infinity
Relax node/ successor values
S, A = 1 + 3
S, B = 3 
B, A = 1 + 2
S, A, B now is 7
Shortest path to B is S to B which is 3
```

The triangle of inequality in the theorem relates to the delta values of the paths. The delta value in the first example is 2 versus 3 in the second example. The inequality is about the fact that the delta in the first example takes you through 2 vertices of a triangle rather than 1.

Coding this - Binary min heap and Fibonnaci heap (amortised data structure to extract min)

- Which abstract data structure is best?
- We require inserting values into a priority queue
- To extract minimum value
- Delete a vertex one
- Decrease or update keys

DAGs - Directed acyclic graph - and shortest path
Bellman Ford ?

Important to choose the starting point or source - the predecessor nodes are all set at infinity
Topological sorting of the path - each node is touched once in constant time

1. Can have negative edge values but no negative cycles
2. The process for finding the shortest path the same
3. You check all sucessor nodes which start out as infinity
4. Add the weights of the edges and the distance of the paths
5. If the weights of the edges are negative subtract
6. The go in order relax the edges and find your shortest path


[Source:](https://www.youtube.com/watch?v=2E7MmKv0Y24&t=552s&ab_channel=MITOpenCourseWare)