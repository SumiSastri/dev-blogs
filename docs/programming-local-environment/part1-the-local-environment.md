---
layout: default
title: Your computer - the local environment
parent: The developer environment
nav_order: 7
---

# Your computer - the local environment

Your computer is a synonym for a software developer's local environment. As a developer, you are required to set up your computer with the right tools. Familiarity with your hardware is fundamental as the code you write on your computer communicates to servers in cloud-based environments.

This client-server interaction is the basis of how the internet works. As a developer, high level programming languages - like Java, Python, JavaScript - that you write is interpreted and compiled first on your local environment and then sent to a server which can either be on premise (on-prem), or on the cloud or a hybrid of on-prem and cloud.

The code then is checked on a staging environment, where end-to-end checks are performed to ensure the software package you are writing is robust and then it is finally released into the production environment, where is checked for a final time before being made available to the end user. The internet enables this 2-way communication. Check [how the internet works](https://sumisastri.github.io/dev-blogs/learn-to-code-getting-started/part5-how-the-internet-works/) for a quick introduction from an earlier blog post.

This software cycle is totally dependent on your code and its compilation on your local environment or your computer. Cloud storage hosts version control systems such as GitHub and data infrastructures that host your software packages and distribute them to end-users.

For [a quick overview of cloud environments](https://sumisastri.github.io/dev-blogs/server-environment/part1-types-of-data-infrastructures/), this link gives you a contextual background.

## What is the main function of a computers operating system?

As the software cycle depends on the code and its compilation on your computer, it is essential to understand what your computer's operating system (OS) does and how to manage your local environment.

The fundamental job of a computer is to manage the computer OS. The University of Wollongong defines an OS as software that manages hardware in its student resources section [1]. Macs, Android, and Windows have their OSs, as do supercomputers, mobile phones, and other smart devices.

In their book, _Linux_, provided by Kothari, et al., [2] observe that the main functions of an OS are to:

- process the requirements of users and third-party software application
- store these processes in memory and retrieve them from memory
- store these processes in a file and information management system
- manage disk space
- provide a stable environment that consistently deals with user needs from both the hardware and software
- provide an easy interaction so that users do not need to know the complicated processes under the hood
- enable smooth messaging and interaction between these complex processes promptly

All of these needs must be met by designers of an operating system (OS). A quick overview of how OSs work from [UWA](https://www.uow.edu.au/student/support-services/academic-skills/online-resources/technology-and-software/operating-systems/) shows you how an OS sits between hardware and your computer's software. Computers have different system software to manage various aspects of your hardware. There are printer drivers so you may print, a methodology for handling files you write and store on the laptop, or access to read and edit them.

Computers may be used by individuals (single users) or organisations that have groups of people with similar computing needs (multi-user OS). A multi-user OS may also have people outside the immediate organisation who need to access information that the organisation provides from computers that log in to the servers of the organisation. A multi-user OS, Kothari, et al., point out, are systems that allow two or more people to log in to the servers simultaneously, not two or more people to use the system with a single network operator. The latter must be considered a single-user OS where the user is the super-user or the network operator.

Accessing information for all these different needs must also be controlled by an OS. A system operator may, therefore, have to control multiple computer OS's and access several files and directories and enable those files and directories that users can read, read and write, or perform read-write and execute functions.  The biggest challenge for system operators is the lack of interoperability between OS's. A MacOS and programs run on a Mac must be adapted to run on a Windows OS. Using Linux everywhere helps overcome this challenge.

A better understanding of how Linux is different from the MacOS or Windows OS [3], the article __What is Linux__ on [the official Linux site](https://www.linux.com/what-is-linux/) is worth a read.

OS's can be DTOS, RTOS or embedded systems. DTOS or a distributed operating system manages a group of independent computers and makes them appear like a single computer, Kothari, et al., differentiate this from an RTOS, or real-time operating system. The RTOS has a quick, predictable response to real-time events - mouse clicks, clock interrupts and other such processes that allow an OS to multi-task. There are OSs that only execute a single program at a time and are referred to as single-tasking OSs vs multi-tasking OSs. Embedded systems are designed to operate with a limited number of resources, are compact and efficient in design and are mainly for use on small machines.

## Why Linux and not Unix?

As you see in the article __What is Linux__, Linux is now everywhere. Written by Linux Torvald, a Finnish developer in the 1990s, Linux is open-source and free while Unix, written by Ken Thompson and Dennis Ritchie first wrote AT&T Bell Labs in the United States. Unix, initially provided free to universities, now requires a paid-for licence. Unix and Linux do not share source code, but the principles and methodologies of enabling interoperability are shared.

Because both Unix and Linux offer easy interoperability between systems, they may be pre-installed on mobile phones, televisions, and gaming consoles, and according to the official site, all of the world's top 500 supercomputers, stock exchanges and the Internet use Linux.

If Linux is not preloaded on many computers, through the computer terminal simple commands allow system operators to install Linux. Depending on the need, different versions of distribution systems are offered by Debian, Ubutu, Fedora, with [the site Distrowatch](https://distrowatch.com/) providing the whole list.

Kothari, et al., observe that Linux, a clone of the Unix OS, can be installed on computers easily as it is open-source software. Unix is mainly loaded on servers rather than computers and requires a commercial installation license.

The advantage of having Linux on your computer is that it offers a consistent application interface between computers and servers.

## What is the FS and how does it differ from an OS?

The FS, or filing system, is a tree of directories or folders, within which files are stored. Each of these folders is given specific names in the FS to store specific types of files.

Files are partitioned to enable recovery and repair of a system, with the boot file holding some of the key files relating to starting and restoring (booting and rebooting) the computer.

Kothari, eet al.,  provide a handy list of files and how they are partitioned

- bin for binary files
- boot for files relating to the boot folder, this allows the computer to be "booted" or "rebooted" referring to the operations in the root files to mount other file systems on the computer, essential start-up data
- var - variable data
- usr - the user files
- tmp - temporary data
- lib - essential shared libraries and kernel modules
- dev - device files, not to be confused with the loosely used term dev to mean developer

## What are the key components of a computer?

While the overarching word to encapsulate everything under the hood of a computer is the OS, and the FS relates to all the files in the system, computers are a series of integrated circuits with on/off switches relating to the numbers one and zero.

Computers have an input/output I/O driver for user input and output back to the user. A central processing unit (CPU) referred to just as the processor which processes all the commands sent via compilers and interpreters. These commands are stored in memory registers and retrieved from this bank of registers. Each item of data is allocated a place and a process number that uniquely identifies it both for storage and retrieval.

Interpreters interpret code and compilers boil them down back to machine-readable code. The data from the input driver that has been transferred to an interpreter and compiler is processed and stored in memory. Memory is a shortened version of random-access memory or D-RAM, which is dynamic RAM, which is the capacity of the computer to hold this information.

RAM memory is divided into 3 separate blocks of memory standard input/ standard output and standard error. RAM is the quickest to process information, but capacity is limited. The hard drive and external hard drives process information next and finally, the slowest to process data is cloud based servers as they represent the longest distance between where the code is compiled and computed and the source code.

In the article __What is Linux__, the OS is further divided into the bootloader, which starts all the computer systems up and shuts them down. The bootloader communicates with the initial booting process, or the "init system". The init system controls background services like printing, and scheduling via "daemons". The kernel is the core of the OS, managing the processor, memory and peripherals. Daemons, can be considered system "helpers" or "runners" as they run to and from internal systems to handle mail, network communications, data to printers etc.,

The user-facing graphical server is a subsystem with an x-y axis that displays graphics on your monitor, which is also referred to as the x-server or X. The main user-facing component is the desktop environment, where you see web browsers, pre-loaded applications or access to an application management store (app-store), where you can download applications that work with the OS.

## How does a computer function?

The overview in the last section is reductive, as it merely provides a structure within which a computer performs its specialised tasks.

Computers have millions of electronic components performing specialised tasks, which I will briefly outline in this section.

Stallings, et al, [4] define the core functions of a computer as data movement, processing and storage and the control of these functions.

The processing and storage of data are combined with the movement of the data from the local machine to the external environment. The external environment could be servers. These servers could be on-premise or virtual servers in the cloud. Data can also be communicated to peripherals, such as printers.

Controlling all these 3 functions is vital and is performed by the I/O drivers.

These parts do not live in isolation but are connected by a system bus. A system bus is an interconnection point between the processor, the memory and the I/O drivers via several conducting and connecting wires.

Stallings makes a further distinction between computer architecture and organisation. To explain this, Stallings says architectural design is those features that a user interacts with - if a computer offers the user the ability to perform arithmetical operations such as adding, subtracting, multiplying and dividing, that is an architectural decision.

However, how these architectural features are designed is an organisational decision - the engineer here is making design decisions based on assumptions of how often the arithmetical operations will be performed, the cost and physical size of the unit, and the efficiency of the operation of the unit.

These architectural and organisational differences in a computer are what makes the difference between the cost and price of one model of computer vs another. As a hypothetical example, a cheaper model may have less computing power for arithmetical operations as the user may only want to use the model to process words.

## The critical role of the processor in a world of deep learning

The processor performs the most critical role in a computer. Intel, AMD, and Nvidia are all chip makers, and the race to make a processor perform better has reached a new level of competitive energy with chips required to tackle machine learning (ML) and artificial intelligence (AI) processing requirements.

In a recent article, PC Guide [5] said deep learning requires big data that can be processed at a high speed. 

Computers need a high memory bandwidth, and data needs to be transferred at speed between the processor and the main memory.

Intel i-9 and i-7, AMD Ryzen 7950 and 7900 are reviewed in [an article about processors for deep learning](https://www.pcguide.com/cpu/best-cpus-for-deep-learning/) and is worth reading to reflect on how demands on a processor have changed.

Puget Systems, custom computer builders based in Seattle, in the United States, in an article on hardware recommendations [6], says not only does CPU performance matter, but GPU (Graphics Processing Unit) performance that Nvidia dominates. GPU matters as it works with the CPU, and the CPU's computing power must keep up with the demanding workloads of ML and AI.

The number of cores has also significantly jumped from 16 cores to 64 cores to manage the workload of these compute requirements faced by ML and AI.

Nvidia has developed processors for the highly demanding workloads that ML and AI require, largely from its gaming processors. [In an article on system requirements for ML and AI, Pugest systems](https://www.pugetsystems.com/solutions/ai-and-hpc-workstations/machine-learning-ai/hardware-recommendations/) offers some recommendations for what may be required from processors for AI and ML.

## Customising your local environment as a developer

Understanding your local environment and customising your hardware for the requirements of your job will vary according to the programming languages you are using and the servers your organisation interact with.

What is important to note, as observed in the __What is Linux__ article, is that the kernel is the lowest level of the OS. To interact with the OS, you need to familiarise yourself with the computer terminal, this series’ [next article](https://sumisastri.github.io/dev-blogs/local-environment/part2-the-terminal/), and the command line interface (CLI).

Follow that up with the section on computer shells to understand the role shells play in customising your local environment.

The Unix scripting language - Bash scripting, is called a low-level scripting language because it interacts directly with the kernel via a series of scripts, or commands, that execute and perform certain tasks within an OS. The terminal is the gateway to the kernel and the Linux OS.

Once you are familiar with the CLI and computer shells, you can write your first scripts and look at the tooling checklist for guidance. Stallings, et al.,  [7] provide a detailed insight into Bash scripting and its use cases.

With every organisation you join customising of your work laptop will be an important first step to controlling your workflow, and investing time in learning these fundamentals is time well spent!

#### EXTERNAL REFERENCES Your computer - the local environment

- [1]  __University of Wollongong Australia__ "Understanding operating systems", Accessed: Sep. 22, 2024. [Available](https://www.uow.edu.au/student/support-services/academic-skills/online-resources/technology-and-software/operating-systems/)

- [2] Kothari, D, Shriram, K, & Sundaram, R 2011,__Linux:__  (New Age International Ltd, Daryaganj, 2011). Available from: ProQuest Ebook Central. Chapter 1, Accessed: [23 September 2024].

- [3] __Linux__ "What is Linux", Accessed: Sep. 22, 2024. [Available](https://www.linux.com/what-is-linux/) & __Distrowatch__ Accessed: Sep. 22, 2024. [Available](https://distrowatch.com/)

- [4] Stallings W & Mohan R, __Computer organization and architecture: designing for performance__, (Packt Publishing, July 2018), 9th ed., International ed., (Pearson Education, March 2013) chap.1, pg 35

- [5] PC Guide - "CPUs for Deep Learning" (Accessed: Sep 23, 2024) [Available](https://www.pcguide.com/cpu/best-cpus-for-deep-learning/)

- [6] Puget Systems - "Hardware Recommendations for Machine Learning/AI" (Accessed: Sep 23, 2024) [Available](https://www.pugetsystems.com/solutions/ai-and-hpc-workstations/machine-learning-ai/hardware-recommendations/)

- [7] Shelley, Peek, Jerry D, __Unix Power Tools__ 3rd edition, (O'Reilly Learning, Beijing, 2003) 
