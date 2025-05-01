
/*. Java Implementation of DFS

      (0)
     /   \
   (1)   (2)
   /  \     \
 (3)  (4)   (5)

Vertices (Nodes): {0, 1, 2, 3, 4, 5}

Edges:

0 → 1

0 → 2

1 → 3

1 → 4

2 → 5


Start from 0, explore deepest path first (0 → 1 → 3).

Backtrack to 1, explore 4.

Backtrack to 0, explore 2, then 5.
 */


import java.util.*;

public class DFS_Graph {
    private int V; // Number of vertices
    private Map<Integer, List<Integer>> adjList;

    public DFS_Graph(int V) {
        this.V = V;
        adjList = new HashMap<>();
        for (int i = 0; i < V; i++) {
            adjList.put(i, new ArrayList<>());
        }
    }

    public void addEdge(int src, int dest) {
        adjList.get(src).add(dest);
        adjList.get(dest).add(src); // Undirected Graph
    }

    public void dfs(int start, Set<Integer> visited) {
        visited.add(start);
        System.out.print(start + " ");

        for (int neighbor : adjList.get(start)) {
            if (!visited.contains(neighbor)) {
                dfs(neighbor, visited);
            }
        }
    }

    public void startDFS(int start) {
        Set<Integer> visited = new HashSet<>();
        System.out.print("DFS Traversal: ");
        dfs(start, visited);
        System.out.println();
    }

    public static void main(String[] args) {
        DFS_Graph  graph = new DFS_Graph(6);
        graph.addEdge(0, 1);
        graph.addEdge(0, 2);
        graph.addEdge(1, 3);
        graph.addEdge(1, 4);
        graph.addEdge(2, 5);

        graph.startDFS(0); // Start DFS from node 0
    }
}
/*result: 0 → 1 → 3 → 4 → 2 → 5


*/