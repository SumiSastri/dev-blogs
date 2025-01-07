---
layout: default
parent: History of the Web
nav_order: 3
title: A history of software development as an adjunct to hardware development
---


# A history of software development as an adjunct to hardware development

Early computing machines, such as Babbage’s Analytical Engine and ENIAC, were groundbreaking but faced significant limitations in size, reliability, and energy efficiency. 

These machines marked the beginning of the journey toward modern programming languages. Early machines used unreliable electrical circuits prone to overheating and burnout. Mechanical computing devices like the Bombe (used to break the Enigma code) laid the groundwork for the first programmable computers.

The Enigma machine was a cipher device used during WWII. The Bombe, created by Alan Turing and his team, was a mechanical computing device used to decode Enigma’s encrypted messages. This device played a key role in the development of modern computers.

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

## What are the common features of programming languages?

Given the initial need for computers to compute mathematical tasks, computer languages developed a language structure of their own - a small vocabulary, limited room for ambiguity in the instructions and the ability to logically flow through a binary - yes-no - lexical tree.

- Written the Backus-Naur Form

Computer languages use a context-free grammar called the Backus-Naur Form [BNF](9). Deriving from both algebra and natural languages, like English, computer languages use lexical structures derived from BNF. This was largely due to the fact that initial programming languages focused on solving mathematical challenges.

BNF uses numbers and symbols as a form of pattern matching rather than words and syllables. This lexical tree is parsed to validate its instructions. Lexical parsing uses recursion - or restating the base case problem statement over and over again until the solution is reached. The restatement narrows down the options till the base statement is proven correct.

- Reserved Keywords
Programming languages have a limited number of reserved words, often ranging between 100 and 350, depending on the language. These keywords are part of the language syntax and cannot be used as variable names.

- Syntax and Rules

Programming languages enforce strict rules for syntax, variable scope, and lifetime. Variables must often be defined within a specific context (scope) and follow specific lifetimes (e.g., local or global variables).

- Data Representation

At the machine level, binary is the foundation. Data is processed in small chunks, typically 8 bits per byte.
This binary processing is what allows computers to handle and store data efficiently.

- Compilation and Interpretation 
Most programming languages are either compiled (e.g., C, C++) or interpreted (e.g., Python, JavaScript). Some languages (e.g., Java) are translated into bytecode, which is then executed by a virtual machine

- Distinction between high-level and low-level programming languages

High-level programming languages (like Python, Java, and C++) are closer to human languages and abstracted from machine code.
These high-level instructions are eventually translated (compiled or interpreted) into low-level languages, such as binary, for execution by the computer.

## From Simple Assembly in Low-Level Languages to Complex Packaging, Bundling, and Compiling

Early programming languages, such as Pascal, primarily focused on assembling code to be parsed, read, and executed directly in memory. At that time, many processes we now take for granted were either nonexistent or performed manually by programmers.

In the modern era, much of the complexity of these tasks has been abstracted away from the end user, thanks to advancements in compilers, memory management, and higher-level programming constructs.

__Phases of High-Level Programming Language Creation__

Higher-level programming languages are developed in phases to facilitate syntactical analysis and ensure seamless translation into bytecode or machine code. George Charalambous of Westminster University explains that high-level programming languages must be translated into bytecode that target machines can interpret and execute.

Target machines include a variety of devices, such as:

Personal computers
Mainframes
Smartphones
Gaming consoles
Other devices with embedded chips
In essence, any machine that requires source code to be executed must translate it into a readable form, such as bytecode.

__The Evolution of Compilers__

Over the past 50 years, software development has evolved significantly, with compilers playing a central role in the process. Compilers are responsible for analyzing, optimizing, and synthesizing source code before it is loaded into the target machine's memory allocation system.

