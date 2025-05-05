TIME COMPLEXITY

1.
Input Size (n)	Time (ms)
1000	10
2000	20
4000	40
8000	80
16000	160

→ Estimate the time complexity.

2.
Input Size (n)	Time (ms)
1000	10
2000	40
4000	160
8000	640
16000	2560

→ Estimate the time complexity.

3.
Input Size (n)	Time (ms)
1000	300
2000	600
4000	900
8000	1200
16000	1500

→ Estimate the time complexity.

4.
Input Size (n)	Time (ms)
1000	50
2000	100
4000	200
8000	400
16000	800

→ Estimate the time complexity.

5.
Input Size (n)	Time (ms)
1000	100
2000	500
4000	2500
8000	12500
16000	62500

→ Estimate the time complexity.

6.
Input Size (n)	Time (ms)
1000	20
2000	25
4000	30
8000	35
16000	40

→ Estimate the time complexity.

7.
Input Size (n)	Time (ms)
1000	500
2000	2000
4000	8000
8000	32000
16000	128000

→ Estimate the time complexity.

8.
Input Size (n)	Time (ms)
1000	100
2000	300
4000	700
8000	1500
16000	3100

→ Estimate the time complexity.

9.
Input Size (n)	Time (ms)
1000	1000
2000	1000
4000	1000
8000	1000
16000	1000

→ Estimate the time complexity.

10.
Input Size (n)	Time (ms)
1000	70
2000	140
4000	280
8000	560
16000	1120

→ Estimate the time complexity.


(a) You are given the following run-time data for an algorithm. Based on this
data give the algorithm’s complexity class and provide a justiﬁcation of your answer.

Input Size Milliseconds (ms)
 1000 473  2000 1040  4000 1934  8000 4003 16000 7765

(b) Calculate the Big-O order of complexity for the following Fun1 method,
give a brief justiﬁcation of your answer:

```java
public int Fun1( int n ) {
int answer = 0 ; int i = 0 ; while ( i < n ) {
for ( int j = 0; j < i; j++ ) {
int k = 0 ;
while ( k < j; )
{
answer = answer + ( (i * j) * k ) ;
}
k++ ;
}
i++ ;
}
return answer ;
} 
```

__Purpose of the Question__

The question is designed to test your understanding of two key aspects of algorithm analysis:

Empirical analysis of time complexity (Part a)

Here, you are given run-time data for an algorithm and asked to deduce its time complexity based on observed trends. This tests your ability to interpret and extrapolate from empirical data and recognize patterns in time complexity growth.

Understanding and analyzing code for time complexity (Part b)

In this part, you're provided with a code snippet and asked to determine its time complexity. This tests your knowledge of algorithm behavior and nested loops. You need to break down the loops, understand how they interact, and derive the overall time complexity.

__What You Will Learn__

Part (a): Empirical Analysis of Time Complexity
Goal: By analyzing the run-time data, you'll learn how to recognize common growth patterns (e.g., O(n), O(n²), O(n log n)) from empirical data. This is crucial in scenarios where you need to analyze an algorithm’s efficiency based on practical performance rather than purely theoretical analysis.

__Skills Developed__

1. Interpreting run-time data: Understanding how input size correlates with execution time and identifying potential complexity classes.

Recognizing common complexity patterns: For example, a doubling of the input size leading to a doubling or near-doubling of the run-time typically suggests logarithmic or linearithmic complexity (O(n log n)).

Part (b): Analyzing Code for Time Complexity
Goal: By analyzing the given method (Fun1), you will learn how to break down a piece of code and determine its time complexity based on nested loops and iterative constructs.

2. Nested Loops and Time Complexity: Understanding how nested loops contribute to the overall time complexity. This is a crucial concept in algorithm analysis, especially when dealing with algorithms involving multiple layers of iteration.

Decomposing complex code: Understanding how each loop behaves independently and how to combine their effects to determine the overall time complexity.

__QUICK RULE OF THUMB__
Count the number of nested loops → Multiply their iterations!

