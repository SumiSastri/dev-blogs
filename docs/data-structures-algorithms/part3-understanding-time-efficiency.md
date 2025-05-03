---
layout: default
title: Alogorithms and data-processing efficiency
nav_order: 13
parent: DSA - data structures and algorithms 
last_updated: May 2025
---

# Alogorithms and data-processing efficiency

Data in an application is processed by underlying programs or algorithms. Data operations involve sorting, searching, storing, uploading, downloading, inserting, editing and deleting.

Each of these operations take a different amount of time to process depending on several variables. This is not an exhaustive, but indicative list:

- network efficiency
- hardware design
- software design
- algorithms that manipulate the data
- programming language
- memory size
- latency (proximity of the data to memory and processors)
- size of the data
- type of data storage

To isolate the exact efficiency of the algorithm, it is important to compare alorithms on a like-for-like basis especially as input size of the data  commonly notated as `n` grows very large. 

Instead of measuring exact execution times (which depend on hardware, programming language, etc.), asymptotic analysis helps us generalise efficiency trends. 

The analysis process evaluates the performance of an algorithm by focusing on its growth rate rather than exact execution time. This is done using Big-O (worst case), Big-Theta (average case), and Big-Omega (best case) notations. The O in the notation represents the _order of complexity_ of the algorithm, or the number of steps the alorithm needs to complete a task. The _Big-O notation_ describes how an algorithm scales as the amount of data that it is processing increases. It only describles the worst case scenario and should not be confused with Big Omega which is the best case.

Asymptotic efficiency, therefore, refers to the growth of time or space requirements in terms of input size n, ignoring constants and low-order terms.

## How is the asymptotic efficiency of an algorithm calculated?

The efficiency of an alogrithm is measured with 2 variables, as we have seen stripping out other variables to provide the asymptotic efficiency. These variables are:

- Measurement of the execution time of the algorithm - or time complexity
- Measurement of the amount of memory usage - space complexity

O(1) - is the order of magnitude of one. For example, if a search algorithm requires to find a data record and it is the first record in the list, it is found immediately - in constant time, therefore the order or magnitude of complexity is O(1), more accurately, the algorithm runs in constant time regardless of input size therefore when you access an element of an array by it's index, it is found immediately (in constant time).

O(log n) or logarithmic time describes when an input size is divided (commonly by 2) in each step. This is why binary search is O(log n). 

Linear time is when every data set is visited to perform an operation with an order of magnitude of O(n) - where n is the number of data points visited to perform the operation, terminating when the data set is found.

This is a little different from O(n!) or factorial time where every single permutation and combination of the data is tested to produce a solution, this is a non-linear representation of O(n) and is not related to O(n) except that both use n as the input size. The n! represents a super-exponential time complexity.

The combination of two efficiency factors is seen in the O(n log n) complexity. The O(log n) part comes from repeatedly dividing the input into halves — like in a divide-and-conquer strategy. The O(n) part represents the linear work done at each level of division, such as merging elements back together. This results in a total time complexity of O(n log n).

| Complexity | Description | Example |
|------------|-------------|----------|
| O(1) | Constant Time | Accessing an array element |
| O(log n) | Logarithmic Time | Binary Search |
| O(n) | Linear Time | Looping through an array |
| O(n log n) | Linearithmic Time | Merge Sort |
| O(n²) | Quadratic Time | Nested Loops, Bubble Sort |
| O(2ⁿ) | Exponential Time | Fibonacci using Recursion |
| O(n!) | Factorial Time | Brute-force Traveling Salesman |

## Conclusion
The asymptotic efficiency of an algorithm is evaluated by analyzing its time complexity (how the runtime grows with input size) and space complexity (how memory usage grows with input size). Big-O notation captures the upper bound of this growth, ignoring constants and smaller terms. For example, accessing an array element is O(1), linear traversal is O(n), and divide-and-conquer strategies like binary search are O(log n).