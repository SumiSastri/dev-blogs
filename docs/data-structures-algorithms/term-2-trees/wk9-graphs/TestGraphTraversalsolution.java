
import java.util.*;

interface IGraph {
    String name();
    int numberOfVertices();
    boolean addEdge(int srcVertex, int destVertex);
    boolean removeEdge(int srcVertex, int destVertex);
    boolean isAdjacent(int srcVertex, int destVertex);
    void print();
}

interface IGraphTraversal extends IGraph {
    // Perform a DFS traversal on the graph from vertex 0 & return the traversal path
    List<Integer> depthFirstSearch();

    // Perform a DFS traversal on the graph from vertex sv & return the traversal path
    List<Integer> depthFirstSearch(int sv);

    // Perform a BFS traversal on the graph from vertex 0 & return the traversal path
    List<Integer> breadthFirstSearch();

    // Perform a BFS traversal on the graph from vertex sv & return the traversal path
    List<Integer> breadthFirstSearch(int sv);

    // Print out a DFS or BFS traversal path
    void printPath(List<Integer> path);
}

abstract class Graph implements IGraph {
    private String graphName;
    private int cardVertices;
    private int[][] edges;

    protected int cardEdges = 0;  // updated when add or delete an edge

    public Graph(String graphName, int numberOfVertices) {
        this.graphName = graphName;
        this.cardVertices = numberOfVertices;
    }

    public Graph(String graphName, int numberOfVertices, int[][] edges) {
        this.graphName = graphName;
        this.cardVertices = numberOfVertices;
        this.edges = edges;
    }

    public String name() {
        return graphName;
    }

    public int numberOfVertices() {
        return cardVertices;
    }

    public void print() {
        System.out.println();
        System.out.printf("Graph: %s, Card(V) = %d, card(E) = %d%n", graphName, cardVertices, cardEdges);
        System.out.println("Edges:");

        for (int sourceVertex = 0; sourceVertex < cardVertices; sourceVertex++) {
            for (int destinationVertex = 0; destinationVertex < cardVertices; destinationVertex++) {
                if (isAdjacent(sourceVertex, destinationVertex)) {
                    System.out.println(sourceVertex + " --> " + destinationVertex);
                }
            }
        }

        System.out.println();
    }

    abstract public boolean addEdge(int sourceVertex, int destinationVertex);

    abstract public boolean removeEdge(int sourceVertex, int destinationVertex);

    abstract public boolean isAdjacent(int sourceVertex, int destinationVertex);

    abstract public void printRepresentation();
}

class GraphAMTraversal extends Graph implements IGraphTraversal {
    private int[][] adjacencyMatrix;

    public GraphAMTraversal(String graphName, int numberOfVertices, int[][] edges) {
        super(graphName, numberOfVertices, edges);
        adjacencyMatrix = new int[numberOfVertices][numberOfVertices];
        initializeAdjacencyMatrix(edges);
    }

    private void initializeAdjacencyMatrix(int[][] edges) {
        for (int i = 0; i < edges.length; i++) {
            int src = edges[i][0];
            int dest = edges[i][1];
            adjacencyMatrix[src][dest] = 1; // Assuming unweighted graph
        }
    }

    @Override
    public boolean addEdge(int sourceVertex, int destinationVertex) {
        if (sourceVertex >= 0 && sourceVertex < numberOfVertices() &&
                destinationVertex >= 0 && destinationVertex < numberOfVertices()) {
            adjacencyMatrix[sourceVertex][destinationVertex] = 1;
            cardEdges++;
            return true;
        }
        return false;
    }

    @Override
    public boolean removeEdge(int sourceVertex, int destinationVertex) {
        if (sourceVertex >= 0 && sourceVertex < numberOfVertices() &&
                destinationVertex >= 0 && destinationVertex < numberOfVertices()) {
            adjacencyMatrix[sourceVertex][destinationVertex] = 0;
            cardEdges--;
            return true;
        }
        return false;
    }

    @Override
    public boolean isAdjacent(int sourceVertex, int destinationVertex) {
        if (sourceVertex >= 0 && sourceVertex < numberOfVertices() &&
                destinationVertex >= 0 && destinationVertex < numberOfVertices()) {
            return adjacencyMatrix[sourceVertex][destinationVertex] == 1;
        }
        return false;
    }

    @Override
    public void printRepresentation() {
        System.out.println("Adjacency Matrix for Graph: " + name());
        System.out.println();

        System.out.print("  ");
        for (int dV = 0; dV < numberOfVertices(); dV++) {
            System.out.print("  " + dV);
        }
        System.out.println();
        System.out.println();

        for (int sV = 0; sV < numberOfVertices(); sV++) {
            System.out.print(sV + " ");

            for (int dV = 0; dV < numberOfVertices(); dV++) {
                System.out.print("  " + adjacencyMatrix[sV][dV]);
            }
            System.out.println();
            System.out.println();
        }
    }

    @Override
    public List<Integer> depthFirstSearch() {
        return depthFirstSearch(0);
    }