1 loop → O(n)
2 loops → O(n²)
3 loops → O(n³)
If a loop doubles or halves → O(log n)
If a loop runs n log n times → O(n log n)

__How to Provide a Robust Answer__

For Part (a): When presented with time data, you should:

Observe the pattern: Look at how the run-time grows as the input size increases. Identify any clear relationships (e.g., doubling input size results in doubling time).

Check for common patterns: For example, if the time doubles when the input size doubles, it's often an indication of a logarithmic or linearithmic growth.

Justify your conclusion: Provide reasoning, showing how the observed growth aligns with a known complexity class. This could involve reasoning about how doubling input size changes execution time.

For Part (b): When analyzing the code:

Break down each loop: Identify how many times each loop runs, and how they are nested.

Consider the number of iterations for each loop: For instance, if the outer loop runs n times and the inner loops run based on i and j, calculate the total number of iterations for all loops combined.

Simplify: Look for patterns like sums of arithmetic sequences or known formulas (e.g., the sum of the first n integers) to derive the overall complexity.

State the final complexity: After breaking down the loops and calculating the total number of operations, express the final time complexity in Big-O notation.

__Example of a Robust Answer__

Part (a):
Observation: The time for input size 1000 is 473 ms, and it increases as the input size increases. The time for input size 2000 is 1040 ms, roughly double the time for 1000. As we continue, the ratio stays roughly around 2.

Conclusion: The time complexity is O(n log n), as this pattern suggests that the algorithm’s run-time increases logarithmically with a factor of n. The doubling of input size leads to a growth in time similar to n log n.

In simple words, saying that the time complexity is O(n log n) means that as the input size (n) increases, the time taken by the algorithm grows a little faster than linear (O(n)) but much slower than quadratic (O(n²)).

The "n" part means that the time increases proportionally with the input size. If you double n, the time will roughly double.

The "log n" part means that as n grows, the extra time needed increases slower and slower (logarithmically). This happens in algorithms that repeatedly divide a problem into smaller parts (like merge sort or quicksort).

💡 Key takeaway:
If you double the input size, the time doesn’t exactly double—it grows a bit more than that, but not as fast as if it were O(n²). This makes O(n log n) more efficient than quadratic algorithms for large inputs.

Part (b):

Outer while loop: Runs n times, as i goes from 0 to n-1.
Inner for loop: Runs i times for each value of i, where i ranges from 0 to n-1.
Innermost while loop: Runs j times for each value of j, where j ranges from 0 to i-1.
Total Iterations: The total number of operations is the sum of iterations for the innermost loop, which is a sum of squares

By answering this way, you're demonstrating your ability to:

Identify patterns in empirical data (Part a).

Carefully analyze code to break down and calculate its time complexity (Part b).

In summary, this question tests both theoretical and practical knowledge of time complexity, and by solving it, you’ll deepen your understanding of analyzing algorithms in different contexts.

```java

//Single Loop O(n) runs in constant time
for (i = 0; i < n; i++)

// Two Nested Loops O(n²) runs in quadratic time
for (i = 0; i < n; i++)
for (j = 0; j < n; j++)

//Three Nested Loops O(n³) runs in cubic time
for (i = 0; i < n; i++)
for (j = 0; j < n; j++)
for (k = 0; k < n; k++)

// Logarithmic Loop - if doubles O(log n)
for (i = 1; i < n; i *= 2)

public void example1(int n) {
    for (int i = 1; i <= n; i *= 2) { // Loop runs from 1 to n, doubling each time
        System.out.println(i);
    }
}

// In the algorithm the loop which runs from 1 to n-iterations, doubling each time. 
// Therfore the BigO notation O(log n). 


// Nested Log Loop O(log n squared )
public void example5(int n) {
    for (int i = 0; i < n; i++) { // inner loop iterates n times
        for (int j = 0; j < n/2; j++) { //outer loops iterates half of n 
            System.out.println(i + " " + j);
        }
    }
}

// In Big-O notation, we drop constants, so O(n/2) simplifies to O(n), 
// so we still get the BigO notation as O(log n squared) as 2 loops are run


// Nested Log Loop O(n log n)
for (i = 1; i < n; i *= 2)
for (j = 1; j < i; j++)

// Recursive could be O (log n) or O(n) - if there are 2 recursive calls
public int recursiveExample(int n) {
    if (n <= 1) {
        return 1;
    } else {
        return recursiveExample(n / 2) + recursiveExample(n / 2) + n;
    }
}

//As the algorithm runs recursively the BigO notation is O(n)
//Why Not O(log n)?
//O(log n) happens when there's only ONE recursive call per level (e.g., T(n/2) + O(1)).
//But here, we have TWO recursive calls at each step, leading to O(n) total work.

```

