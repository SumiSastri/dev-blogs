import java.util.*;

interface IGraph {
    String name();
    int numberOfVertices();
    boolean addEdge(int srcVertex, int destVertex);
    boolean removeEdge(int srcVertex, int destVertex);
    boolean isAdjacent(int srcVertex, int destVertex);
    void printRepresentation();
    void print();
}

abstract class Graph implements IGraph {
    private String graphName = "Unknown";
    private int cardVertices = 0;
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

    /** Graph interface methods **/

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

    // Abstract Methods - defined for either an Adjacency Matrix or List representation

    // add edge "(sV, dV)" to the graph
    abstract public boolean addEdge(int sourceVertex, int destinationVertex);

    // remove edge "(sV, dV)" from the graph
    abstract public boolean removeEdge(int sourceVertex, int destinationVertex);

    // check if 2 vertices sV  dV are adjacent, i.e. neighbours
    abstract public boolean isAdjacent(int sourceVertex, int destinationVertex);

    // Print the internal representation of the graph, i.e. adjacent matrix or lists
    abstract public void printRepresentation();
}

class UndirectedGraphAdjMatrix extends Graph {
    private static final int NOT_ADJACENT = 0; // -1;
    private static final int DEFAULT_WEIGHT = 1;

    private int[][] AM;

    public UndirectedGraphAdjMatrix(String graphName, int numberOfVertices) {
        super(graphName, numberOfVertices);
        AM = new int[numberOfVertices][numberOfVertices];
    }

    public UndirectedGraphAdjMatrix(String graphName, int numberOfVertices, int[][] edges) {
        super(graphName, numberOfVertices, edges);

        // Create the Adjacency Matrix for the graph
        AM = new int[numberOfVertices][numberOfVertices];

        // Initialise the Adjacency Matrix to have no edges
        for (int sv = 0; sv < numberOfVertices; sv++) {
            for (int dv = 0; dv < numberOfVertices; dv++) {
                AM[sv][dv] = NOT_ADJACENT;
            }
        }

        // Add the edges to the Adjacency Matrix
        int numbEdges = edges.length; // size of 1st dimension of edges[][]

        for (int edge = 0; edge < numbEdges; edge++) {
            addEdge(edges[edge][0], edges[edge][1]);
        }
    }

    private boolean validVertex(int vertex) {
        return (0 <= vertex && vertex <= numberOfVertices() - 1);
    }

    @Override
    public boolean addEdge(int sourceVertex, int destinationVertex) {
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            // add edge "(sV, dV)"  & "(dV, sV)" to the graph by setting AM[sV][dV] != 0
            AM[sourceVertex][destinationVertex] = DEFAULT_WEIGHT;
            AM[destinationVertex][sourceVertex] = DEFAULT_WEIGHT;

            cardEdges++;

            System.out.printf("Edge { %d, %d } added to graph%n", sourceVertex, destinationVertex);
            return true;
        } else {
            System.out.printf("Edge { %d, %d } INVALID - Not added to graph%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public boolean removeEdge(int sourceVertex, int destinationVertex) {
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            if (isAdjacent(sourceVertex, destinationVertex)) {
                // remove edges "(sV, dV)" & "(dV, sV)" from the graph
                AM[sourceVertex][destinationVertex] = NOT_ADJACENT;
                AM[destinationVertex][sourceVertex] = NOT_ADJACENT;

                this.cardEdges--;

                System.out.printf("Edge { %d, %d }: Deleted%n", sourceVertex, destinationVertex);
                return true;
            } else {
                System.out.printf("Edge { %d, %d }: Cannot Delete - Does Not Exist%n", sourceVertex, destinationVertex);
                return false;
            }
        } else {
            System.out.printf("Edge { %d, %d } INVALID - Not deleted from graph%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public boolean isAdjacent(int sourceVertex, int destinationVertex) {
        // check if edge "(sV, dV)" exists in the graph by
        // checking if the adjacency matrix has [sV][dV] != 0.
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            return (AM[sourceVertex][destinationVertex] != NOT_ADJACENT);
        } else {
            System.out.printf("isAdjacent: FAILED - INVALID Edge { %d, %d }%n", sourceVertex, destinationVertex);
            return false;
        }
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
                System.out.print("  " + AM[sV][dV]);
            }
            System.out.println();
            System.out.println();
        }
    }
}

class GraphAdjMatrix extends Graph {
    private static final int NOT_ADJACENT = 0; // -1;
    private static final int DEFAULT_WEIGHT = 1;

    private int[][] AM;

