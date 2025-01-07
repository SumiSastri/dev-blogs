<!-- ---
layout: default
title: Memory management - key alogrithms
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# Memory management - key alogrithms

Allows bare sharing of the CPU based on given processes running. The algos are based on a single CPU not on multicore - this can be mapped to multicore using load balancing so that you can assign values to separate qs and randomise allocation of jobs to the processes based on how busy they are and other priority factors you can add on NICE is used to give access to the CPU.

If it is a kernel - high priority, user based lower value. The NICE value changes as a process sits in the q, increases selfish round robin - priority of jobs waiting in the new q so that they get accepted and run on the system

A process is dynamic depending on where it sits on the system - does not remain on a particualr site on the memory map, it can be moved based on the OS requirements. It can be allcoated and deallocated and moved. Deals with the image of the process when there is an OS, we ensure that we map our memory structures to the physcial structures - ie the RAM - a mechanism to protect process, sharing multiple instances of process running, so image of process needs to be shared when a process is created memory needs to be allocated according to page structure

Pages are swapped to and from the disc. A process called thrashing. A frame is a block of physical memory but a frame is virtual memory. There are 1-2-1 mapping of pages and frames.

Page frames need to have limited wastage of memory. 50% of wasteage of space allocation happens 0 small processes can't just create smaller paging  internal fragmentation happens.

Swap pages in and out easily because 121 mapping.

protection is hard to do - sticky bit to one change???
Swap space on hard drive - swap places in and out of memory - more time spent on thrashing rather than executing the program.

__Memory map tables__ 

It is a table that maps virtual pages to the physical frames - they are of the same size so this is used by the operating system to map where the process will be. The user will only see page addresses but they never see the frame addresses.

If a page is in memory, the table extracts the the information and map the info based on the offset. If it is on the hard drive a page fault is created then the page is swapped from the swap space in the hard drive into the RAM space. Then the disc is updated and all the data structures updated with info for the new page. All of this is done dynamically.

RAM increased - reduces the amount of swap space on the hard drive - when buying a computer higher the RAM better the performance.

Mapping pages of a fixed size - which pages are occupied and used and which are free for allocation.

A bit map is used to keep track of pages allocated. If it is allocated 1 and if not 0.

__Link lists__

Useful to order, remove elements, restructure and keep the nodes connected to each other - it is an extra layer of complication to code this.

Used for creating qs and scheduling for the dispatcher and mapping of memory

Why want this list - so that when you deallocate you free up memory space, you have adjacent frames to allocate to so that addressing will be easy, otherwise you will have to jump from one location to another for your memory

The physical memory is not searched but the location is searched so that you can see which process is removed what space is freed up to create more space for other processes to be executed

For C++ for some class definitions, created and methods to use so you don't need to worry - like the Vector classes ??? to allow you to create dynamic arrays, all the various are hidden so the list can expand and contract giving a dynamic array the ability to flex

A strut is a key word that allows you to identify a number of variables under one label - it is a precursor to class creation in Java

- strut - what you call it - eg: characters/ integers/ strings - you provide the fields or elements to your struts

- It is a definition that does not exist in memory. You use your definition of a strut to create it you used the definition of the strut to create the variable that has the same structure of your data that you load on memroy

It was the precursor to objects (C) it was the start of creating a class definition - variables + plus methods in a class are just a definition, then you create an object, you use your class as a blue print to create objects, it is the objects that are stored in memory, while the class is only a definition of how you want the object to be shaped and used. 

Data structure of the link list - you can order and remove and keep the nodes all connected to each other
Label 2 values and a pointer that point to the next value
Definition - H or P/ Hole or process 1st is character H P occupied
Base address - second field
Length - number of blocks used - number
Pointer to the next node - x is the pointer

There are 2 lists  the occupied and freed list
Addresses are redirected from the used to the other - swap the spaces in the nodes

Address look up is a high overhead so link lists help to avoid address look up by linking the lists.

Addresses are not looked up but redirected - makes life easier to manage.

EXAM - IDENTIFY
__Memory scheduling allocation alogrithms__

- First fit - where the first space availble is used to store data, this is fast but may not be efficient, cluster of tiny blocks in the front
- Next fit - where the allocation continues where the last allocation spot was determined and the next first fit found
- Best fit - all available space in memory is searched and the closest match in terms of available space is found - while this looks like the best option, best fit is slow and leaves small fragments of unused memory space that have to be cleaned up by softwared packages like garbage collectors or defragmenters
- Worst fit - like best fit, a complete scan of memory space is run and then the largest available space is used, this may look like a bad option but what it allows for is many processes to run uninterupted, it is also slow as all the space is searched
- Quick fit - algorithms checking quickly for the best fit option allows for speed while minimising the amount of memory fragmentation, maintains 2 lists of common sizes and is sorted by sizes

