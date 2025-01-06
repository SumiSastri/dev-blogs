---
layout: default
parent: History of the Web
nav_order: 3
title: A history of software development as an adjunct to hardware development
---


# A history of software development as an adjunct to hardware development

While the first computers of the mid-20th century all had elements of software development with computer code and algorithms that solved complex problems, the development of software initially was more of an adjunct to developing computer hardware.

Software programs were rigid and akin to scripting languages like Bash.[1] Programs were written in binary for mainframe computers to be stored in memory, started and stopped.

Coding was rudimentary and the first programming languages like Fortran and Lisp emerged in the 1950s, shortly followed by Pascal, C, Ada and Fortran emerged as a need to overcome the "software crisis" [2]. In the 1970s, some precursors to the web were the emergence of word processing software [2], with Microsoft's Word becoming a dominant player.

In the 1980s, IBM emerged as an important player introducing personal computers and increasing the demand for software like Word and graphical user interfaces (GUIs). Object-oriented programming became popular, modifying procedures from procedural or functional programming to make software packages more efficient and extensible.

Right up to the 1990s, software development projects were costly, not only exceeding time and budgets, but also there were dangers of physical safety with machines overheating causing dangers to property and human life. Software was not designed to manage memory and resources that caused the heating of processors. Poor software design allowed hackers to steal information.

Early software was often designed by women, with hardware design seen as the domain of men[3]. The rise of the internet in the 1990s led to the development of early software packages.

Margaret Hamilton[4], the American abstract mathematician and software developer, who worked on the Apollo project, at the Michigan Institute of Technology (MIT), is credited for coining the term software engineer[5]. During the project, she developed systems designs and process modelling to maximise software reliability and reuse. She is credited for establishing end-to-end testing techniques and software lifecycle management techniques.

## Language creation, cloud computing and program design into AI and machine learning

It was in the 1990s that the core of the modern software languages were written, Python in 1991, Java and JavaScript in 1995. Universities started offering computer science as a degree and Hamilton's early work on software lifecycle management and testing methods became established.

In the year 2000, methodologies like Agile, and Lean replaced the old extreme programming and waterfall models of software development. In tandem, cloud computing allowed developers to access virtualised resources resulting in faster deployment of software[6].

By 2010 with the rapid disruption of mobile phones and the miniaturisation of chips, software was developed not only for computers but for mobile applications[7]. Mobile app stores made it easier for developers to commercialise their software.

With near-field communication, embedded systems and programs written for these systems use languages more akin to early programming languages like C.

All this led to a proliferation of "big data" and the need to manage this with machine learning and in today's world, AI that builds models to allow computers to learn to pattern match and develop algorithms that are based on the underlying data.[8]

## What do software programming languages share with natural languages and how do they differ?

Given the initial need for computers to compute mathematical tasks, computer languages developed a language structure of their own - a small vocabulary, limited room for ambiguity in the instructions and the ability to logically flow through a binary - yes-no - lexical tree.

Computer languages use a context-free grammar called the Backus-Naur Form [BNF](9). Deriving from both algebra and natural languages, like English, computer languages use lexical structures derived from BNF. This was largely due to the fact that initial programming languages focused on solving mathematical challenges.

BNF uses numbers and symbols as a form of pattern matching rather than words and syllables. This lexical tree is parsed to validate its instructions. Lexical parsing uses recursion - or restating the base case problem statement over and over again until the solution is reached. The restatement narrows down the options till the base statement is proven correct.

This form of parsing uses the recursive algorithm which must eventually stop calling itself; otherwise, it will only stop when it has used up all of the available memory. Finally, the call runs out of road on the stack leading to “stack overflow".

## From simple assembly to complex packaging, bundling and compiling

Early languages, like Pascal, merely assembled code to be parsed and read and then executed in memory. In today's world, all of these are abstracted away from the end user.

Many processes outlined below were either missing or done manually.[10]

