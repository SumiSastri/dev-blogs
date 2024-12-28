---
layout: default
title: What is the difference between a programming language and machine code?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Oct 2024
---

# What is the difference between a programming language and machine code?

Programming languages are written by programmers for software packages for web, mobile and gaming applications.

These are examples of software code written in programming languages for different end users.

Computer code is code that is embedded in the hardware of an application, usually in the computer chip. A chip, as defined in the Just IT Hardware blog site, is "a miniature electronic circuit or integrated circuit".

Code in chips is written in binary (zeros and 1s) and is usually found in a "bin" folder of a computer, where bin is the shortened version of binary code.

It is the series of instructions in binary to machines and is also called machine code as chips are now in several electronic devices both in the industrial and consumer electronics markets.

Machine code provides the chip with instructions to execute external programs within the device's programming environment, also known as the local environment for programmers.

Without machine code computers and other hardware terminals are "dumb" or "functionless". They are only able to perform when programs are efficiently executed. Poorly performing programs lead to "buggy" end-user experiences. Debugging these programming errors is dependent on an understanding of the root cause of the bug - is the bug occurring in the software program or the interpreter in the chip?

Binary code is stored in "bits" - two components: zeros and 1s -representing the smallest unit of storage in memory.

The code that many software programmers create is not machine-readable.