Garbage collection - all the small blocks are put together and resused
If you can not allocate you can reallocate processes and create a space or merge 2 blocks of adjacent free spaces - compaction. compaction is expensive and difficult

If there is no space to allocate then the memory is found on the hard drive. Hard drive may run out of space so it has to be defragged. 

All of these fit algos have the same problem, at some time you are going to run out of space and have all sorts of wasted fragments of unused space.

__Buddy system and the binary search tree__
Fast but inefficient utilitsation of memroy - suffers from internal fragmentation - wasted internal blocks

Page-frame allocation algorithms include:- 

- FIFO first in, first out
- LRU least recently used
- NFU not frequently used
- FIFO first in, first out

Resource management memory allocation alogrithms manage resource deadlock and are also referred to as the bankers alogrithm.

#### EXTERNAL REFERENCES - How computers process data

__Paging algorithms__

- FIFO first in, first out
- LRU least recently used
- NFU not frequently used
- FIFO first in, first out



## Process deadlocks and deadlock management



## An overview of the calculations behind the algorithms


<!-- Unary 1 - base one

Time stamp: around 50-56 mins

Binary 2 - base 2, range is 0-1


Octal - base 8, is used because binary is difficult to read. Range 0-7 ideal to define permissions as only 9 options required.

In binary 100 is read-only/ 110 is read-write/ 111 is read-write-execute. Converting this to an octal. R/W/X are the alphabets representing these 4-read / 6-read-write/ 7 read-write-execute (0777, 0700) self-group-others/ self yes-group-others no/chmod 0777/ 0700/ chmod 0600

Check ls -l 7 (all have read/write/execute)
0600 (4,2, 1) read and write
0400 - read only 4 in base 8 read only
0700 - r/w/execute base 8 (421)
0100 - read only

1.11.27
Hexadecimal - base 16 which is 0-9 and??

Decimal - base 10, 10 to the power of 0 is 1, 10 to the power of 2 is 10 multiplied by 10 is 100, thousand is 10 to the power of 3. Base ten 0-9 is the range

cd on its own goes into home directory
man tar - manual  

## What is stack and heap memory and how do they work

Size of the stack is small megabytes or less - very limited space

- LIFO last in first out
- Stack is like a pile of data (dishes)
- Data is added serially
- Stack pointer points to the last peice of data on the top of the stack
- Accessing element is the last one added
- Stack data is popped and the stack pointer is updated to the next data set

## Heap memory is larger 100s of megabytes

- Random and dynamic way of allocating data
- Data is allocated based on the available data where and when there is space
- Random way of accessing and removing the data
- Small gaps in the heap garbage will defrag if possible and clean up the mess
- Data storage and access is fragmented and slow

-->



## Software analysis and processing

The key steps in the analysis and synthesis of code by programmers provided by Charalambous are:

__Code packaging or code creation__

 A high-level language can be written in an integrated development environment (IDE) or a text editor. IDEs come with runtime overheads but save time as they can perform many pre-compiling tasks and debug code before it has run. Syntax is to be adhered to, for example, keywords of the language have to be used correctly, symbols and puncutation like semicolons and colons used in the way described by the code manuals, tabs and parenthesis/ curly braces or square brackets used so that the code can be compiled using BNF, a semi-mathematical way of parsing or reading source code. Code is packages into bundles that send messages to each other via a process called state-management. State management, refers to the data lifecycle management process, where  data that is created is initialised and stored, retrieved and updated and then removed from the processing queue to release memory space and allocation for other processing jobs in the program.

__Pre-compiling or pre-processing__

Pre-processors produce inputs for compilers dealing with several processing tasks like lexical analysis, character streaming, macro processing, file inclusion are executed. [11] This analysis and synthesis of code becomes an input for code interpretation for interpreters or code compiling for compilers. Tutorials Point, an online software programming academy, has a detailed phase-by-phase walk through of the process of compiling.

__Code interpretation__

A code interpreter, works as part of the code compiling process, translating software programming languages into target machine langauges - byte code. Compilers scan through the whole source code creating tokens, checking language syntax and creating an executable object for the target machine it will be run on.

An interpreter will read code line-by-line, translate it into byte code, creating an executable and then processes the next statement on a first-in-first-out basis (FIFO). Code stops running when an interpreter finds an error - a runtime error. While a compiler will pass through all the errors providing errors at the end - compile-time errors which need to be remedied, error-by-error after the code has been checked, run and failed.

__Code compiling__

This is where the lexical analysis in BNF is done to scan streams of characters, discard white spaces and comments, linting and tokenization of characters to form a single unit by the source language, while this code is running errors are handled. Code is run to check for errors and compiletime errors are caught and fixed.

