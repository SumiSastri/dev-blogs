

/*
java implement BFS for the following undirected graph:

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

route:
0 → 1 → 2 → 3 → 4 → 5

 */
import java.util.*;

public class BFS_Graph {
    private int V; // Number of vertices
    private Map<Integer, List<Integer>> adjList;

    public BFS_Graph(int V) {
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

    public void bfs(int start) {
        Queue<Integer> queue = new LinkedList<>();
        Set<Integer> visited = new HashSet<>();

        queue.add(start);
        visited.add(start);

        System.out.print("BFS Traversal: ");
        while (!queue.isEmpty()) {
            int node = queue.poll();
            System.out.print(node + " ");

            for (int neighbor : adjList.get(node)) {
                if (!visited.contains(neighbor)) {
                    visited.add(neighbor);
                    queue.add(neighbor);
                }
            }
        }
        System.out.println();
    }

    public static void main(String[] args) {
        BFS_Graph graph = new BFS_Graph(6);
        graph.addEdge(0, 1);
        graph.addEdge(0, 2);
        graph.addEdge(1, 3);
        graph.addEdge(1, 4);
        graph.addEdge(2, 5);

        graph.bfs(0); // Start BFS from node 0
    }
}
