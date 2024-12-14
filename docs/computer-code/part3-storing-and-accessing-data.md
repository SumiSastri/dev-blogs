---
layout: default
title: How data is stored and retreived?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Feb 2024
---

# How is data stored and retrieved?

Once data has been created or initialised in a program, it needs to be stored for future state modifications.

All programming languages therefore have a storage type called a variable. The variable is allocated to memory for future use.

State holds immutable data if data that does not change. Variables on initialisation are immutable.

If the data is likely to change - for example, if a name is spelt incorrectly and needs to be changed or updated, then this data must have mutability - or the ability of a programmer to change its initial state.

To differentiate between these variables, JavaScript has two types of variables the `let` variable and the `const` variable. The `let` variable allows the data to be mutated or changed, while the `const` holds a constant state of data. [Read more on variables in JavaScript](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75) in this article by Elliot, on the Medium blog site.

Not all programming languages allow data to mutate. Such data is also considered static, versus dynamic data that could frequently change.

Java, Python, C and other programming languages will have their own keywords that define a variable, and ways of mutating the initialised data. As Francesco Tusa, in his "Introduction to the Java Language", states, "Using variables is a way to reserve specific areas of the memory and make them accessible throughout the execution of a program."

Once data has been created, initialised and stored, this data must be retrieved.  Different programming languages have different methods to retrieve data. 

Once higher language code has been compiled and run, it is executed in memory via a series of processes in the computer hardware.

## What is a code interpreter?