In the early days of computing, Charalambous [10]adds, programmers had to manually create an executable object from source code.
They had to build a standard processing image for the target machine to execute. This manual process was labor-intensive and error-prone, especially given the limited memory capacity of early hardware systems. High-level source code had to be carefully managed to fit within the available resources.

__Automation of Pre-Processing and Compilation__

Today, compilers have taken over many tasks that were once handled manually by programmers. Key steps such as:

- Pre-processing (e.g., resolving macros and include files).
- Compiling (e.g., translating high-level source code into an intermediate form, such as assembly or bytecode).
- Linking and Packaging (e.g., generating a single executable or bundled application).

These processes ensure that modern programs are more efficient, portable, and reliable across various platforms and operating systems.

The abstraction provided by modern compilers has enabled developers to focus on writing higher-level, user-friendly code rather than worrying about low-level details like memory allocation or manual executable creation. This evolution has been a critical factor in the rapid development of modern software and the expansion of computing into devices of all types and sizes.

## What is the Software Development Cycle?
Based on core concepts from the Hamilton model, the software development cycle is organized into the following stages:

- Requirements Mapping: Understanding and documenting the needs and goals of the software.

- High-Level Design and Architecture: Defining the overall structure and systems, often overlapping with detailed design.

- Detailed Design and Implementation: Specifying finer details of the design, implementing the code, and making adjustments as needed.

- Testing: Ensuring the software meets requirements and functions correctly.

- Release and Maintenance: Deploying the software and providing ongoing support, updates, and fixes.

These stages can be executed sequentially, as in the Waterfall model, or iteratively, as in Agile methodology. The V-model introduces a linear progression with additional flexibility for validating and verifying processes at various stages or "vertical nodes."

The ultimate goal of the software development cycle, which continues to evolve, is to release software quickly, efficiently, and accurately to meet growing demands. Software increasingly solves abstract problems and automates tedious tasks, enhancing productivity.

## What Constitutes a Software Program?

A software program today is a compiled or pre-compiled package of code blocks (referred to as source code). The process of creating a software program involves:

- Writing Source Code: Code written in one or more programming languages, known as the tech stack.

- Compiling: Converting source code into an object file.

- Linking: Combining object files with libraries to create a runnable, executable file. The resulting executable file can run on various platforms, including computers, mobile applications, gaming systems, or embedded devices.

- Loading: Mounting the object file on memory registers to ensure they are in a queue for processing

- Code Maintenance and Versioning

Code is regularly updated and maintained using a versioning system. Updates are labeled with:

-- Major versions (e.g., Word 14.x.x): Significant new features or changes.
-- Minor updates (e.g., Word x.90.x): Incremental improvements or minor features.
-- Patches (e.g., Word x.x.2): Bug fixes or small updates to address specific issues.

For example, "Word 14.90.2" indicates the 14th major version, the 90th minor update, and the 2nd patch.

## Licencing and use - open Source vs. closed Source

Software licenses vary:

Open-Source Software: Allows free access to the source code (e.g., Linux), making it widely used for studying operating systems.
Closed-Source Software: Proprietary and restricted (e.g., Windows, macOS, Android, iOS), making their inner workings less transparent.

## Into the era of AI

While Babbage’s Analytical Engine and ENIAC are considered historical firsts  hardware was unweildy and unreliable and software development initially acting as an adjunct to hardware design.

Early programming languages, such as Fortran and Lisp, emerged to address rudimentary needs, leading to later innovations like C, Pascal, and object-oriented programming. The 1990s marked the rise of modern languages like Python, Java, and JavaScript, alongside methodologies like Agile and the advent of cloud computing.

Software programs today are compiled packages of source code, translated into executable files through processes like compiling, linking, and pre-processing. Modern software relies on robust versioning systems for updates.

The software development cycle has evolved to prioritize efficiency, accuracy, and rapid deployment, while the rise of AI and machine learning further expands the scope of software to manage complex systems and big data.

This field is in explosion mode, Turing's __The Bomb__ comes to mind !


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
