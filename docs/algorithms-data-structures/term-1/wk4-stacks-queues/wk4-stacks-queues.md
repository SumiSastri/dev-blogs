__Stack__

- A linear data structure eg: stack of plates
- Open one end - top end
- LIFO - data processing
- Allows insert/ access/ removal of elements
- top of stack is the insertion point
- isEmpty/ pop/ push/ peek operation complexity is o(1) a constant as only the top of the stack can be accessed is accessed
- Iterations - o(n2) efficiency - brute force
wk4

Use:
Parsing of expressions/ parsing balancing of parenthesis (compilers)
Recursions - call stack saves the stack data and then calls a function 
Next greater element (searching and sorting)
Element by index (accessing elements of a list)


[Freecodecamp](https://www.youtube.com/watch?v=RBSGKlAvoiM&ab_channel=freeCodeCamp.org)

__Queue__

- FIFO
- More flexible

__Difference between a stack and a queue__
A stack and a queue are both linear data structures, but they differ in how elements are added and removed.

Stack
Follows the LIFO (Last In, First Out) principle.
The last element added is the first one to be removed.
Operations:
Push: Add an element to the top.
Pop: Remove the top element.
Peek: View the top element without removing it.

Example Use Cases:
Undo/Redo functionality in text editors.
Backtracking (e.g., navigating browser history).
Managing function calls (call stack in programming).

Queue
Follows the FIFO (First In, First Out) principle.
The first element added is the first one to be removed.
Operations:
Enqueue: Add an element to the rear.
Dequeue: Remove an element from the front.
Peek: View the front element without removing it.

Example Use Cases:
Print job scheduling.
Task scheduling in operating systems.
Handling requests in web servers.

Priority queues - hospital queues 100 patients 10 docs

Once the data size changes the structure changes as the algorithm operation changes and big o changes