This blog gives you a good insight into [the difference between code writing and machine-readable-code](https://www.makeuseof.com/tag/what-is-coding/).

## What is the difference between a byte and byte code?

A byte is an aggregation of bits - 8 bits to be precise. Each bite can store 256 different patterns of code. A byte is the next level up in units of storage used in a computer's memory.

For a more detailed description of the difference between a bit and a byte, [Stanford University has a table](https://web.stanford.edu/class/cs101/bits-bytes.html) and which shows the progression of data storage from a bit to a single byte to a terabyte - or 1 trillion bytes of storage, which many cloud storage service providers are now offering consumers.

Where bits are concerned, computer manufacturers have all upgraded to 64-bits from early computers that offered 8-bits.

Byte code is an intermediary machine code that converts data from bytes back to binary, or bits using a code compiler.

While this can be processed directly to an operating system (OS), be it Windows, Linux or the Mac (OS), byte code is OS-dependent. Therefore, Byte code written for one operating system is not the same as Byte code written for a different operating system. This means code is not portable or "interoperable".

To solve this problem, machines now have an intermediate level with the introduction of virtual machines (VMs). The VMs compile code that can be easily transported across different operating systems making the code portable and allows different OSs to "talk to each other".

[A good visual representation of this process can be found in this link](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code) from Francesco Tusa's "Introduction to Computer Programs: Bytecode and Machine Code".

## Why are programming languages considered "top-level" code?

Programming languages are considered top-level or "source" code - compiled back into Byte code and finally into machine code or binary.

Byte code is an intermediate-level code communicating to binary via a virtual machine (VM). Byte code converts data from programming languages into bytes and from bytes back to binary.

Binary or machine code is considered the base-level code for machines.

## What is the data flow from the source code to the last byte?

Hardware has the job of continuously dealing with data flows from source code and executing commands to make the programs work.

Code needs to be written efficiently to minimize the load on a computer processor, its memory and storage facilities.

Programming languages are therefore bundled into modules with reusable code. These modules now can be made available to other dependent code blocks.

Code modules are like modular frameworks. It is not unlike Ikea furniture modules that can be reused and reconfigured. Similarly, code writers bundle blocks of code into a module that can be reused. A module is a way of encapsulating code before it is bundled.

Bundling modules is the first step in code compilation. Modules are parsed by code readers, either in browsers or other software programs. In the case of hardware, some compilers and interpreters read source code and interpret it back into byte code, which is compiled down into machine-readable code.

Tusa, observes that in today's world, the lines between compiling code and interpreting have become blurred.

Strictly speaking, interpreting happens first with an interpreter. Once the code is interpreted, it is compiled into a package called a module. If an error occurs at this stage, the errors are called compile-time errors. If an error occurs when the code runs it is called a run-time error.

Run-time errors occur further down the process chain because errors may be discovered when the code runs in a new environment - a browser for example, or in a virtual cloud-based environment.

Programmers have different skill sets and work within different software languages, and environments and with a variety of on-premise (on-prem) or cloud data infrastructures. Both runtime and compile-time errors occur in all these environments.

Within the hardware, data flows from the input driver to the processor. The processor transfers the data and programming instructions to memory.

The processor retrieves the information it receives from the input driver - this can be done sequentially or parallelly - processes the information and sends the output back to the user via the output driver.

The inbound data is fetched from the input driver, decoded with Byte code instructions executed and sent to the computer's memory, storage or register. This flow is repeated on the outbound flow where data is retrieved and decoded with the execution of the instructions sent back to the user as an output.

Through this data journey, the data moves from the input driver, processor and memory via a system bus. A system bus is an interconnection point between the processor, the memory and the input/output, or I/O drivers via several conducting and connecting wires in the integrated circuit or chip.

## What is the von Neumann architecture and how does it work?

The American mathematician, of Hungarian descent, John von Neumann, described the architecture of a computer as an instruction cycle where data is fetched, interpreted, stored and retrieved.

This cycle is repeated in I/O drivers both on the inbound and outbound journeys. It is also referred to as stored memory architecture - the reasons which will become apparent as we discuss the key elements of the architecture and their benefits.

By separating storage from the fetching and interpretation operations each of these units can perform specialised functions more efficiently.

Processing, in the CPU or Central Processing Unit, houses the memory storage registers. It is further sub-divided into the ALU, or the Arithmetic and Logic Unit, performs the logical and arithmetical processing and the CU, or the Control Unit, controls the data flows directing the data to the interconnecting data buses or memory for storage.

Similarly, memory can also store data in categories that are identified easily during the retrieval process. Additional memory, like RAM & DRAM or (Dynamic) Random Access Memory, can be called only when they are needed. The program counter in memory determines the source of the data selecting from an instruction register, memory address register or accumulator register.

The von Neumann architecture also enabled programmatic instructions to be stored with the data in a register. This means not only is the data retrieved easily, but all programmatic instructions relating to this data are stored for more efficient execution.

By defining this separation of concerns and assigning specific functions to each part of the computer, the architectural choices von Neumann outlined, revolutionised computing.

Not only do computers, but embedded systems - such as vending machines, point of sales devices, mobile phones, and chips embedded in consumer electronics like TVs and home refrigerators - all employ the same architecture.

In the Harvard Architecture, a cache is also added to the RAM or DRAM in memory and shows how the fundamental architecture can be scalable by the simple separation of concerns outlined by von Neumann. This architecture also improves reliability and maintainability of the device as different data paths and memory registers are used to process data.c[10]

## The modularisation and bundling of code a side product of von Neumann architecture

This separation of concerns also led to the modularisation and bundling of top-level code that software programmers write.

With the insertion of VMs, code libraries began to emerge. These libraries pre-package and bundle code. Each code package is interpreted, compiled and processed before it is used by the software programmer in a library. This process is called code abstraction, as the source code of a programming language comes pre-packaged and tested.

In essence, today’s programs are abstractions of library methods and functions that are reused and customised to meet the specific needs of software developers.

The impact of von Neumann's architecture in the organisation of both machine code and programming languages that depend on machine code for interpretation is still powerful in today's world of supercomputers and generative Artificial Intelligence (genAI).

#### EXTERNAL REFERENCES

- [1] __Make Use of It__ "What is coding", <https://www.makeuseof.com> (Acessed Oct 6, 2024)[Available](https://www.makeuseof.com/tag/what-is-coding/)

- [2]  __Stanford University__ "Bits and Bytes", Accessed: Oct. 6, 2024. [Available](https://web.stanford.edu/class/cs101/bits-bytes.html)

- [3] Burd Barry, __Beginning Programming with Java For Dummies__, 6th edn (O'Reilly, Sept 2021), chap.1, pg3 - (URL or <https://doi.org/>)

- [4] __Think Object Oriented__, "Introduction to Computer Programs: Bytecode and Machine Code", Franceso, Tua, Accessed: Oct. 6, 2024, [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code)

- [5] __Stack overflow__, in answer to the question what is the difference between binary code and byte code, authors - several, Accessed: Oct. 6, 2024, [Available](https://stackoverflow.com/questions/67467615/what-is-the-difference-between-binary-code-and-byte-code)

- [6] __Tech target__"What is Byte code", Robert Sheldon, Accessed: Oct. 6, 2024, [Available](https://www.techtarget.com/whatis/definition/bytecode)

- [7] __Geek for geeks__, "The difference between a terminal, the console, a shell and the command-line-interface", <https://www.geeksforgeeks.org/> (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)

- [8] __Learn computer science online__ "Von Neumann Architecture: Complete Beginners Guide to Computer Science", <https://www.learncomputerscienceonline.com>, (Accessed: Sep. 30, 2024) [Available](https://www.learncomputerscienceonline.com/von-neumann-architecture/)

- [9]__Just IT Hardware__ "What are computer chips and how do they work", <https://www.justithardware.com(Accessed>: Oct. 8, 2024) [Available](https://www.justithardware.com/blog/what-are-computer-chips-and-how-do-they-work/)

- [10] George Charalambous (2024), __Computer Hardware (1)__, PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5377599_1)