    public GraphAdjMatrix(String graphName, int numberOfVertices) {
        super(graphName, numberOfVertices);
        AM = new int[numberOfVertices][numberOfVertices];
    }

    public GraphAdjMatrix(String graphName, int numberOfVertices, int[][] edges) {
        super(graphName, numberOfVertices, edges);

        // Create the Adjacency Matrix for the graph
        AM = new int[numberOfVertices][numberOfVertices];

        // Initialise the Adjacency Matrix to have no edges
        for (int sv = 0; sv < numberOfVertices; sv++) {
            for (int dv = 0; dv < numberOfVertices; dv++) {
                AM[sv][dv] = NOT_ADJACENT;
            }
        }

        // Add the edges to the Adjacency Matrix
        int numbEdges = edges.length; // size of 1st dimension of edges[][]

        for (int edge = 0; edge < numbEdges; edge++) {
            addEdge(edges[edge][0], edges[edge][1]);
        }
    }

    private boolean validVertex(int vertex) {
        return (0 <= vertex && vertex <= numberOfVertices() - 1);
    }

    @Override
    public boolean addEdge(int sourceVertex, int destinationVertex) {
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            // add edge "(sV, dV)" to the graph by setting AM[sV][dV] != 0
            AM[sourceVertex][destinationVertex] = DEFAULT_WEIGHT;

            cardEdges++;

            System.out.printf("Edge (%d, %d) added to graph%n", sourceVertex, destinationVertex);
            return true;
        } else {
            System.out.printf("Edge (%d, %d) INVALID - Not added to graph%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public boolean removeEdge(int sourceVertex, int destinationVertex) {
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            if (isAdjacent(sourceVertex, destinationVertex)) {
                // remove edge "(sV, dV)" from the graph
                AM[sourceVertex][destinationVertex] = NOT_ADJACENT;

                this.cardEdges--;

                System.out.printf("Edge (%d, %d): Deleted%n", sourceVertex, destinationVertex);
                return true;
            } else {
                System.out.printf("Edge (%d, %d): Cannot Delete - Does Not Exist%n", sourceVertex, destinationVertex);
                return false;
            }
        } else {
            System.out.printf("Edge (%d, %d) INVALID - Not deleted from graph%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public boolean isAdjacent(int sourceVertex, int destinationVertex) {
        // check if edge "(sV, dV)" exists in the graph by
        // checking if the adjacency matrix has [sV][dV] != 0.
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            return (AM[sourceVertex][destinationVertex] != NOT_ADJACENT);
        } else {
            System.out.printf("isAdjacent: FAILED - INVALID Edge (%d, %d)%n", sourceVertex, destinationVertex);
            return false;
        }
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
                System.out.print("  " + AM[sV][dV]);
            }
            System.out.println();
            System.out.println();
        }
    }
}

class GraphAdjList extends Graph {
    private static final int NOT_ADJACENT = -1;
    private static final int DEFAULT_WEIGHT = 1;

    private List<Integer>[] adjacencyList;   // an array of lists

    public GraphAdjList(String graphName, int numberOfVertices) {
        super(graphName, numberOfVertices);
        adjacencyList = new ArrayList[numberOfVertices];
        for (int i = 0; i < numberOfVertices; i++) {
            adjacencyList[i] = new ArrayList<>();
        }
    }

    public GraphAdjList(String graphName, int numberOfVertices, int[][] edges) {
        super(graphName, numberOfVertices, edges);

        // Create the Adjacency List for the graph
        adjacencyList = new ArrayList[numberOfVertices];
        for (int i = 0; i < numberOfVertices; i++) {
            adjacencyList[i] = new ArrayList<>();
        }

        // Add the edges to the Adjacency List
        int numbEdges = edges.length; // size of 1st dimension of edges[][]

        for (int edge = 0; edge < numbEdges; edge++) {
            addEdge(edges[edge][0], edges[edge][1]);
        }
    }

    private boolean validVertex(int vertex) {
        return (0 <= vertex && vertex <= numberOfVertices() - 1);
    }

