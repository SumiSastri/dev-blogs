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

__Algos__
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

Binary Trees – Each node has up to two children, sorting is easier but allocation can be complex.


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



Efficiency of algorithms
Depends on type of data structure and time taken to complete the number of steps in the algorithm
Quick sort most efficient - divide and conquer
Insert sort
Merge sort
Comparision is slower
Quadratic sort - divide and conquer and merge - not used - slower than quick and merge sort
Stable sort - used for voting competitions
