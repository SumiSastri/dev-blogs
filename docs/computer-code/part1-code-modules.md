---
layout: default
title: What is a programming language?
parent:What is the difference between computer code and computer programming?
nav_order: 6
last_updated: Feb 2024
---

# What is the difference between a programming language and a computer programming language?

Programming languages are written by prgrammers for software packages like Word, Excel for end users. 

There are several programming languages to choose from depending on the software manufacturers' technical requirements.

Frontend code is written for web and mobile applications. 

Backend code is written for databases and internet and software data infrastructures. Gaming code is written for gaming consoles.

All of these are examples of software code written in programming languages for different end users.

A programming language must communicate to the hardware it is installed on.

Computer code is code written in binary (zeros and 1s) and is usually found in a "bin" folder of a computer, where bin is the shortened version of binary code.

It is the series of instructions in binary to machines and is also called machine code. 

It provides hardware with instructions to execute external programs within the machine's programming environment, also known as the local-environment.
 
Without machine code computers and other hardware terminals are "dumb" machines as they perform no functions without machine code.

Binary code is stored in "bits" - two components zeros and 1s -representing the smallest unit of storage in a computer memory.

The code that many software programmers create is not machine-readable.

This blog gives you a good insight into [the difference between code writing and machine-readable-code](https://www.makeuseof.com/tag/what-is-coding/).

## What is the difference between a byte and byte code?

A byte is an aggregation of bits - 8 bits to be precise. Each bite can store 256 different patterns of code. A byte is the next level up in units of storage used in a computer's memory.

For a more detailed description of the difference between a bit and a byte, [Stanford University has a table](https://web.stanford.edu/class/cs101/bits-bytes.html) and which shows the progression of data storage from a bit to a single byte to a terabyte - or 1 trillion bytes of storage, which many cloud storage service providers are now offering consumers.

Where bits are concerned, computer manufacturers have all upgraded to 64-bits from early computers that offered 8-bits.

Byte code is an intermediary machine code that converts data from bytes back to binary, or bits using a code compiler.

While this can be processed directly to an operating system (OS), be it Windows, Linux or the Mac (OS), byte code is OS-dependent. Therefore Byte code written for one operating system is not the same as Byte code written for a different operating system.

This means code is not portable or "interoperable". To solve this problem, machines now have an intermediate level virtual machine (VM) that compiles code that can be across different operating systems.

[A visual representation](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code) of the difference between using Byte code for a specific operating system, versus the use of a VM, in the blog "Introduction to Computer Programs: Bytecode and Machine Code", is a good reference to see how VM's are used to make source code of programming languages work across different OSs.

## Why are programming languages considered "top-level" code?

Programming languages are considered top-level or "source" code - compiled back into Byte code and finally into machine code or binary.

Byte code is an intermediate-level code communicating to binary via a virtual machine (VM). Byte code converts data from programming languages into bytes and from bytes back to binary.

Binary or machine code is considered the base-level code for machines.

## What is the data flow from source code to the last byte?

Machine has the job of continously dealing with data flows from source code and executing commands to make the programs work.

Code needs to be written efficiently to minimize the load on a computer processor, its memory and storage facilities.

Programming languages are therefore bundled into modules reusable code. These modules now can bemade available to other dependent code blocks.

Code modules are similar to modular frameworks. It is not unlike Ikea furniture modules that can be reused and reconfigured. Similarly, code writers bundle blocks of code into a module that can be reused. A module is a way of encapsulating code before it is bundled. 

Bundling modules is the first step in code compilation. Modules are parsed by code readers, either in browsers or other software programs. In the case of hardware, there are compilers and interpretors that read source code and interpret them back into byte code, which is compiled down into machine-readable code. 

Tua, observes [3] that in today's world the lines between compiling code and interpreting have become blurred.

Strictly speaking, interpreting happens first with an intepreter. Once the code is interpreted, it is compiled into a package called a module. If an error occurs at this stage the errors are called compile-time errors. If an error occurs when the code actually runs it is called a run-time error.

Run-time errors occur futher down the process chain because errors may be discovered when the code runs in a new environment - a browser for example, or in a virtual cloud-based environment. 

Programmers have different skill sets and work within different software languages, environments and with a variety of on premise or cloud data-infrastructures. Both runtime and compile-time errors occur in all of these environments.

Within the hardware data flows from the input driver to the processor. The processor transfers the data to memory.

The processor retrieves the information it receives from the input driver - this can be done sequentially or parallely - processes the information and sends the output back to the user via the output driver.

The inbound data is fetch from the input driver, decoded with byte code instructions exeucted and sent to the computer's memory, storage or a register. This flow is repeated on the outbound flow where data is retrived, decoded with the execution of the instructions sent back to the user as an output. 

Through this data journey, the data moves from input driver, processor and memory via a system bus. A system bus is an interconnection point between the processor, the memory and the input/output, or IO drivers via several conducting and connecting wires.

## What is the von Neumann architecture and how does it work?
The mathematician, John von Neumann, described the architecture of a computer as a cycle where data is fetched, interpreted, stored and retrieved. 



#### EXTERNAL REFERENCES

- [1] __Make Use of It__ "What is coding", https://www.makeuseof.com (Acessed Oct 6, 2024)[Available]((https://www.makeuseof.com/tag/what-is-coding/)

- [2]  __Stanford University__ "Bits and Bytes", Accessed: Oct. 6, 2024. [Available](https://web.stanford.edu/class/cs101/bits-bytes.html) 


- [3] Burd Barry, __Beginning Programming with Java For Dummies__, 6th edn (O'Reilly, Sept 2021), chap.1, pg3 - (URL or https://doi.org/)

- [4] __Think Object Oriented__, "Introduction to Computer Programs: Bytecode and Machine Code", Franceso, Tua, Accessed: Oct. 6, 2024, [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code)

- [5] __Stack overflow__, in answer to the question what is the difference between binary code and byte code, authors - several, Accessed: Oct. 6, 2024, [Available](https://stackoverflow.com/questions/67467615/what-is-the-difference-between-binary-code-and-byte-code)

-[6] __Tech target__"What is Byte code", Robert Sheldon, Accessed: Oct. 6, 2024, [Available](https://www.techtarget.com/whatis/definition/bytecode)

- [7] __Geek for geeks__, "The difference between a terminal, the console, a shell and the command-line-interface", https://www.geeksforgeeks.org/ (Accessed: Sep. 30, 2024) [Available](https://www.geeksforgeeks.org/difference-between-terminal-console-shell-and-command-line/)


- [Learn computer science](https://www.learncomputerscienceonline.com/von-neumann-architecture/)

- [How to geek](https://www.howtogeek.com/44052/htg-explains-what-are-computer-algorithms-and-how-do-they-work/)