# Understanding  DSAs (data structures and algorithms) and their relationship to programming efficiencies

__Why do we need data structures?__

Data structures are essential for managing, accessing, storing, and processing data efficiently. They provide both a formal and abstract definition of how data is organized and manipulated. Efficient data structures are crucial for reducing costs associated with data processing and transportation.

__What is a data structure__

A data structure organizes related data for efficient storage, access, and processing. Understanding data structures involves distinguishing between structured data. Structured data is when data is organised in a particular way. Data structures, takes structured data one step further by managing this data in a pre-determined fashion. Data structures, therefore, have underlying mathematical properties that determine their use and application.

The key uses and features of a data structure are:-

- to provide operational and internal representations of data in a system (eg: classes in object-oriented programming)
- to connect data accurately
- to deal with different data types - static vs. dynamic structures (stable vs. modifiable)
- to protect data, control its movement and storage
- convert data into byte-size - 4 to 8 bytes - for machine registers to process
- to provide an interface or relationship with ICT (Information and Communication Technology)

__What is an abstract data type (ADT)__

Abstract Data Typess define how data can be used without specifying the underlying implementation. When a class is created, privately stored data through the process known as data encapsulation ensures the internal details of the data can only be accessed by the class via the class methods. Public methods and interfaces provide controlled access to this data. vADTs allow flexibility in modifying data without changing the class data structure.

## A closer look at the different types of data structures and their uses

- Linear (sequential): Data is arranged in a sequence (e.g., Arrays, Linked Lists)
- Non-linear (non-sequential): Data is not arranged in a straight line (e.g., Trees, Graphs)
- Static (fixed size): Data has a set size and cannot expand (e.g., Arrays)
- Dynamic (flexible size): Data can grow or shrink during execution (e.g., Linked Lists)
- Indexed (key-value pairs): Data is stored in key-value form (e.g., Hash Maps).
- Linked (non-indexed): Data elements are connected via pointers (e.g., Linked Lists).
- Hierarchical: Data is organized in a tree-like structure (e.g., Trees, Heaps).
- Hash-based:  Data is stored based on a hash function (e.g., Hash Tables, Hash Maps).
- Matrix: Data is stored in multi-dimensional structures (e.g., 2D Arrays).
- Priority-based: Data is stored based on priority rather than order (e.g., Priority Queues, Heaps).
- Distributed: Data is spread across multiple locations or systems (e.g., Distributed Hash Tables).

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

__Data structures and and memory management__

- Static Data: Fixed, small, may waste memory due to fragmentation.
- Dynamic Data: Can grow/shrink at runtime, requires careful management during compilation.
- Memory Allocation: The new keyword allocates memory for objects/classes, storing references using a stack pointer.

Memory Management and Complexity
In data structures, memory management refers to efficiently utilizing memory resources to ensure that data can be stored, accessed, and modified without unnecessary waste or performance hits. In practice:

Dynamic memory allocation (e.g., using pointers in linked lists, trees) allows for flexible memory usage.

Efficient storage (e.g., binary trees or hash tables) allows faster access and manipulation.

Example of PIN and Password Complexity:
PIN (Personal Identification Number): A 3-digit PIN has 1,000 possible combinations (from 000 to 999).
Password with Letters: For a password of length 3 using 26 letters, the number of possible combinations is 
26 to the power of 3 taking a brute force attack to run 17,576 iterations to crack the code. Adding more characters or including uppercase, lowercase, or special characters increases the complexity exponentially making the password more difficult to crack.

__What is an algorithm__

An algorithm is a step-by-step set of instructions to solve a problem.

__Types of algorithms__

- Brute Force – Tries all possibilities (slow, inefficient). However, it should not be underestimated as cybersecurity attacks often use brute force algorithms to try all possible solutions to break security (e.g., passwords). This method is simple but computationally expensive.

- Divide and Conquer – Splits problems into smaller sub-problems and solves them recursively (e.g., Merge Sort, Quick Sort). Binary Search: Uses a divide-and-conquer strategy in searching. Merge Sort: Divides data, sorts subgroups, and merges them back in order. Binary Trees: Follow a hierarchical structure where each node has up to two children.

- Greedy Algorithm – Makes the best local choice at each step (e.g., Coin Change Problem, Shortest Path in Graphs).Coin Change Problem: A greedy algorithm attempts to use the fewest coins to make change. Shortest Path: In graphs, Dijkstra’s algorithm is an example of a greedy approach. Limitations: Greedy algorithms work well in some cases but fail when global optimization is needed, as they do not always explore all possible solutions.

No method is better or worse than the other - it depends on the use case and the efficiency that the end-user is looking for.

__How is the efficiency of an algorithm calculated__

The efficiency of an alogrithm is measured with 2 variables.

- Time Complexity – Measures execution time.
- Space Complexity – Measures memory usage.

