__What are the differences between a stack and a queue__

Stacks and queues are linear data structures that process data in different orders. A stack follows the LIFO principle: the last element added is the first one to be removed. A queue, however, follows the FIFO principle: the first element added is the first one to be removed.

A stack is a linear data structure where elements are added and removed from one end, called the "top." The operations that you can perform to a stack is to `push` or Add an element to the stack, to the top of the stack, `pop` removes the top element, following the LIFO principle. You can only perform the `peek` operation to view last element added. You can also check if the stack `isEmpty` or has no elements added to it.

Stacks are popular in software such as text editors, allowing users to undo the last function.

A queue is another linear data structure where elements are added at the "rear" and removed from the "front." Operations relate to how a queue is populated with data - `equeue` adds an element to the queue, `dequeue` following the FIFO principle, removes the front element from the queue. While the `isEmpty` check if the queue is empty and is a similar function to the stack, the way to check the first element of the queue is `front`, not peek! Printers use queues to manage printing tasks, github uses a queue for commiting code chunks to a repository.

__Trees and their applications__

A *binary tree* is a specific type of structure where each node has at most two children, often referred to as the left and right child. Common operations include insertion, deletion, and traversal (in-order, pre-order, post-order). Binary search trees for efficient searching and sorting. They are good for hierarchical data representations (e.g., file systems).

An *AVL (Adelson-Velsky and Landis) tree* is a self-balancing binary search tree. It maintains a balance factor (difference in heights of the left and right subtrees) to ensure that the tree remains balanced, leading to optimal performance for operations like search, insertion, and deletion. Balanced tree operations for better performance in applications requiring frequent insertions and deletions.

__Graphs and how they differ from trees__

A tree is a type of graph, but all graphs are not trees. A graph consists of vertices (nodes) and edges (connections between nodes).

There are two main types of graphs:

Directed: The edges have a direction (from one vertex to another).

Undirected: The edges do not have a direction.

Operations:

Adjacency: Checking if two vertices are connected.

Traversal: Moving through the graph, typically using algorithms like BFS (Breadth-First Search) or DFS (Depth-First Search).

Shortest Path: Finding the shortest path between two vertices, often using algorithms like Dijkstra’s or Bellman-Ford.

Applications:

Social networks (e.g., Facebook, where users are vertices and friendships are edges).

Navigation systems (maps), finding the shortest path from one point to another.

Web crawlers (graph structures represent websites and links).

Additional Data Structures and Concepts
Here are a few other common data structures and concepts that might be relevant:

1. Linked List

A linear data structure where each element (node) contains a value and a reference (or link) to the next node in the sequence.

Types: Singly Linked List (each node points to the next), Doubly Linked List (each node points to both the next and previous nodes).

Applications: Implementing stacks, queues, and dynamic memory allocation.

2. Hash Table (or Hash Map)

A data structure that stores key-value pairs, allowing for fast access to values based on their keys.

Uses a hash function to compute an index where the value is stored.

Applications: Database indexing, caching, associative arrays.

3. Heaps

A specialized tree-based data structure that satisfies the heap property: In a max-heap, the key at the root is greater than or equal to the keys of its children, and in a min-heap, the key at the root is less than or equal to the keys of its children.

Applications: Priority queues, efficient sorting algorithms (like heap sort).

4. Trie

A tree-like data structure used to store a dynamic set of strings, where the keys are usually strings.

Each node represents a single character, and paths down the tree represent strings.

Applications: Autocomplete systems, spell checkers.

5. Bloom Filter

A probabilistic data structure used to test whether an element is a member of a set. It may give false positives but never false negatives.

Applications: Web caching, database indexing.


Example:
Consider Linear Search (O(n)) vs. Binary Search (O(log n)). Linear Search checks every element one by one. As n increases, time grows proportionally. Binary Search halves the search space each step, leading to logarithmic growth—much more efficient for large datasets. By comparing logarithmic growth DSAs, asymptotic analysis helps determine which algorithms scale better as data size increases, allowing for better decision-making in software development.


__Most Used Sorting Algorithms__

The most used sorting algorithm depends on the context:


1. General-Purpose Sorting (Everyday Use)

- **Quicksort**  
  Often the fastest in practice due to its `O(n log n)` average case and low memory overhead.  
  ➤ Used in many standard libraries (e.g., C++'s `std::sort`).

- **Merge Sort**  
  Preferred in stable sorting scenarios.  
  ➤ Used in Java’s `Collections.sort()` for objects.

- **Timsort**  
  A hybrid of merge sort and insertion sort.  
  ➤ Used in Python’s `sorted()` and Java’s `Arrays.sort()` for objects.

---

2. In Practice (Real-World Systems)

- **Timsort**  
  ➤ One of the most widely used sorting algorithms in high-level languages (Python, Java).

- **Quicksort**  
  ➤ Commonly used in low-level and performance-critical applications.

- **Merge Sort**  
  ➤ Preferred when **stability** is required (keeps equal elements in order).

---

3. In Computer Science Theory

- **Heap Sort**  
  ➤ Useful when constant-time retrieval of the smallest/largest element is needed.  
  ➤ Guarantees `O(n log n)` time and does not require recursion.

There are three important rules of thumb in developing recursive programs:
• The recursion has a base case—we always include a conditional statement as the first statement in the program that has a return.
• Recursive calls must address subproblems that are smaller in some sense, so that recursive calls converge to the base case. In the code below, the difference between the values of the fourth and the third arguments always decreases.
• Recursive calls should not address subproblems that overlap. In the code below, the portions of the array referenced by the two subproblems are disjoint.

---

> 💡 **Note:**  
> There’s no one-size-fits-all — the "best" sorting algorithm depends on data size, structure, and the need for stability or in-place sorting.