Higher-level languages are created in different phases to make syntactical analysis easier. The phases of how a computer programming language is created is related to the fact that high-level software programming language, need to be translated back into byte code that target machines and their operating systems can read and execute, Westminster University's George Charalambous says. Target machines could be computers, mainframes, smart, gaming or mobile devices. It is any machine that has a chip and needs to translate source code into byte code.

As software development has rapidly evolved in the last 50 years, compilers have played an important role in analysing and synthesing code before it reaches the target machine's memory allocation system. Earlier, programmers like Charalambous had to manually create an executable object, a standard processing image, for target machines to read. Memory in hardware is limited and the source code of high level languages need to be managed, he adds. The key steps pre-processing and compiling code, have changed with compilers taking on the tasks that programmers used to.

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

## What is  the software development cycle?

Using core concepts from the Hamilton model, the software development cycle is organised into the stages of

1. Requirements mapping
2. High-level design and architecture (may overlap with detailed design)
3. Detailed design and implementation (some overlap with the design phase in the detail of implementation and any adjustments to be made)
4. Testing
5. Release and maintenance

These may be executed one after the other - in what is known as the waterfall model, or iteratively in the Agile methodology.
The V model allows linear progression up and down the scale as well as at vertical nodes if required[10].

The aim of the software development cycle, which is constantly evolving is to release software as quickly, efficiently and accurately as possible because of the growing demand for software to solve problems in an abstract format and relieve the tedium of monotonous jobs and routines.

## What constitutes a software program?

A software package or program, today is a compiled or pre-compiled package of code blocks known as the source code. Source code is compiled into an object file and object files are linked with libraries to make the program run. This packaged file is executable and can be run on a computer, mobile application, gaming application or embedded system.

Source code can be written in one or several languages called the tech-stack. Code is constantly maintained and updated with packages labelled into major versions, minor updates and patches with a numbering system. For example, Word Word 14.90.2 describes 14 as the major update, 90 the minor updates and 2 as the patches.

Software, if it is not open-source allowing free access to the licence to use it, will describe terms of use.

Linux, is often used as the base for studying OS because the Linux OS is open source. Unix, Windows, Android and Apple all have their own commercial, closed source, software. This makes understanding their OS less transparent.

#### EXTERNAL REFERENCES - Software development an adjunct to hardware development

- [1] __Medium__ Accessed Dec 13, 2024 [Available](<https://medium.com/@tim.herden> ai-series-5-from-abacus-to-ai-a-brief-history-of-software-development-482d25903392)

- [2] __Liquid Search__ Accessed Dec 13, 2024 [Available](https://www.liquisearch.com/history_of_software_engineering/overview)

- [3] __Medium__ Accessed Dec 13, 2024 [Available](https://medium.com/@mitzijackson/history-of-software-development-from-punched-cards-to-artificial-intelligence-6dc779d1d784)

- [4] __Software testing stuff__ Accessed Dec 13, 2024 [Available](https://www.softwaretestingstuff.com/2007/09/brief-history-of-software-engineering.html)

- [5] __Wikipedia - Margaret Hamilton__ Accessed Dec 13, 2024 [Available](https://en.wikipedia.org/wiki/Margaret_Hamilton_software_engineer)

- [6] __Praxent__ Accessed Dec 13, 2024 [Available](https://praxent.com/blog/history-of-software-development-innovation)

- [7] __XRNord__ Accessed Dec 13, 2024 [Available](https://www.xrnord.com/post/the-history-of-software-development-from-early-days-to-modern-times)

- [8] __NandBox__ Accessed Dec 13, 2024 [Available](https://nandbox.com/the-history-of-software-development-over-70-years-of-innovation/)

- [9] __Ada computer science__ Accessed Dec 13, 2024 [Available](https://adacomputerscience.org/concepts/trans_bnf)

- [10]  George Charalambous (2024), __Software Development (1)__, PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5365890_1)

- [11]__Compiler design__ [Available](https://www.tutorialspoint.com/compiler_design/index.htm)
