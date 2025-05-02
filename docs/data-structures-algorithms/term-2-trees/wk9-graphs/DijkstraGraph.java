import java.util.*;

public class DijkstraGraph {
    private int V; // Number of vertices
    private Map<Integer, List<Node>> adjList;

    class Node {
        int vertex, weight;
        Node(int v, int w) { vertex = v; weight = w; }
    }

    public DijkstraGraph(int V) {
        this.V = V;
        adjList = new HashMap<>();
        for (int i = 0; i < V; i++) {
            adjList.put(i, new ArrayList<>());
        }
    }

    public void addEdge(int src, int dest, int weight) {
        adjList.get(src).add(new Node(dest, weight));
        adjList.get(dest).add(new Node(src, weight)); // Undirected Graph
    }

    public void dijkstra(int start) {
        PriorityQueue<Node> pq = new PriorityQueue<>(Comparator.comparingInt(n -> n.weight));
        int[] distances = new int[V];
        Arrays.fill(distances, Integer.MAX_VALUE);
        distances[start] = 0;
        pq.add(new Node(start, 0));

        while (!pq.isEmpty()) {
            Node current = pq.poll();
            int u = current.vertex;

            for (Node neighbor : adjList.get(u)) {
                int v = neighbor.vertex;
                int weight = neighbor.weight;
                int newDist = distances[u] + weight;

                if (newDist < distances[v]) {
                    distances[v] = newDist;
                    pq.add(new Node(v, newDist));
                }
            }
        }

        printShortestPaths(distances);
    }

    private void printShortestPaths(int[] distances) {
        System.out.println("Shortest distances from source:");
        for (int i = 0; i < distances.length; i++) {
            System.out.println("Node " + i + " → " + distances[i]);
        }
    }

    public static void main(String[] args) {
        DijkstraGraph graph = new DijkstraGraph(5);
        graph.addEdge(0, 1, 4);
        graph.addEdge(0, 2, 1);
        graph.addEdge(1, 2, 3);
        graph.addEdge(1, 3, 2);
        graph.addEdge(2, 4, 5);
        graph.addEdge(3, 4, 6);

        graph.dijkstra(0); // Start from node A (0)
    }
}
/*result:
Shortest distances from source:
Node 0 → 0
Node 1 → 4
Node 2 → 1
Node 3 → 6
Node 4 → 6

Shortest Paths Found
A → A = 0

A → B = 4 (via direct path A → B)

A → C = 1 (direct A → C is shorter)

A → D = 6 (via A → B → D)

A → E = 6 (via A → C → E)

Time Complexity of Dijkstra’s Algorithm
Implementation	Time Complexity
Using Adjacency Matrix + Priority Queue
𝑂(𝑉*V)
O(V*V)
Using Adjacency List + Min Heap (PriorityQueue)
𝑂((𝑉+𝐸)log(𝑉)
O((V+E)logV) (Efficient for large graphs)
 */