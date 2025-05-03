---
layout: default
title: hat is an algorithm?
nav_order: 13
parent: DSA - data structures and algorithms 
last_updated: May 2025
---

# What is an algorithm?

An algorithm is a step-by-step set of instructions to solve a problem. This could be a non-programming problem as algorithms were first used in Algebra. They can be used to solve both trivial and non-trivial problems.

In programming, algorithms are classified into 3 main categories

__Brute Force__ Tries all possibilities (slow, inefficient). However, it should not be underestimated as cybersecurity attacks often use brute force algorithms to try all possible solutions to break security (e.g., passwords). This method is simple but computationally expensive.

__Divide and Conquer__ Splits problems into smaller sub-problems and solves them recursively (e.g., Merge Sort, Quick Sort). Binary Search: Uses a divide-and-conquer strategy in searching. Merge Sort: Divides data, sorts subgroups, and merges them back in order. Binary Trees: Follow a hierarchical structure where each node has up to two children.

__Greedy__ Makes the best local choice at each step (e.g., Coin Change Problem, Shortest Path in Graphs).Coin Change Problem: A greedy algorithm attempts to use the fewest coins to make change. Shortest Path: In graphs, Dijkstra’s algorithm is an example of a greedy approach. Limitations: Greedy algorithms work well in some cases but fail when global optimization is needed, as they do not always explore all possible solutions.

No method is better or worse than the other - it depends on the use case and the efficiency that the end-user is looking for.

A list of algorithms to demonstrate the study is a vast field and not all topics are covered in this section.

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

## Conclusion

Understanding algorithms is essential for efficient data processing, memory management, and problem-solving. Choosing the right algorithm and data structure can significantly impact performance, making it crucial for optimizing computing processes.
