---
layout: default
title: How data is stored and retreived?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Feb 2024
---

## How is data stored and retrieved?

Once data has been created or initialized in a program, it needs to be stored for future state modifications.

All programming languages, therefore, have a storage type called a variable. The variable is allocated to memory for future use.

State holds immutable data—data that does not change. Variables on initialization are immutable.

If the data is likely to change—for example, if a name is spelled incorrectly and needs to be updated—then this data must have mutability, or the ability for a programmer to change its initial state.

To differentiate between these variables, JavaScript has two types of variables: the let variable and the const variable. The let variable allows the data to be mutated or changed, while the const holds a constant state of data. Read more about variables in JavaScript in this article by Eric Elliott on Medium[3]

Not all programming languages allow data to mutate. Such data is also considered static, versus dynamic data that could frequently change.

Java, Python, C, and other programming languages have their own keywords for defining variables and ways of mutating initialized data. As Westminster University's, Francesco Tusa states in his _Introduction to the Java Language_: "Using variables is a way to reserve specific areas of the memory and make them accessible throughout the execution of a program." [1]

Once data has been created, initialized, and stored, it must be retrieved. Different programming languages have different methods of retrieving data.

After high-level code has been compiled and run, it is executed in memory via a series of processes within the computer hardware.

## What is a code interpreter?

In the first article in this series, we explored how source code is compiled and translated into machine-readable code.

Depending on the source code, each programming language has its own syntax and code interpreters.

Code blocks use keywords and symbols that interpreters read to execute the code block.

Data is created in a computer program or piece of software and stored in a file. The first piece of information an interpreter examines is the file extension to read or parse the file correctly.

Next, the interpreter identifies the code entry point. In Java, for instance, Tusa notes that the class keyword provides the program with a prototype of the code block.[1]

The code block is contained within curly braces {} at the beginning and end, with the set of instructions written inside for execution.

Within the block, the interpreter evaluates data types and conditional programming statements.

The instructions are executed if successful. If execution fails, an error is recorded.

This process varies from language to language. Since the syntax and structure of programming languages differ, interpreters are software packages designed to meet those needs.

An interpreter's basic function is to read code and catch errors early, before the code is compiled by a compiler.

Python, for example, is purely interpreted—errors are detected only after the code is run. Java, a compiled language, catches errors through the javac compiler used in the JVM.

## What is code compiling?

A compiler is software that translates source code into instructions that the target machine can execute efficiently.

A software package's source code may consist of numerous lines. The compiler organizes and compiles these data chunks in the proper execution order for the computer’s memory (RAM). This creates an instruction set that the CPU can process.

A compiler takes information from the interpreter, like pieces of a jigsaw puzzle, to assemble the bigger picture. It ultimately enables the program to deliver a functional instruction set to a computer, mainframe, or mobile device.

Compilers are language-specific. For example, Java uses compilers like javac, while JavaScript uses tools like Babel, Webpack, and ESBuild.

Compilers may perform single-pass or multi-pass operations, depending on their tasks. Key responsibilities include:

- Providing lexical, syntactical, and contextual analysis of source code.
- Evaluating preprocessor instructions first.
- Scanning, reviewing, and optimizing code.
- Performing redundancy checks.
- Debugging code to locate and resolve exact points of failure.
- Running linting checks to remove unnecessary spaces or commented-out code.
- Highlighting compile-time errors to resolve issues before runtime.
- Creating symbol tables to map variables, loop structures, and data positions.
- Generating a construct target or executable program by converting intermediate code into bytecode.
- Finally, the compiler links libraries and loads the program into memory registers for execution.

## What is code transpiling?

Transpiling is a process that re-compiles code from one format or language into another, serving as a form of translation.

For example, when bytecode is compiled into machine-readable code, transpiling is involved. Most modern compilers now act as both compilers and transpilers, but these tools are often language-specific, Tusa explains[2]

JavaScript transpilers like Babel focus on translating newer syntax into older, compatible JavaScript formats. For more details, see this tutorial by Digital Ocean[4].

## What is code bundling?

Code bundlers automate processes to optimize code for interpretation. Their functions include:

- Standardizing code.
- Cleaning traceable errors.
- Reducing computational load by splitting code into smaller, loadable chunks.
- Creating source maps for debugging during development.
- Removing unnecessary code and spaces (minification) and combining files for performance (concatenation).

Examples of popular bundlers include Webpack and Parcel.

## What is a code package?

A code package is a collection of code that is bundled together for efficient use. For example, JavaScript libraries like React or the Java Class Library (JCL) contain precompiled code for developers to leverage.

What is code package management?
Code package management ensures that libraries and dependencies are up-to-date, preventing issues from outdated code. Updates can introduce breaking changes, requiring developers to rewrite or adapt their code. Packages are often versioned, and maintaining compatibility is a core part of managing a codebase.

## What is code patching?

Patches are small updates to improve functionality or address issues in code packages. Versioning typically uses a semantic system (e.g., 2.1.11, where the last number reflects a patch). Developers monitor release notes to implement necessary changes.

## Conclusion

All these processes—interpreting, compiling, transpiling, and bundling—play a role in reducing storage and computation costs. Efficiently processed data leads to lower costs for both on-premise and cloud storage solutions, making it vital for business operations. Data organization in memory and storage systems ensures programs execute seamlessly, balancing cost and performance.

#### EXTERNAL REFERENCES

- [1] __Think Object Oriented__, "Introduction to the Java Language", Tusa, Francesco (Accessed: Oct. 6), 2024, [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-the-java-language)

- [2] __Think Object Oriented__, "Introduction to Computer Programs: Bytecode and Machine Code", Tusa, Francesco (Accessed: Oct. 6, 2024)[Available](https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code)

- [3] __Medium__ "JavaScript ES6+: var, let, or const?" Elliot, Eric (Accessed: Oct. 8, 2024) [Available](https://medium.com/javascript-scene/javascript-es6-var-let-or-const-ba58b8dcde75)

- [4] __Scotch io tutorials__  "JavaScript Transpilers: What They Are And Why We Need Them" Peleke Sengstacke (Accessed: Oct. 8, 2024) [Available](https://www.digitalocean.com/community/tutorials/javascript-transpilers-what-they-are-why-we-need-them)
