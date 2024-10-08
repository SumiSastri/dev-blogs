<!-- 
layout: default
title: How data is stored and retreived?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Feb 2024
---
 -->


# How data is stored and retreived?

Once data has been created in a program, it needs to be allocated to memory in a computer or in a cloud-based storage system.

All programming languages therefore have a storage type called a variable. The variable stores the data for future usage.

If the data is unlikely to change the variable holds immutable - or data that does not change. 

If the data is likely to change - for example, if a name is spelt incorrectly and needs to be changed or updated, then this data must have mutability - or the ability of a programmer to change its initial state.

To differentiate between these variables, JavaScript has two types of variables the `let` variable and the `const` variable. The `let` variable allows the data to be mutated or changed, while the `const` holds a constant state of data - or data that is immutable and does not change.

Java, Python, C and other programming languages will have their own key words that define a variable, and ways of mutating the initialised data. 

Once data has been created, initialised and stored, this data must be retrieved. Different programming languages have different methods to retrieve data.

## What is a code interpretor?

A host of compilers and interpreters - called runners - make trips between the data that is stored in memory back to the user who wants to access this data.

The compilers bundle code into chunks and reduce them back into byte code, or computer code that machines understand.

Interpreters then take the data store it in memory and retrieve it based on programmatic commands.

An American mathematician of Hungarian descent, John von Neumann, described the data-life-cycle as an Instruction Cycle. 

This instruction cycle, also known as the von Neumann cycle, or the von Neumann architecture, describes the cycle by which data is created, decoded and stored, fetched from storage, decoded once again and executed.

Data is created in a computer program, or a peice of software and stored in a file.

This file is sent via the computer's input driver to the processor, the central processing unit or CPU. The data is temporarily stored in registers in sequential order of their arrival into the processor. The data is processed on a first in first out basis. 

Arithmetical processes are directed the ALU, or the Arithmetic Logic Unit or the Control Unit (CU).

Once the data is processed it is sent to the primary memory and if required the RAM (random access memory).

When it is retrieved by user and sent back to the user via the output driver in the computer.

This basic architecture still remains the foundation upon which data architectures are built.

In architectural terms, von Neumann recommended the separation of the input/output (I/O) drivers from the data-processing operations.

This allows the processor to do the job it is supposed to do more efficiently. The transport of data to the I/O drivers is handled by interpreters or runnings. The storage of data is managed by the memory units.

In the von Neumann architecture, once the data is processed, the memory stores both the data and processing instructions which can be retrieved and shipped to the output driver.

Within the processor, the processing functions are further separated into the ALU and CU. This allows the data to be processed in two streams - arithmetical logic or conditional logic and algorithms used in programming logic.

Further reading:

https://www.learncomputerscienceonline.com/von-neumann-architecture/


https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code



## What is code compiling?

## What is code transpiling?

Transpiling is a further process once code has been compiled to re-compiling the code from one language or code format into another code format or language. You can think of it as a translation service of one code format to another.

When Byte code is compiled down to machine readable code, for example, a process of compiling and transpiling is taking place.

Compilation from source code and transpilation into machine readable code.

## What is code bundling?

Code bundlers automate certain processes required for the code to be interpreted by code interpretors.

Some of the functions the bundlers under take are 
- to standardise code 
- clean up traceable errors
- handle any expensive and inefficient tasks reducing the compute load on hardware

- split and chunk code into smaller, more easily loadable parcels containing - code, images and other assets - bundlers must have the ability to bundle different modules/ packages/ code together efficiently

- trace code back to the source files and providing source maps - this helps in the development environment with root-cause analysis and debugging

- extend basic functionality through plugins

- bundle code for development, integration and production environments - in development source-code mapping is more important while in production minification and concatenation are more important. Minification is the process which a code bundler removes all white spaces, as well as unecessary code to make the file size smaller/lighter and more performant. Concatenation is the process where one or more files are combined together once again to make the code more performant

## What is code patching?

## What is the difference between interpreting, compiling, transpiling and bundling?

## What is a code package?

## What is code package management?
Code package management is a part of maintaining your code base and ensuring code packages used are updated on a regular basis.

When code packages are updated, they may or may not be backwards compatible and may generate breaking changes.

These changes have to be managed to ensure code failures are stopped before they are published or released.

Code in the packages a developer writes will have to be rewritten to the new syntax and norms of the new version of the upgraded package.

Often, packages that are out of date offer no long-term support and issues that you face will not be addressed by the package publisher.

This constant updating of packages with new features takes a significant amount of time for developers but is a core part of writing and maintaining code bases.