    @Override
    public List<Integer> depthFirstSearch(int sv) {
        List<Integer> path = new ArrayList<>();
        boolean[] visited = new boolean[numberOfVertices()];
        dfs(sv, visited, path);
        return path;
    }

    private void dfs(int vertex, boolean[] visited, List<Integer> path) {
        visited[vertex] = true;
        path.add(vertex);

        for (int i = 0; i < numberOfVertices(); i++) {
            if (adjacencyMatrix[vertex][i] == 1 && !visited[i]) {
                dfs(i, visited, path);
            }
        }
    }

    @Override
    public List<Integer> breadthFirstSearch() {
        return breadthFirstSearch(0);
    }

    @Override
    public List<Integer> breadthFirstSearch(int sv) {
        List<Integer> path = new ArrayList<>();
        boolean[] visited = new boolean[numberOfVertices()];
        Queue<Integer> queue = new LinkedList<>();

        visited[sv] = true;
        queue.add(sv);

        while (!queue.isEmpty()) {
            int vertex = queue.poll();
            path.add(vertex);

            for (int i = 0; i < numberOfVertices(); i++) {
                if (adjacencyMatrix[vertex][i] == 1 && !visited[i]) {
                    visited[i] = true;
                    queue.add(i);
                }
            }
        }

        return path;
    }

    @Override
    public void printPath(List<Integer> path) {
        System.out.println("Traversal Path:");
        for (int vertex : path) {
            System.out.print(vertex + " ");
        }
        System.out.println();
    }
}

public class TestGraphTraversalsolution {
    public static void main(String[] args) {
        // Week 9 Graph
        final String name = "Week 9 Graph";
        final int numberOfVertices = 8;

        int[][] edges = new int[][] { { 0, 2 }, { 2, 0 },
                { 0, 4 }, { 4, 0 },
                { 1, 2 }, { 2, 1 },
                { 3, 1 }, { 1, 3 },
                { 1, 5 }, { 5, 1 },
                { 2, 4 }, { 4, 2 },
                { 2, 5 }, { 5, 2 },
                { 2, 6 }, { 6, 2 },
                { 3, 5 }, { 5, 3 },
                { 5, 6 }, { 6, 5 },
                { 5, 7 }, { 7, 5 },
                { 6, 7 }, { 7, 6 }
        };

        // Start DFS/BFS search from vertex:
        int startingVertex = 0;

        // Create the graph using an "Adjacency Matrix" representation
        System.out.println();
        System.out.println("Created graph using an Adjacency Matrix");
        System.out.println();

        GraphAMTraversal graphAM = new GraphAMTraversal("W9G" + "-AM", numberOfVertices, edges);

        graphAM.print();

        System.out.println();
        System.out.println();
        graphAM.printRepresentation();

        // DFS on the AM graph to find a suitable path from 0
        System.out.println();
        System.out.println("DFS on the Adjacency Matrix Graph from: 0");
        System.out.println();

        startingVertex = 0;
        List<Integer> DFSpathAM_0 = graphAM.depthFirstSearch(startingVertex);

        System.out.println();
        System.out.println("Depth First Search of : " + graphAM.name() +
                " from vertex: " + startingVertex);

        graphAM.printPath(DFSpathAM_0);

        // BFS on the AM graph to find a suitable path from 0
        System.out.println();
        System.out.println("BFS on the Adjacency Matrix Graph from: 0");
        System.out.println();

        startingVertex = 0;
        List<Integer> BFSpathAM_0 = graphAM.breadthFirstSearch(startingVertex);

        System.out.println();
        System.out.println("Breadth First Search of : " + graphAM.name() +
                " from vertex: " + startingVertex);

        graphAM.printPath(BFSpathAM_0);
    }
}

/* Result:
Created graph using an Adjacency Matrix


Graph: W9G-AM, Card(V) = 8, card(E) = 0
Edges:
0 --> 2
0 --> 4
1 --> 2
1 --> 3
1 --> 5
2 --> 0
2 --> 1
2 --> 4
2 --> 5
2 --> 6
3 --> 1
3 --> 5
4 --> 0
4 --> 2
5 --> 1
5 --> 2
5 --> 3
5 --> 6
5 --> 7
6 --> 2
6 --> 5
6 --> 7
7 --> 5
7 --> 6



Adjacency Matrix for Graph: W9G-AM

    0  1  2  3  4  5  6  7

0   0  0  1  0  1  0  0  0

1   0  0  1  1  0  1  0  0

2   1  1  0  0  1  1  1  0

3   0  1  0  0  0  1  0  0

4   1  0  1  0  0  0  0  0

5   0  1  1  1  0  0  1  1

6   0  0  1  0  0  1  0  1

7   0  0  0  0  0  1  1  0


DFS on the Adjacency Matrix Graph from: 0


Depth First Search of : W9G-AM from vertex: 0
Traversal Path:
0 2 1 3 5 6 7 4

BFS on the Adjacency Matrix Graph from: 0


Breadth First Search of : W9G-AM from vertex: 0
Traversal Path:
0 2 4 1 5 6 3 7
 */