In the [first article](https://sumisastri.github.io/dev-blogs/computer-code/part1-programming-vs-machine-code/) in this series, we looked at how source code is compiled and translated into machine-readable code.

Depending on the source code, each programming language will have its own syntax and code interpreters.

Code blocks use the keywords and symbols that are interpreted by interpreters to execute the code block.

Data is created in a computer program, or a piece of software and stored in a file. The first piece of information that an interpreter looks at is the file extension to read or parse the file correctly.

The next set of information that the interpreter looks at is the code entry point. In the case of the Java language, Tusa points out the `class` keyword provides the program it is running with a prototype of the code block.

The code block is contained at the beginning and the end by curly braces `{}` and the set of instructions or the code block is written within this block for execution.

Within the code block, the interpreter then looks at the data type and the conditional programming statements.

The instructions are then executed successfully, if the execution is unsuccessful an error is recorded.

The code is executed in the Java Virtual Machine (JVM).

This process of interpretation differs from language to language. As the syntax and structure of programming languages differ, interpreters are also packages of software that are encoded to meet these differing needs.

The basic function of an interpreter is to read code and catch errors early before the code is compiled by a compiler.

## What is code compiling?

As a software package may require several lines of code to be interpreted and executed, the role of the compiler is to take these data chunks and compile them in the order they need to be executed.

A code compiler takes information from the interpreter like pieces of a jigsaw to put the bigger picture together. In this case, all the features of the code enable the package to deliver the end user the service required.

Once again, compilers are language-specific. Java uses compilers like Javac, while JavaScript uses compilers like Babel, Webpack and ESBuild.

## What is code transpiling?

Transpiling is a further process once code has been compiled to re-compiling the code from one language or code format into another code format or language. You can think of it as a translation service of one code format to another.

When Byte code is compiled down to machine-readable code, for example, a process of compiling and transpiling is taking place.

Compilation from source code and transpilation into machine-readable code.

 Most code compilers now are also transpilers, but these compilers are language-specific. While Tusa, also shares the view that the lines between interpreters and compilers are blurring, he refers to a Java software environment. 
 
 JavaScript, has a completely different language syntax and structure. Reading [the tutorial by Digital Ocean](https://scotch.io/tutorials/javascript-transpilers-what-they-are-why-we-need-them#:~:text=Transpilers%2C%20or%20source%2Dto%2D,are%20said%20to%20target%20JavaScript.)"JavaScript Transpilers: What they are and why we need them", you will witness for yourself the differences in the language and structure.

 The idea behind selecting these 2 articles is not to provide the reader with an in-depth view of how Java and JavaScript are syntactically different, but simply to demonstrate that they are.

## What is code bundling?

Code bundlers automate certain processes required for the code to be interpreted by code interpreters.

Some of the functions the bundlers undertake are 
- to standardise code 
- clean up traceable errors
- handle any expensive and inefficient tasks reducing the compute load on hardware
- split and chunk code into smaller, more easily loadable parcels containing - code, images and other assets - bundlers must have the ability to bundle different modules/ packages/ code together efficiently
- trace code back to the source files and provide source maps - this helps in the development environment with root-cause analysis and debugging
- extend basic functionality through plugins
- bundle code for development, integration and production environments.  In the development environment, source-code mapping is more important while in the production environment minification and concatenation are more important. 

Minification is the process by which a code bundler removes all white spaces, as well as unnecessary code to make the file size smaller/lighter and more performant. Concatenation is the process where one or more files are combined once again to make the code more performant.

Multiple code interpreters, compilers, transpilers and bundlers are used in the development process. It is not always possible to know the features or functionality of each of these pieces of software.

Software developers rely on compilers and interpreters to do the heavy lifting when it comes to boiling down code to its most efficient format for storage in a processor.

## What is a code package?

A code package is any code that is bundled together and that can be used efficiently.

Code libraries like React, written in JavaScript or the Java Class Library (JCL) use pre-compiled code and features that can be used by software developers writing source code.

## What is code package management?

Code package management is a part of maintaining your code base and ensuring code packages used are updated regularly.

When code packages are updated, they may or may not be backwards compatible and may generate breaking changes.

These changes must be managed to ensure code failures are stopped before they are published or released.

Code in the packages a developer writes will have to be rewritten to the new syntax and norms of the new version of the upgraded package.

Often, packages that are out of date offer no long-term support and issues that you face will not be addressed by the package publisher.

This constant updating of packages with new features takes a significant amount of time for developers but is a core part of writing and maintaining code bases. 

Version changes can be major or minor.

## What is code patching?

Part of code package management for code libraries is introducing patches or small chunks of code that update a package to improve functionality.

Patches are smaller than minor version changes or updates. Version 2.1.11 denotes the major version is 2, which will significantly vary from Version 1.0.0 of the package. The next decimal place denotes a minor update to the package with 2.1.12, perhaps a patch update to 2.1.11.

These are not strict rules, with each package manager providing package release notes for developers to follow and update code when they are maintaining a code base.

## How these processes enable code storage

All these processes - interpreting, compiling and transpiling - are part of business owners' goal to keep data storage costs down.

Data storage on-premise, or in cloud storage systems is expensive. Data processed on hardware and embedded systems is a cost, if programs take time to run, in terms of productivity. 

If a significant load of processing can happen outside this infrastructure, the code stored in the local environment or hardware can be minimal and the instruction cycle - as outlined in [the first article in this series](https://sumisastri.github.io/dev-blogs/computer-code/part1-programming-vs-machine-code/) is shortened.

This race to process more data efficiently requires expensive chips and integrated circuits. Chips used for generative artificial intelligence (genAI) programming at the top end of the scale. 

Cloud storage services are also an expense, in the consumer world, Apple, Google and Microsoft offer additional storage space at a cost.

Data from videos and images need more storage and compute power. The volume of data being consumed by end users from social media, integrated media platforms that offer video, audio and text content has grown exponentially.

If you explore your computer filing system by typing `cd` into the terminal, you will see application software is stored in `.app` files in the Applications folder; binary files in the bin folder; the library or lib folder when you `cd` into it will open up a new set of folders - peripherals and printer plugins and commands being one of them.

The organisation of the filing system, enables storage on the hard drive. When the program is executed, this data from the program is retrieved, compiled and then is processed in memory using RAM and DRAM.


#### EXTERNAL REFERENCES

- [1] __Think Object Oriented__, "Introduction to the Java Language", Tusa, Francesco (Accessed: Oct. 6), 2024, [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-the-java-language)

- [2] __Think Object Oriented__, "Introduction to Computer Programs: Bytecode and Machine Code", Tusa, Francesco (Accessed: Oct. 6, 2024)[Available](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code)

- [3] __Medium__ "JavaScript ES6+: var, let, or const?" Elliot, Eric (Accessed: Oct. 8, 2024) [Available](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75)

- [4] __Scotch io tutorials__  "JavaScript Transpilers: What They Are And Why We Need Them" Peleke Sengstacke (Accessed: Oct. 8, 2024) [Available](https://www.digitalocean.com/community/tutorials/javascript-transpilers-what-they-are-why-we-need-them)
