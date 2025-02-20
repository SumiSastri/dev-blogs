__Arrays__

Sequential - 0 indexed
Last index is (n-1)
Double - 8 bytes
Int - 4 bytes
2 bytes for integers

Allocation of space is fixed

1 d array
[2d array declaration](https://www.geeksforgeeks.org/different-ways-to-declare-and-initialize-2-d-array-in-java/)
Javascript[https://sentry.io/answers/how-can-i-create-a-two-dimensional-array-in-javascript/]
[Multidimensional arrays](https://www.geeksforgeeks.org/multidimensional-arrays-in-c/)

Strings allocate 28 bytes

Searching in a 3-d array you need the 3 elements position - see example dog

o(n) - jagged array - no clue of other arrays to loop 
o(n3) - 3d array
o(n2) 2d array

Brute force - left to right - o(n)
Divide conquer - binary search has to be sorted in ascending or descending order
eg: Dictionary
segments
indexes
start-end
upper segment(hihger than middle) and lower segment (lower than middle)
Uneven number 5,6 2 sets of searches use 2 numbers for upper and lower segment

Middle not counted as already checked
In pseudo - starting/ending and middle should match
Start before end - error - not found - how 404s work - empty element - logical error

Memory error - system error - conforming with system requirements
Logical error - code error - conforming with the condition
Syntax error  - code error - conforming with language
Binary log2(n)
Decimal log10(n)

O(log2(N )) - reduces the complexity of the search by half - log2(n)

Algos because they are processes are language agnostic
The process efficiency is calculated
Processes are different 
- search
- sort

Each of these processes have different Algos
Each type of process has different efficiencies
Looks at the data type and how the process works through the algo depending on the data type


 __Binary Search Complexity: O(log2(N))__

__ What Does O(log2(N)) Mean?__
When we say that **Binary Search is O(log2(N))**, we are describing its time complexity—how the number of operations it takes grows as the size of the input (N) increases.

__ Logarithmic Growth__
- The base-2 logarithm, **log2(N)**, measures how many times you can divide **N** by 2 before reaching 1.
- This happens because **Binary Search** repeatedly divides the search space in half.

__ Example Calculation__
Suppose we have a sorted list of size **N**, and we apply Binary Search:

| N (Size of List) | log2(N) (Max Steps) |
|------------------|--------------------|
| 8               | 3                  |
| 16              | 4                  |
| 1024            | 10                 |

Even for a large **N**, the number of steps remains small.

__ Why Is This Efficient?__
- Compared to **Linear Search**, which takes **O(N)** steps in the worst case (checking every element), Binary Search is much faster for large inputs.
- Example:
  - Searching in a list of **1 million** elements:
    - **Linear Search** may take up to **1,000,000** steps.
    - **Binary Search** takes at most **log2(1,000,000) ≈ 20** steps.

__Conclusion_-
Binary Search is efficient because it **cuts the problem in half at each step**, leading to a logarithmic time complexity **O(log2(N))**, making it much faster than linear search for large datasets.

__Bubble sort__

[Sorting alogrithm](https://www.w3schools.com/dsa/dsa_algo_bubblesort.php)
- Swaps - a lot of sorting and low efficiency (https://www.w3schools.in/data-structures/sorting-techniques/bubble-sort-algorithm)
- moves an unsorted list to completely sorted
- 2 loops
- first loop compare
- second loop sort
- efficiency o(log n2)
- best case is o(n) - if the array is sorted
- largest number bubbles up - l-r comparision
Slow but easy to implement - only sorts and swaps one number at a time
k is the number of elements not the number of bytes
[Bash example](https://bashscript.net/bubble-sort-example-using-bash-script/)


Tutorial:

Search of 1 d array efficiency is o(n)
Brute force o(n)

Search algo
looking - linear search efficiency is o(n)
binary search o(logn2)
[Difference between linear and binary search](https://www.javatpoint.com/ds-linear-search-vs-binary-search)

Sort algo
sort helps search but search may not help sort

Comparison sorting o(n2)
Bubble sort algo o(n2)
Insertion sort

What is the difference between a comparison (selection) sort and bubble sort?
[javapoint](https://www.javatpoint.com/bubble-sort-vs-selection-sort)
[balaedung](https://www.baeldung.com/cs/insertion-vs-bubble-sort)

Comparison-Based Sorting Algorithms
Bubble Sort – Repeatedly swaps adjacent elements if they are in the wrong order.
Selection Sort – Selects the smallest (or largest) element and moves it to its correct position.
Insertion Sort – Builds the sorted list one element at a time by inserting elements into their correct position.
Merge Sort – Divides the array into halves, sorts each half, and then merges them back together.
Quick Sort – Uses a pivot to partition the array into smaller and larger elements, then sorts recursively.
Heap Sort – Converts the array into a heap and repeatedly extracts the maximum or minimum element.
Shell Sort – A variation of insertion sort that sorts elements far apart before finalizing with a normal insertion sort.
Tim Sort – A hybrid sorting algorithm used in Python, combining merge sort and insertion sort.
Intro Sort – A hybrid of quicksort, heapsort, and insertion sort, used in C++’s STL.

Non-Comparison-Based Sorting Algorithms
Counting Sort – Works well for sorting integers in a known range, using counting instead of comparisons.
Radix Sort – Sorts numbers digit by digit, useful for large numbers or strings.
Bucket Sort – Distributes elements into buckets and sorts each bucket individually.

Search algorithms
Uninformed (Blind) Search Algorithms
Linear Search – Checks each element in a list sequentially.
Binary Search – Efficient for sorted arrays; repeatedly divides the search range in half.
Jump Search – Jumps ahead by fixed steps and then does a linear search in a smaller range.
Interpolation Search – Improves binary search by estimating the search position based on values.
Exponential Search – Finds a range using exponential jumps and then does a binary search.
Graph/Tree Search Algorithms
Depth-First Search (DFS) – Explores as far as possible along one branch before backtracking.
Breadth-First Search (BFS) – Explores all neighbors of a node before moving deeper.
Iterative Deepening Depth-First Search (IDDFS) – A combination of DFS and BFS, increasing depth limit gradually.
Uniform-Cost Search (Dijkstra’s Algorithm) – Finds the shortest path in a weighted graph.
Heuristic (Informed) Search Algorithms
A Search* – Uses heuristics to find the most optimal path in a weighted graph.
Greedy Best-First Search – Always expands the node that appears closest to the goal.
Hill Climbing – Moves toward the highest-valued neighbor, used in optimization problems.
Beam Search – Similar to BFS but only keeps the best "k" candidates at each step.
Other Specialized Search Algorithms
Fibonacci Search – A variation of binary search that works well for ordered lists.
Ternary Search – Similar to binary search but divides the range into three parts.
Jump Point Search – An optimized search for grid-based pathfinding (like A* but faster in open spaces).


Efficiency of algorithms
Depends on type of data structure and time taken to complete the number of steps in the algorithm
Quick sort most efficient - divide and conquer
Insert sort
Merge sort
Comparision is slower
Quadratic sort - divide and conquer and merge - not used - slower than quick and merge sort
Stable sort - used for voting competitions
