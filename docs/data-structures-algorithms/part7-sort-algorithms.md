---
layout: default
title: Common sort algorithms 
parent: DSA - data structures and algorithms
last_updated: May 2025
---

# Common sort algorithms

Sorting data before searching greatly improves efficiency of search algorithms


__Linear Data Sorting__
Sorting data before searching can greatly improve the efficiency of certain search algorithms, especially binary search. Here are some common sorting algorithms:

_Bubble Sort_ Repeatedly steps through the list, compares adjacent elements, and swaps them if they are in the wrong order. Simple but inefficient (O(n²)).

_Insertion Sort_ Builds the sorted array one element at a time by comparing and inserting elements into their correct position. Efficient for small or nearly sorted data (O(n²) worst, O(n) best).

_Selection Sort_ Repeatedly finds the minimum (or maximum) element and places it at the beginning (or end). Also O(n²), and generally slower than insertion sort.

_Merge Sort_ A divide-and-conquer algorithm that divides the array into halves, recursively sorts them, and then merges the sorted halves. Time complexity is O(n log n), efficient and stable.

_Quick Sort:_ Also divide-and-conquer, but uses a pivot to partition the array. Average case is O(n log n), but worst-case is O(n²) (can be mitigated with good pivot choice).

__Heap Sorting__
Heap Sort: Builds a binary heap (usually a max-heap), repeatedly removes the root (largest element), and rebuilds the heap. Time complexity is O(n log n), not stable, but does not require additional memory like merge sort.

__Data Structures That Are Sorted by Nature__
These structures maintain a sorted property, which is useful for efficient retrieval:

_Binary Search Trees (BST):_ Maintain elements in sorted order via in-order traversal. Search, insert, and delete operations are O(log n) on average but can degrade to O(n) without balancing.

_Balanced Binary Trees (e.g., AVL, Red-Black Trees):_ Guarantee O(log n) operations by maintaining balance during insertions and deletions.

_Min Heaps / Max Heaps:_ Always keep the minimum (or maximum) element at the root. Not fully sorted internally, but partially ordered to support efficient access to the min/max element (O(1)), and insertion/deletion in O(log n).

_Binary Search Arrays:_ Arrays that are kept in sorted order to allow binary search (O(log n)). Sorting must be done ahead of time (e.g., using any of the algorithms above).

Here is a comparative table:
## Sorting Algorithms & Ordered Data Structures

### Sorting Algorithms

| Algorithm       | Best Time | Average Time | Worst Time | Space Complexity | Stable | Notes                             |
|----------------|-----------|---------------|-------------|-------------------|--------|-----------------------------------|
| Bubble Sort     | O(n)      | O(n²)         | O(n²)       | O(1)              | Yes    | Simple, rarely used in practice   |
| Insertion Sort  | O(n)      | O(n²)         | O(n²)       | O(1)              | Yes    | Efficient for small/mostly sorted |
| Selection Sort  | O(n²)     | O(n²)         | O(n²)       | O(1)              | No     | Always makes n swaps              |
| Merge Sort      | O(n log n)| O(n log n)    | O(n log n)  | O(n)              | Yes    | Divide-and-conquer, stable        |
| Quick Sort      | O(n log n)| O(n log n)    | O(n²)       | O(log n) avg      | No     | Fast in practice, not stable      |
| Heap Sort       | O(n log n)| O(n log n)    | O(n log n)  | O(1)              | No     | In-place, uses binary heap        |

### Ordered Data Structures

| Structure            | Ordered? | Lookup Time | Insert/Delete | Notes                                           |
|----------------------|----------|-------------|----------------|-------------------------------------------------|
| Binary Search Array  | Yes      | O(log n)    | O(n)           | Fast binary search, expensive insert/delete     |
| Binary Search Tree   | Yes*     | O(log n)*   | O(log n)*      | *Unbalanced trees can degrade to O(n)           |
| AVL Tree             | Yes      | O(log n)    | O(log n)       | Self-balancing BST                              |
| Red-Black Tree       | Yes      | O(log n)    | O(log n)       | Balanced BST with slightly faster insert/delete |
| Min Heap             | Partial  | O(1) (min)  | O(log n)       | Only root is min; not fully sorted              |
| Max Heap             | Partial  | O(1) (max)  | O(log n)       | Only root is max; not fully sorted              |