Compiling code, includes debugging and code optimisation processes, where syntax is analysed again looking for clauses and sentences according to the grammar rules set by the language and accepting the syntax tree or creating it if it has not been created at the pre-compile stage.

Code is then chunked and bundled together to be processed in streams. This is the point where code blocks are tokenized, serving as flags that identifies the structure of the code for the symbol table entry.

__Symbol tables__

Once data is chunked and tokenised, the next stage is when symbol tables are used to resolve issues, relative addresses of variables are generated, and the code is prepared for assembly. A symbol table is a list of variables, loop structures, identify the positions of the data when they get stored in memory.

Symbol tables could be structured in a linear list format, a hash table or a binary search tree. They allocate space on the target machines register, almost like a reservation process. This ensures the block of code has a free register and the resources in that block of code can be linked and loaded when ready for that process to start.

On the table, the status of linking and loading is identified. The virtual address provided is associated with the information that the process is waiting for the linker or loader to use the resource from the virtual address that it has reserved in advance on the table.

Tokenisation and allocating tokens to virtual addresses in memory, help with masking the real address of the data on the target machine making it more difficult for malicious actors to access program data.

Tables tokenise words, words are mapped on to a page, pages are mapped to a fixed size called a frame. The symbol table deals with data at the word tokenisation level, ensuring BNF syntactical structures and programming structures are met - it can not generate the logic, which is what is written by the programmer at the code packaging and code creation stage. A symbol table assumes the logic is correct and checks the language and syntactical structure of the tokenised version of the language.

The scope of variable and functions is checked and mapped using BNF creating structures that will be used to create the abstract syntax tree. For example, the convention is that an underscore is for system based variables. File names are an example of the use of the underscore, as are some defined types of the system.

Checking and matching is executed based on what the language syntax allowed, any syntax that is not allowed throws an error. Scanning checks left to right and right to left - mapping the matching of brackets and other syntactical checkpoints. IDE's help catch these errors early and allows the compilers to do more of the heavy lifting in tracing and finding errors.

__The AST or abstract syntax tree__

The compilation process is time consuming and expensive and is often done by compilers when you run your program - javac is a compiler for Java, while Babel, Vite and webpack are compilers for JavaScript.

Compilers all perform the same steps with different languages. Once the syntax is verified and a symbol table created, compilers will create an AST, or an abstract syntax tree, for the target machine.

__Linkers and linking__

A linker is a software program, that helps in the programming process of linking and merging various object files together to make a file executable on a target machine.

The linkers search and locate code modules, program routines in a code package and determine the memory location where these code blocks will be stored. It provides the absolute path, or reference for the storage unit allocated in memory.

It links libraries that the code package may use and resolves any link errors.

__Loaders and loading__

Memory allocation uses alogrithms to match the use case. Last in first out (LIFO) is used for memory that is on the stack, while other allocation algorithms are used for solving resource deadlocks and referencing data on the memory heap.

Loading happens on the operating systems (OS) of target machines. Loaders initialise memory registers by calculating the size of the process in the executable files. The process is a combination of data and instructions to read, store or modify the data.

The link tables are read and the struts (structures) of languages reviewed before the program is loaded on to registers. This done via code assembly.

__Assemblers and code assembly__

At the assembly stage code is boiled down to intermediate code.

Assemblers are complex programming code packages, that are progammed by engineers who check assembly program components, operation code, operators and operands, taking data off the register and reserving memory on chips based on memory directives like block 256, the next level of chip design.

It gives binary representation of other data formats converting hexadecimals or octals into binary, code is verbose and hard to write at the assembly stage. Some of this code can be machine generated, but some of the code has to be designed and programmed by highly skilled engineers and mathematicians who use mathematical alogrithms to solve the memory allocation challenges presented at this stage of the code compilation process.

There is a 1-to-1 mapping of this code to the instruction code required for the CPU to process. Assembly code targets the hardware of the OS of the target machine. Assemblers are used for input-output management of large systems and other embedded systems. An assembler in an embedded system has its own chip, memory, RAM and is a complete and contained computing system.

Lower level languages like C and C++ are better for embedded systems. Embedded processors are found in mobile phones, they can be both simple and cost effective. These chips can be programmed for simple activities in smart machines like home thermostats and other chip-based home-use kits.

__Instruction transfer to registers__

Once the link tables are used to link data to the program running the instructions for state management, the data is loaded on to memory registers on the hardware that the program will run on.

Because software development has grown exponentially from the 1990s to the 2020s, in 30 years there have been new ways to manage the process by which software developers create shippable software programs that can be utilised by end-users.