The O in the notation represents the _order of complexity_ of the algorithm, or the number of steps the alorithm needs to complete a task. The _Big-O notation_ describes how an algorithm scales as the amount of data that it is processing increases. It only describles the worst case scenario,

Big-O (Upper Bound) – Worst-case complexity.
Big-Theta (Θ) – Average-case complexity.
Big-Omega (Ω) – Best-case complexity.

| Complexity | Description | Example |
|------------|-------------|----------|
| O(1) | Constant Time | Accessing an array element |
| O(log n) | Logarithmic Time | Binary Search |
| O(n) | Linear Time | Looping through an array |
| O(n log n) | Linearithmic Time | Merge Sort |
| O(n²) | Quadratic Time | Nested Loops, Bubble Sort |
| O(2ⁿ) | Exponential Time | Fibonacci using Recursion |
| O(n!) | Factorial Time | Brute-force Traveling Salesman |

__What is asymptotic analysis of an algorithms efficiency?__

When analyzing algorithms, we need a way to compare their efficiency, especially as input size of the data (`n`) grows very large. Instead of measuring exact execution times (which depend on hardware, programming language, etc.), asymptotic analysis helps us generalize efficiency trends. The analysis process evaluates the performance of an algorithm by focusing on its growth rate rather than exact execution time. This is done using Big-O (worst case), Big-Theta (average case), and Big-Omega (best case) notations.

Example:
Consider Linear Search (O(n)) vs. Binary Search (O(log n)). Linear Search checks every element one by one. As n increases, time grows proportionally. Binary Search halves the search space each step, leading to logarithmic growth—much more efficient for large datasets. By comparing logarithmic growth DSAs, asymptotic analysis helps determine which algorithms scale better as data size increases, allowing for better decision-making in software development.

__Sorting Algorithms__

__Comparison-Based Sorting Algorithms__
1. **Bubble Sort** – Repeatedly swaps adjacent elements if they are in the wrong order.
2. **Selection Sort** – Selects the smallest (or largest) element and moves it to its correct position.
3. **Insertion Sort** – Builds the sorted list one element at a time by inserting elements into their correct position.
4. **Merge Sort** – Divides the array into halves, sorts each half, and then merges them back together.
5. **Quick Sort** – Uses a pivot to partition the array into smaller and larger elements, then sorts recursively.
6. **Heap Sort** – Converts the array into a heap and repeatedly extracts the maximum or minimum element.
7. **Shell Sort** – A variation of insertion sort that sorts elements far apart before finalizing with a normal insertion sort.
8. **Tim Sort** – A hybrid sorting algorithm used in Python, combining merge sort and insertion sort.
9. **Intro Sort** – A hybrid of quicksort, heapsort, and insertion sort, used in C++’s STL.

__Non-Comparison-Based Sorting Algorithms__
10. **Counting Sort** – Works well for sorting integers in a known range, using counting instead of comparisons.
11. **Radix Sort** – Sorts numbers digit by digit, useful for large numbers or strings.
12. **Bucket Sort** – Distributes elements into buckets and sorts each bucket individually.


__Search Algorithms__

__Uninformed (Blind) Search Algorithms__
1. **Linear Search** – Checks each element in a list sequentially.
2. **Binary Search** – Efficient for sorted arrays; repeatedly divides the search range in half.
3. **Jump Search** – Jumps ahead by fixed steps and then does a linear search in a smaller range.
4. **Interpolation Search** – Improves binary search by estimating the search position based on values.
5. **Exponential Search** – Finds a range using exponential jumps and then does a binary search.

__Graph/Tree Search Algorithms__
6. **Depth-First Search (DFS)** – Explores as far as possible along one branch before backtracking.
7. **Breadth-First Search (BFS)** – Explores all neighbors of a node before moving deeper.
8. **Iterative Deepening Depth-First Search (IDDFS)** – A combination of DFS and BFS, increasing depth limit gradually.
9. **Uniform-Cost Search (Dijkstra’s Algorithm)** – Finds the shortest path in a weighted graph.

__Heuristic (Informed) Search Algorithms__
10. **A\* Search** – Uses heuristics to find the most optimal path in a weighted graph.
11. **Greedy Best-First Search** – Always expands the node that appears closest to the goal.
12. **Hill Climbing** – Moves toward the highest-valued neighbor, used in optimization problems.
13. **Beam Search** – Similar to BFS but only keeps the best "k" candidates at each step.

__Other Specialized Search Algorithms__
14. **Fibonacci Search** – A variation of binary search that works well for ordered lists.
15. **Ternary Search** – Similar to binary search but divides the range into three parts.
16. **Jump Point Search** – An optimized search for grid-based pathfinding (like A* but faster in open spaces).


Conclusion

Understanding DSAs is essential for efficient data processing, memory management, and problem-solving. Choosing the right algorithm and data structure can significantly impact performance, making it crucial for optimizing computing processes.

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

