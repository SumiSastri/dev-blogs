---
layout: default
title: Your computer - the local environment
parent: The developer environment
nav_order: 7
---

# Your computer - the local environment

Your computer is a synonym for a software developer's local environment. As a developer, you are required to set up your computer with the right tools. Familiarity with your hardware is fundamental as the code you write on your computer communicates to servers in cloud-based environments. 

The internet enables this 2-way communication. Check [how the internet works](https://sumisastri.github.io/dev-blogs/learn-to-code-getting-started/part5-how-the-internet-works/) for a quick introduction from an earlier blog post.

Cloud storage hosts version control systems such as GitHub and data infrastructures that host your software packages and distribute them to end-users.

For [a quick overview of cloud environments](https://sumisastri.github.io/dev-blogs/server-environment/part1-types-of-data-infrastructures/), this link gives you a contextual background.

## What is the main function of a computer?

As a first step, getting under the hood of the basic functions a computer performs is essential.

Computers take inputs - words, images, videos - or data from users. This data must be stored locally in the computer's main memory, or the Random Access Memory (RAM) may also be used as an alternative storage bucket. It is then processed in the Central Processing Unit (CPU) or processor, and you receive an output. Input/Output (I/O) drivers also form an essential part of a computer as they transmit data between the computer and the external environment.

The University of Wollongong defines an OS as software that manages hardware in its student resources section [1]. Macs, Android and Windows have their own OSs, as do supercomputers, mobile and other smart devices.

A quick overview of how OSs work from [UWA](https://www.uow.edu.au/student/support-services/academic-skills/online-resources/technology-and-software/operating-systems/) shows you how an OS sits between hardware and your computer's software.

Computers have different system software to manage different aspects of your hardware - drivers for printers so you may print, handling files you write and store on the laptop, or access to read and edit them.

All these actions require the computer to interact with your needs as the user, the computer's software that uses the hardware's RAM and CPU. The CPU is the hardware's computing power and how efficiently or quickly it can handle your input and deliver an output.

So, when you buy a computer, you will often look at the specifications of CPU, RAM and storage available. Larger files - like videos need more storage and more compute power.

Software developers - especially frontend developers, therefore, are biased towards purchasing Apple, with the MacOS as the speed with which graphics and design are computed are perceived to be quicker and the user interface more friendly.

However, PC users with the Windows OS also use their PCs, and the choice or bias is often personal.

While these are the more familiar OSs, Linux is another open-source OS that programmers can load on or, in the case of Apple, may be preloaded with the Ubuntu distribution system. 

A better understanding of how Linux is different from the MacOS or Windows OS [2], the article __What is Linux__ on [the official Linux site](https://www.linux.com/what-is-linux/), is worth a read.

The article outlines a distribution system for Linux, as the Linux OS is not preloaded on many computers. 

In their book, _Linux_, Kothari et al. [3] observe that Linux, a clone of the Unix OS, can be installed on computers easily as it is open-source software. Unix is mainly loaded on servers rather than computers and requires a commercial installation license.

The advantage of having Linux on your computer is that it offers a consistent application interface between computers and servers.

The biggest challenge is the lack of interoperability between computers - a MacOS and programs run on a Mac must be adapted to run on a Windows OS. Using Linux everywhere helps overcome this challenge.

## How does your computer perform these functions?

The overview in the last section is reductive, as it merely provides a structure within which a computer performs its specialised tasks.

Computers have millions of electronic components performing specialised tasks, which I will briefly outline in this section.

Stallings, defines the core functions of a computer as data movement, processing and storage and the control of these functions.

The processing and storage of data are combined with the movement of the data from the local machine to the external environment. The external environment could be servers. These servers could be on-premise or virtual servers in the cloud. Data can also be communicated to peripherals, such as printers.

Controlling all these 3 functions is vital and is performed by the I/O drivers.

These component parts do not live in isolation but are connected by a system bus. A system bus is an interconnection point between the processor, the memory and the I/O drivers via several conducting and connecting wires.

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

Familiarise yourself with the computer terminal, this series’ [next article](https://sumisastri.github.io/dev-blogs/local-environment/part2-the-terminal/), and the command line interface (CLI). Follow that up with the section on computer shells to understand the role shells play in customising your local environment.

Once you are familiar with the CLI and computer shells, you can write your first scripts and look at the tooling checklist for guidance.

The series [Installfest](https://sumisastri.github.io/dev-blogs/installfest/) then takes you into customising your local environment if you are using the JavaScript programming language.

With every organisation you join customising of your work laptop will be an important first step to controlling your workflow, and investing time in learning these fundamentals is time well spent!


#### EXTERNAL REFERENCES

- [1]  __University of Wollongong Australia__ "Understanding operating systems", Accessed: Sep. 22, 2024. [Available](https://www.uow.edu.au/student/support-services/academic-skills/online-resources/technology-and-software/operating-systems/)

- [2] __Linux__ "What is Linux", Accessed: Sep. 22, 2024. [Available](https://www.linux.com/what-is-linux/)

- [3] Kothari, D, Shriram, K, & Sundaram, R 2011,__Linux:__  (New Age International Ltd, Daryaganj, 2011). Available from: ProQuest Ebook Central. Accessed: [23 September 2024].

- [4] Stallings W & Mohan R, __Computer organization and architecture: designing for performance__ , 1st edn (Packt Publishing, July 2018), 9th ed., International ed., (Pearson Education, March 2013) chap.1, pg 35

- [5] PC Guide - "CPUs for Deep Learning" (Accessed: Sep 23, 2024) [Available](https://www.pcguide.com/cpu/best-cpus-for-deep-learning/)

- [6]- Puget Systems - "Hardware Recommendations for Machine Learning/AI" (Accessed: Sep 23, 2024) [Available](https://www.pugetsystems.com/solutions/ai-and-hpc-workstations/machine-learning-ai/hardware-recommendations/)