    @Override
    public boolean addEdge(int sourceVertex, int destinationVertex) {
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            // add edge "(sV, dV)" to the graph by
            // Undirected graph, so add (sV, dV) & (dV, sV)
            adjacencyList[sourceVertex].add(destinationVertex);
            adjacencyList[destinationVertex].add(sourceVertex);

            cardEdges++;

            System.out.printf("Edge (%d, %d) added to graph%n", sourceVertex, destinationVertex);
            return true;
        } else {
            System.out.printf("Edge (%d, %d) INVALID - Not added to graph%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public boolean removeEdge(int sourceVertex, int destinationVertex) {
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            if (isAdjacent(sourceVertex, destinationVertex)) {
                // remove edge "(sV, dV)" from the graph
                adjacencyList[sourceVertex].remove(Integer.valueOf(destinationVertex));
                adjacencyList[destinationVertex].remove(Integer.valueOf(sourceVertex));

                this.cardEdges--;

                System.out.printf("Edge (%d, %d): Deleted%n", sourceVertex, destinationVertex);
                return true;
            } else {
                System.out.printf("Edge (%d, %d): Cannot Delete - Does Not Exist%n", sourceVertex, destinationVertex);
                return false;
            }
        } else {
            System.out.printf("Edge (%d, %d) INVALID - Not deleted from graph%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public boolean isAdjacent(int sourceVertex, int destinationVertex) {
        // check if edge "(sV, dV)" exists in the graph by
        // checking if sV's adjacency list contains dV
        if (validVertex(sourceVertex) && validVertex(destinationVertex)) {
            return adjacencyList[sourceVertex].contains(destinationVertex);
        } else {
            System.out.printf("isAdjacent: FAILED - INVALID Edge (%d, %d)%n", sourceVertex, destinationVertex);
            return false;
        }
    }

    @Override
    public void printRepresentation() {
        System.out.println("Adjacency List for Graph: " + name());
        System.out.println();

        for (int sV = 0; sV < numberOfVertices(); sV++) {
            System.out.print(" [| " + sV + " |]");

            // print sV's adjacency list
            for (int dV : adjacencyList[sV]) {
                System.out.printf(" --> [ %d ]", dV);
            }
            System.out.println(" --@");           // end of list "null"
            System.out.println();
        }
    }
}

public class TestGraphsSolution {
    public static void main(String[] args) {
        System.out.println("/////////////////////////////////////////////////");
        System.out.println("//              Testing Graphs                 //");
        System.out.println("/////////////////////////////////////////////////");
        System.out.println();

        final String name = "Week 8 Graph";
        final int numberOfVertices = 8;

        int[][] edges = new int[][] { { 0, 2 }, { 0, 4 },
                { 1, 2 }, { 1, 3 }, { 1, 5 },
                { 2, 4 }, { 2, 5 }, { 2, 6 },
                { 3, 5 },
                { 5, 6 }, { 5, 7 },
                { 6, 7 }
        };

        System.out.println("/////////////////////////////////////////////////////");
        System.out.println("// Create Undirected Graph using Adjacency Matrix  //");
        System.out.println("/////////////////////////////////////////////////////");
        System.out.println();

        UndirectedGraphAdjMatrix udgraphAM = new UndirectedGraphAdjMatrix(name, numberOfVertices, edges);

        System.out.println();
        System.out.println("/////////////////////////////////////////////////");
        System.out.println("//    Test Undirected Graph methods            //");
        System.out.println("/////////////////////////////////////////////////");
        System.out.println();

        udgraphAM.print();
        udgraphAM.printRepresentation();

        udgraphAM.addEdge(7, 7);
        udgraphAM.addEdge(7, 8);
        udgraphAM.print();

        udgraphAM.removeEdge(7, 7);
        udgraphAM.removeEdge(7, 0);
        udgraphAM.removeEdge(9, 8);
        udgraphAM.print();

        System.out.println();
        System.out.println();
        System.out.println("//////////////////////////////////////////////////");
        System.out.println("// Create Directed Graph using Adjacency Matrix //");
        System.out.println("//////////////////////////////////////////////////");
        System.out.println();

        GraphAdjMatrix graphAM = new GraphAdjMatrix(name, numberOfVertices, edges);

        System.out.println();
        System.out.println("/////////////////////////////////////////////////");
        System.out.println("//    Test Graph methods                       //");
        System.out.println("/////////////////////////////////////////////////");
        System.out.println();

        graphAM.printRepresentation();
        graphAM.print();

        System.out.println();
        System.out.println();
        System.out.println("//////////////////////////////////////////////////");
        System.out.println("// Create Undirected Graph using Adjacency List //");
        System.out.println("//////////////////////////////////////////////////");
        System.out.println();

        GraphAdjList graphAL = new GraphAdjList(name, numberOfVertices, edges);

        System.out.println();
        System.out.println("/////////////////////////////////////////////////");
        System.out.println("//    Test Graph methods                       //");
        System.out.println("/////////////////////////////////////////////////");
        System.out.println();

        graphAL.printRepresentation();
        graphAL.print();
    }
}