__10 PRACTICE QUESTIONS__

```java
public void example1(int n) {
    for (int i = 1; i <= n; i++) {     // Outer loop runs from 1 to n (n iterations)
        for (int j = 1; j <= i; j++) { // Inner loop runs from 1 to i
            System.out.println(i + " " + j);
        }
    }
}
```

The algorithm performs 2 nested loops
Each loop runs n time, iterating over i and j
This results in n*n = n square operations leading to a quadratic growth in operations, time complexity is O(n squared).

```java
public void example2(int n) {
    for (int i = 0; i < n; i++) { 
        for (int j = 0; j < n; j++) { 
            for (int k = 0; k < n; k++) { 
                System.out.println(i + " " + j + " " + k);
            }
        }
    }
}
```

The algorithm performs three nested loops.
Each loop runs n times: the outer loop iterates over i, the middle over j, and the inner over k.
For each combination of i, j, and k, a print statement is executed.
This results in a total of n × n × n = n³ operations, giving the algorithm a time complexity of O(n³)

```java
public void example3(int n) {
    int i = 1;
    while (i < n) {
        i = i * 2;
        System.out.println(i);
    }
}
```

The BigO notation is O(log n) as the loop runs if i is less than n but i doubles with every loop.

```java
public void example4(int n) {
    for (int i = 1; i < n; i *= 2) { // inner loop 
        for (int j = 0; j < i; j++) { // outer loop runs O(log n) if j is less than i 
            System.out.println(i + " " + j);
        }
    }
}
```

ANSWER
Outer loop: O(log n)
Total work done by inner loop: O(n)
Since O(n) dominates O(log n) in multiplication, BigO notation is O(n)

```java
public void example5(int n) {
    for (int i = 0; i < n; i++) { // inner loop iterates n times
        for (int j = 0; j < n/2; j++) { //outer loops iterates half of n 
            System.out.println(i + " " + j);
        }
    }
}
```

The BigO notation is O(log n squared) In Big-O notation, we drop constants, so O(n/2) simplifies to O(n), so we still get the BigO notation as O(log n squared) as 2 loops are run


```java
public void example7(int n) {
    for (int i = 0; i < n; i++) { //inner loop runs n times
        for (int j = i + 1; j < n; j++) { // outer loop runs iterating if j is less than n
            System.out.println(i + " " + j);
        }
    }
}
```

BigO notation is O(n squared)

```java
public int recursiveExample(int n) {
    if (n <= 1) {
        return 1;
    } else {
        return recursiveExample(n / 2) + recursiveExample(n / 2) + n;
    }
}
```

As the algorithm runs recursively the BigO notation is O(n)

Why Not O(log n)?
O(log n) happens when there's only ONE recursive call per level (e.g., T(n/2) + O(1)).
But here, we have TWO recursive calls at each step, leading to O(n) total work.

__Logarithmic growth vs Linear Growth__

Linear growth: If the time grows linearly, like in `𝑂(𝑛 squared)` each time the input size doubles, the time taken doubles too.
Logarithmic growth: In `𝑂(log 𝑛)` as the input size doubles, the time increases very slowly.

Logarithmic growth is super efficient because the increase in time or work is very slow compared to the growth of the input size. That's why algorithms with O(log n) time complexity (like binary search) are much faster than algorithms with O(n) or O(n²) time complexities, especially when dealing with large inputs.
