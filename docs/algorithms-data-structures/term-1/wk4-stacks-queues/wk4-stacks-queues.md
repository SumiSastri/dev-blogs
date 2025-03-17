__What is a stack?__

A stack is a one-ended, linear data structure that follows the LIFO (last-in, first-out) principle. In a programming language, a stack allows insertion and deletion point only from the top-end of the stack. A less abstract example is a stack of books, or plates where one book is stacked on top of another. You can only add or remove a book from the top end of the stack.

The primary operations of a stack data structure in progeramming languages include:

push(x) – Adds an element x to the top of the stack/ the stack points to the last index or [i] - adding elements therefore can be represented by [i] +1
pop() – Removes and returns the top element index minus 1 or  [i] -1
peek() – Retrieves the top element without removing it checks the index [i].
isEmpty() – Checks if the stack is empty which is the first index -1

Since only the top of the stack is accessible, all fundamental operations run in constant time o(1). However, brute-force iteration over the stack may result in O(n²) efficiency in certain cases.

TODO:  Add demos from class resources

__Use Cases of Stacks__

Browser Navigation (Back/Forward Buttons)
Undo/Redo functionality in text editors (similar logic)

When a user visits a webpage, the current page is pushed onto a stack.
Clicking "Back" pops the current page and moves to the previous page.
Clicking "Forward" pushes the new page onto the stack.
Next Greatest Element (Searching & Sorting)

Used in algorithms that require checking the next greater element in an array.
Elements are pushed onto a stack while iterating, and when a greater element is found, elements are popped and processed.
Pattern Matching (Compilers & Text Editors)

Used to check for balanced parentheses {[()]} in expressions.
The stack pushes opening brackets and pops them when a closing bracket is found.
If the stack is empty at the end, the expression is balanced.
Depth-First Search (DFS) in Graphs

DFS uses a stack to explore nodes.
A node is pushed onto the stack, and its adjacent nodes are explored recursively using pop operations.
Tracking Recursion (Function Calls in Execution Stack)

When a function is called, it is pushed onto the stack.
Once execution is complete, it is popped from the stack.
This helps keep track of nested function calls.
Complexity Analysis

Used in time complexity calculations, particularly when analyzing recursive function calls and their execution order.
The stack helps in tracing execution flow and evaluating recursive space complexity.

[YouTube](https://www.youtube.com/watch?v=lhhyE7NVcbg&list=PLqM7alHXFySF7Lap-wi5qlaD8OEBx9RMV&ab_channel=GeeksforGeeks)
[Freecodecamp](https://www.youtube.com/watch?v=RBSGKlAvoiM&ab_channel=freeCodeCamp.org)


Queue Definition
A queue is a double-ended linear data structure that follows the FIFO (first-in, first-out) principle, meaning the first element added, or enqued in a system, is the first one to be removed, or dequeued. Enqueing is also known as offering and dequeueing as polling. Enqueing or offering continues at the back of the line while dequeing or polling only occurs in the front of the line.

Operations in a Queue
Enqueue(x) – Adds an element x to the rear of the queue (O(1)).
Dequeue() – Removes and returns the element from the front of the queue (O(1)).
Peek() – Retrieves the front element without removing it (O(1)).
isEmpty() – Checks if the queue is empty (O(1)).
Contains & Removal - (O(n)) as you need to check each element

Characteristics of a Queue
Elements are inserted from the rear and removed from the front.
It allows sequential processing where tasks are handled in the order they arrive.
Efficiently implemented using arrays or linked lists.

Types of Queues
Simple Queue – Follows the standard FIFO order.
Circular Queue – The rear connects back to the front to optimize space.
Deque (Double-Ended Queue) – Allows insertion and removal from both ends.
Priority Queue – Elements are removed based on priority rather than order of arrival.

Use Cases of Queues

Print Job Scheduling (FIFO Queue)
When multiple print jobs are sent to a printer, they are added to a queue.
The first job enqueued is the first job printed, ensuring fairness in job execution.
Big-O Complexity: Enqueue O(1), Dequeue O(1).

Task Scheduling in Operating Systems (Circular Queue)
CPU scheduling uses a circular queue to manage tasks in round-robin scheduling.
Each process gets a time slice and is enqueued at the rear after execution, ensuring all processes get CPU time.
Big-O Complexity: Enqueue O(1), Dequeue O(1).

Handling Requests in Web Servers (FIFO Queue)
Web servers handle incoming client requests using a queue.
The first request received is processed first, and the resource is returned first, this maintains a fair request execution order.
Big-O Complexity: Enqueue O(1), Dequeue O(1).

Priority Queues – Hospital Emergency Rooms (Priority Queue)
In a hospital, patients are assigned priority levels based on severity.
A priority queue ensures that critical patients (higher priority) are treated before those with minor injuries.
Big-O Complexity: Enqueue O(log n), Dequeue O(log n) (using a heap).


Breadth first search - traversal on graphs - web crawling
Friend finders - social network apps
Internet networking - network broadcast - messaging
Garbage collections - Op system efficiency management
Solving puzzles and games

(https://www.youtube.com/watch?v=HZ5YTanv5QE&ab_channel=MichaelSambol)[You tube]
[MIT you tube](https://www.youtube.com/watch?v=s-CYnVz-uh4&ab_channel=MITOpenCourseWare)

Impact of Data Size on Queue Structure & Complexity
As the data size increases, the choice of queue implementation changes.
A simple queue works for small tasks, but large-scale applications switch to circular queues or priority queues.

The algorithm’s efficiency depends on the queue type:
FIFO Queue: O(1) for enqueue & dequeue.
Priority Queue: O(log n) for operations (due to heap-based sorting).
Dynamic Queues (Linked Lists): O(n) for search operations.

__Difference Between Stack and Queue__

A **stack** and a **queue** are both **linear data structures**, but they differ in how elements are added and removed.

| Feature      | Stack (LIFO) | Queue (FIFO) |
|-------------|-------------|-------------|
| **Order**   | Last-In, First-Out (**LIFO**) | First-In, First-Out (**FIFO**) |
| **Insertion Point** | Elements are **pushed** onto the **top** | Elements are **enqueued** at the **rear** |
| **Removal Point** | Elements are **popped** from the **top** | Elements are **dequeued** from the **front** |
| **Operations** | `push()`, `pop()`, `peek()` | `enqueue()`, `dequeue()`, `peek()` |
| **Flexibility** | Less flexible, as it only allows access to the **top** element | More flexible, as elements are processed in a structured order |
| **Use Cases** | Function call stack, undo/redo in editors, expression evaluation | Task scheduling, request handling, print queue, CPU scheduling |
