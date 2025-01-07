- RAM memory - 3 separate blocks of memory i/o/e
- CLI - helps you redirect file streams
On shell > redirection symbol redirect to out1 - pipes it from the screen to a file

Bash is a way to see how the processes work

- When you use the cd command the stack pointer traverses through the folder structure and locates your file
- dot/ 2 dot files - dot current file/ 2 dots 2 levels above
- cd and the dots and forward slashes show you the path the stack pointer is taking you to traverse through your folder structure
- the tilda takes you straight back to the home directory - it is like an exit command

Binary
01 - base 2
Octals -8 bits or 1 byte - base -18
Hexadecimal - digita 1-9 and letters a-f - base 16
Base 32
Base 64
Not yet at 128 bit machine

So in the case of Bash Scripts - when write chmod + rwe the letters in Hexadecimals need to be converted to Octals and then into binary

Why?
Everything needs to get converted back to binary for memory management
421
100

Reads octals left to right and binary right to left
Multiply
4x1 + 0 + 0 = 4
Because it is octal and only 3 places you pad left
0400 is 100 in binary

If you provide 0444 then you give everyone permission to read
421
110
4+2+0 is 06 so 0666 gives everyone read/ write permission

421
111
4+2+1 is 7
07 in octals and 0777 you are giving everyone permission to read/write and execute

What is checksum or the cyclical redundancy check using Modulus - checks if odd or even in cycles
Till you get to 0 to ensure that the file can be run

<https://www.simplilearn.com/tutorials/networking-tutorial/what-is-cyclic-redundancy-check>

Polynomials
<https://www.cuemath.com/algebra/polynomials/>

Scheduling algos

- Single CPU
- Extended to be mapped to multiple architectures for load balancing
- Randomisation of allocation of jobs of the processes
- Priority factors to add

BNF _ Backus Naur Form

Source code is written so that it can be parsed by the semi-mathematical BNF system in compilers and interpreters
Eg:
For loop
For - key word use
scope of variable - limited to running of forloop and it has to be removed so that you can not use the index of the loop outside the scope of its lifetime

__Stackframe structure__

- Stack structure of the system - place values one on top of the other
- Recursive programming - Can't evaluate the first function call - build the stack structure recursively
- Not efficient - an important structure used for the runtime stack
- Process or program is stored in memory in RAM
- Image of process - program is live is called a process with instruction code all the way to the top of the stack
- Loads libraries at the top of the stack
- Kernel based libraries - does i/o process will switch from user mode to kernel mode and run the kernel

- You have 2 main structures - the kernel and the program you are running
- When the program runs it grows the stack and become part of the structure
- Function is the location of code in memory
- Params are stored on the stack frame as value type
- Objects and complex data stored as addresses/ or reference types
- Main program runs and data is pushed on the stack
- The stack pointer points to the top of the stack
- Function call pushes the function and the stack pointer moves depending on the size - called a stack frame
- Data value type is "Popped" off the stack frame once the program run
- Garbage collector cleans up the heap where reference data is stored
- Stack pointer can grow or shrink depending on the number of functions and the efficiency of the code written
- Exit code function 1 valuated first and data popped or removed form stack and shifts to the next structure or frame

- Runtime stack - uses the structure to evaluate what is on the stack and how to process it
- Compiletime stack (?)
- The data is not removed from the it is "popped" and moved into a memory register for the process to continue via a bus to the CPU
- It is popped when the conditions of the function written are met, else an error is thrown
- Functions were developed much later in software programming history
- Assemblers did not have functions but go-to statements where the code moves to and the conditions are executed - the old way of writing a function that calls itself - this is a recursive functions
- Now a function is an address with params that are used within the function rather than on the assembler


- Apparent and true concurrency
- Load a new process, previous process is saved on PCB before you can do the next
- Overlap creates a delay
