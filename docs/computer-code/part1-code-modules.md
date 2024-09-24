---
layout: default
title: What is a programming language?
parent: Programming languages, computer code, bits and bytes - what's the difference?
nav_order: 6
last_updated: Feb 2024
---

# What is the difference between a programming language and a computer programming language?

Programming languages are written by software code writers to write packages of software such as Word, Excel for end users. There are several programming languages to choose from depending on the software manufacturers' technical requirements.

Frontend code is written for web and mobile applications. Backend code is written for databases and internet and software data infrastructures. Gaming code is written for gaming consoles.

All of these are examples of software code written in programming languages for different end users.

A programming language must communicate to the hardware it is installed on. Computer code - the software programs installed on a computer or a server - is code written in binary (zeros and 1s) and is usually found in a "bin" folder. 

It is the series of instructions in binary to machines. It provides hardware with instructions to execute programs within the hardware. It is also known as machine code as it is a set of instructions in machine language (binary) - hardware without machine code are "dumb" machines as they perform no functions without machine code.

Binary code is stored in "bits" - two components zeros and 1s -representing the smallest unit of storage in a computer memory.

The code that many software programmers create is not machine-readable. This blog gives you a good insight into [the difference between code writing and machine-readable-code](https://www.makeuseof.com/tag/what-is-coding/).

## What is the difference between a byte and byte code?

A byte is an aggregation of bits - 8 bits to be precise. Each bite can store 256 different patterns of code. A byte is the next level up in units of storage used in a computer's memory.

For a more detailed description of the difference between a bit and a byte, [Stanford University has a table](https://web.stanford.edu/class/cs101/bits-bytes.html) and which shows the progression of data storage from a bit to a single byte to a terabyte - or 1 trillion bytes of storage, which many cloud storage service providers are now offering consumers.

Byte code is converts data from bytes back to binary. It is an intermediate level code that communicates to binary via a virtual machine (VM). The VM interprets and "translates" bytes into bits. This process of interpretation of bytes is also known as code compilation.

## Why are programming languages considered "top-level" code?

Programming languages are considered top-level or "source" code - compiled back into byte code and finally into machine code.

Byte code is an intermediate-level code communicating to binary via a virtual machine (VM). Byte code converts data from programming languages into bytes and from bytes back to binary.

Binary or machine code is considered the base-level code for machines.

## What is the data flow from source code to the last byte?

Machine has the job of continously dealing with data flows from source code and executing commands to make the programs work.

Code therefore needs to be written efficiently to minimize the load on a computer processor, its memory and storage facilities.

Programming languages are therefore bundled into modules reusable code. These modules now can bemade available to other dependent code blocks.

Code modules are similar to modular frameworks. It is not unlike Ikea furniture modules that can be reused and reconfigured. Similarly, code writers bundle blocks of code into a module that can be reused. A module is a way of encapsulating code before it is bundled. 

Bundling modules is the first step in code compilation. Modules are parsed by code readers, either in browsers or other software programs. In the case of hardware, there are compilers and interpretors that read source code and interpret them back into byte code, which is compiled down into machine-readable code. 

During the compilation of code in a module, if an error occurs, the errors are called compile-time errors. 

Once the application is read by a browser or any other code parser, it is called a run-time error because further errors may be discovered when the code runs on the environment that the end-user consumes the code.

Computer code programmers and software programmers have different skill sets and work within different software environments, hardware environments and with a variety of on premise or cloud data-infrastructures.

Both runtime and compile-time errors occur in all of these environments.

Within the hardware data flows from the input driver to the processor. The processor transfers the data to memory.

The processor retrieves the information it receives from the input driver - this can be done sequentially or parallely - processes the information and sends the output back to the user via the output driver.

The inbound data is fetch from the input driver, decoded with byte code instructions exeucted and sent to the computer's memory, storage or a register. This flow is repeated on the outbound flow where data is retrived, decoded with the execution of the instructions sent back to the user as an output. 

Through this data journey, the data moves from input driver, processor and memory via a system bus. A system bus is an interconnection point between the processor, the memory and the input/output, or IO drivers via several conducting and connecting wires.





John Von Neumann



Further reading 

- [Stack overflow](https://stackoverflow.com/questions/67467615/what-is-the-difference-between-binary-code-and-byte-code)

- [Tech target](https://www.techtarget.com/whatis/definition/bytecode)

- [Make use of us](https://www.makeuseof.com/tag/what-is-coding/)

- [Hash node](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code)

- [Learn computer science](https://www.learncomputerscienceonline.com/von-neumann-architecture/)

- [How to geek](https://www.howtogeek.com/44052/htg-explains-what-are-computer-algorithms-and-how-do-they-work/)