<!-- 
layout: default
title: How data is stored and retreived?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Feb 2024
---
 -->


# How data is stored and retreived?

Once data has been created or initialised in a program, it needs to be stored for future state modifications.

All programming languages therefore have a storage type called a variable. The variable is allocated to memory for future use.

State holds immutable data if data that does not change. Variables on initialisation are immutable.

If the data is likely to change - for example, if a name is spelt incorrectly and needs to be changed or updated, then this data must have mutability - or the ability of a programmer to change its initial state.

To differentiate between these variables, JavaScript has two types of variables the `let` variable and the `const` variable. The `let` variable allows the data to be mutated or changed, while the `const` holds a constant state of data. [Read more on variables in JavaScript](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75) in this article by Elliot, on the Medium blogsite.


Not all programming languages allow data to mutate. Such data is also considered static, versus dynamic data that could frequently change.

Java, Python, C and other programming languages will have their own key words that define a variable, and ways of mutating the initialised data. As Francesco Tusa, in his "Introduction to the Java Language", states, "Using variables is a way to reserve specific areas of the memory and make them accessible throughout the execution of a program."

Once data has been created, initialised and stored, this data must be retrieved.  Different programming languages have different methods to retrieve data.

## What is a code interpretor?

In the [first article](https://sumisastri.github.io/dev-blogs/computer-code/part1-programming-vs-machine-code/) in this series, we looked at how source code is compiled and translated into machine readable code.

Depending on the source code, each programming language will have its own syntax and code interpreters.

Code blocks use the key words and symbols that are interpreted by interpretors to execute the code block.

Data is created in a computer program, or a peice of software and stored in a file. The first peice of information that an interpreter looks at is the file extension to read or parse the file correctly.

The next set of information that the interpreter looks at is the code entry point. In the case of the Java language, Tusa points out the `class` key word provides the program it is running with a prototype of the code block.

The code block is contained at the beginning and the end by curly braces `{}` and the set of instructions or the code block is written within this block for exection.

Within the code block, the interpreter then looks at the data type and the conditional programming statements.

The instructions are then executed successfully, if the execution is unsucessful an error is recorded.

The code actually is executed in the Java Virtual Machine (JVM).

This process of interpretation differs from language to language. As the syntax and structure of programming languages differ, interpreters are also packages of software that are encoded to meet these differing needs.

The basic function of an intepreter is to read code and catch errors early before the code is compiled by a compiler.

## What is code compiling?

As a software package may require several lines of code to be interpreted and executed, the role of the compiler is to take these data chunks and compile them in the order they need to be executed in.

A code compiler takes information from the interpreter like peices of a jigsaw to put the bigger picture together. In this case all the features of the code that enable the package to deliver the end user the service required.

## What is code transpiling?

Transpiling is a further process once code has been compiled to re-compiling the code from one language or code format into another code format or language. You can think of it as a translation service of one code format to another.

When Byte code is compiled down to machine readable code, for example, a process of compiling and transpiling is taking place.

Compilation from source code and transpilation into machine readable code.

 Most code compilers now are also transpilers, but these compilers are language specific. While Tusa, also shares the view that the lines between interpreters and compilers are blurring, he refers to a Java software environment. 
 
 JavaScript, has a completely different language syntax and structure. Reading [the tutorial by Digital Ocean](https://scotch.io/tutorials/javascript-transpilers-what-they-are-why-we-need-them#:~:text=Transpilers%2C%20or%20source%2Dto%2D,are%20said%20to%20target%20JavaScript.)"JavaScript Transpilers: What they are and why we need them", you will witness for yourself the differences in the language and structure.

 The idea behind selecting these 2 articles is not to provide the reader with an indepth view of how Java and JavaScript are syntactically different, but simply to demonstrate that they are.

## What is code bundling?

Code bundlers automate certain processes required for the code to be interpreted by code interpretors.

Some of the functions the bundlers under take are 
- to standardise code 
- clean up traceable errors
- handle any expensive and inefficient tasks reducing the compute load on hardware
- split and chunk code into smaller, more easily loadable parcels containing - code, images and other assets - bundlers must have the ability to bundle different modules/ packages/ code together efficiently
- trace code back to the source files and providing source maps - this helps in the development environment with root-cause analysis and debugging
- extend basic functionality through plugins
- bundle code for development, integration and production environments.  In the development environment source-code mapping is more important while in the production environment minification and concatenation are more important. 

Minification is the process which a code bundler removes all white spaces, as well as unecessary code to make the file size smaller/lighter and more performant. Concatenation is the process where one or more files are combined together once again to make the code more performant.

Multiple code interpreters, compilers, transpilers and bundlers are used in the development process. It is not always possible to know the features or functionality of each of these peices of software.

Software developers rely on compilers and interpretors to do the heavy lifting when it comes to boiling down code to its most efficient format for storage in a processor.


## What is a code package?

## What is code package management?
Code package management is a part of maintaining your code base and ensuring code packages used are updated on a regular basis.

When code packages are updated, they may or may not be backwards compatible and may generate breaking changes.

These changes have to be managed to ensure code failures are stopped before they are published or released.

Code in the packages a developer writes will have to be rewritten to the new syntax and norms of the new version of the upgraded package.

Often, packages that are out of date offer no long-term support and issues that you face will not be addressed by the package publisher.

This constant updating of packages with new features takes a significant amount of time for developers but is a core part of writing and maintaining code bases. 


## What is code patching?


#### EXTERNAL REFERENCES

- [1] __Think Object Oriented__, "Introduction to the Java Language", Tusa, Francesco (Accessed: Oct. 6), 2024, [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-the-java-language)

- [2] __Think Object Oriented__, "Introduction to Computer Programs: Bytecode and Machine Code", Tusa, Francesco (Accessed: Oct. 6, 2024)[Available](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code)

- [3] __Medium__ "JavaScript ES6+: var, let, or const?" Elliot, Eric (Accessed: Oct. 8, 2024) [Available](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75)


[the tutorial by Digital Ocean](https://scotch.io/tutorials/javascript-transpilers-what-they-are-why-we-need-them#:~:text=Transpilers%2C%20or%20source%2Dto%2D,are%20said%20to%20target%20JavaScript.)

Interpreters then take the data store it in memory and retrieve it based on programmatic commands.

An American mathematician of Hungarian descent, John von Neumann, described the data-life-cycle as an Instruction Cycle. 

This instruction cycle, also known as the von Neumann cycle, or the von Neumann architecture, describes the cycle by which data is created, decoded and stored, fetched from storage, decoded once again and executed.



This file is sent via the computer's input driver to the processor, the central processing unit or CPU. The data is temporarily stored in registers in sequential order of their arrival into the processor. The data is processed on a first in first out basis. 

Arithmetical processes are directed the ALU, or the Arithmetic Logic Unit or the Control Unit (CU).

Once the data is processed it is sent to the primary memory and if required the RAM (random access memory).

When it is retrieved by user and sent back to the user via the output driver in the computer.

This basic architecture still remains the foundation upon which data architectures are built.

In architectural terms, von Neumann recommended the separation of the input/output (I/O) drivers from the data-processing operations.

This allows the processor to do the job it is supposed to do more efficiently. The transport of data to the I/O drivers is handled by interpreters or runnings. The storage of data is managed by the memory units.

In the von Neumann architecture, once the data is processed, the memory stores both the data and processing instructions which can be retrieved and shipped to the output driver.

Within the processor, the processing functions are further separated into the ALU and CU. This allows the data to be processed in two streams - arithmetical logic or conditional logic and algorithms used in programming logic.