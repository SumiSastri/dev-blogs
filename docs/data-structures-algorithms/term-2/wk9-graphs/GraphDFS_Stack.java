
/*Java Implementation of DFS (Iterative Approach using Stack)
Instead of recursion, we can use a stack (LIFO) to manually perform DFS:

      (0)
     /   \
   (1)   (2)
   /  \     \
 (3)  (4)   (5)
 */
import java.util.*;

public class GraphDFS_Stack {
    private int V; // Number of vertices
    private Map<Integer, List<Integer>> adjList;

    public GraphDFS_Stack(int V) {
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

    public void dfsIterative(int start) {
        Stack<Integer> stack = new Stack<>();
        Set<Integer> visited = new HashSet<>();

        stack.push(start);

        System.out.print("DFS Iterative Traversal: ");
        while (!stack.isEmpty()) {
            int node = stack.pop();
            if (!visited.contains(node)) {
                visited.add(node);
                System.out.print(node + " ");

                // Push neighbors in reverse order (to maintain recursive DFS order)
                List<Integer> neighbors = adjList.get(node);
                Collections.reverse(neighbors);
                for (int neighbor : neighbors) {
                    if (!visited.contains(neighbor)) {
                        stack.push(neighbor);
                    }
                }
            }
        }
        System.out.println();
    }

    public static void main(String[] args) {
        GraphDFS_Stack graph = new GraphDFS_Stack(6);
        graph.addEdge(0, 1);
        graph.addEdge(0, 2);
        graph.addEdge(1, 3);
        graph.addEdge(1, 4);
        graph.addEdge(2, 5);

        graph.dfsIterative(0); // Start DFS from node 0
    }
}
