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
