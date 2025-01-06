---
layout: default
title: How computers process data
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# How computers process data

A computer's behavior is expressed in code and data that is contained within programs, or processes.  Program processes, typically run on a computer, or operating system (OS) of a machine. Resources that manage processes are finite, and we can only start to manage our processes when we know what they're doing to the machine.

Every action an OS undertakes must be executed in a processor nested in the CPU (Central Processing Unit) to produce the desired output. A  CPU may be housed in a core, a computer may have one or more cores. It is the location where memory addresses and data are stored in registers.

A process is the execution of a compute process in the processor. The CPU and cores manage these processes and the speed of their execution, based on a clock rate, which is 1 second of a clock. Some processes are executed in less than a second - milliseconds or even nanoseconds.

For any process to be executed a set of predetermined steps need to be followed as processes are part of the binary units of dispatching information consuming competing resources.[1] A process has to create necessary data structures, find the executable code on the disk, load it on to memory and start execution of the program.

To ensure efficient and effective processes, each process has unique identity number allocated.  The PID (process identity) numbers need to be converted into binary where the binary processes are PID 0 and PID 1. PID 0 is called the swapper process, it runs when hardware is turned on and swaps the processes it contains to PID 1. The PID 1 process is considered the ancestor to all processes as it initialises all further processes. The initialisation or "init" process are run and PID 1 is referred to as the init process.

Compute power - or the speed with which your computer can run programs depends on how may processes you may want to execute and the compute power of the processors to deal with them.

This enables resource management for competing and limited space in RAM (random access memory), disc space, CPUs (central processing units), external peripherals like printers, etc., The binary system is used as it is a lightweight method to transport data and information. Additionally, it is ideally equipped to trasmit data to a computer is because a computer is a series of switches, or transistors and wires that run programs stored in memory switching the processes on and off.

Resource management has become both more complex and simple. Complex because there are several more processes to complete, simpler because hardware has adapted to processing more data more efficiently.

For decades, the clock speed of a computer's CPU was measured in MHz, with higher clock speeds generally indicating a faster processor. In the early 2000s, Intel, AMD, and IBM all released processors with clock speeds over 1,000 MHz, so they began measuring clock speeds in GHz rather than MHz. Within several years of the first 1 GHz processors, new processors had clock speeds over 4 GHz.

These processes now are measured in gigahertz. A gigahertz (GHz) is a unit of measurement for frequency, equal to 1,000,000,000 hertz (Hz) or 1,000 megahertz (MHz). Since one hertz means that something cycles at a frequency of once per second, one gigahertz means that whatever is being measured cycles one billion times per second. While it can measure anything that repeats within that range, in the context of computers and electronics it often refers to the speed of a computer's processor or the radio frequency of Wi-Fi and other wireless communication. [2]

Additionally, the number of cores have increased to 16 cores each processing information up from single cores not that many years ago.

## Types of processing

Processing, as well has evolved with several different types of processing of data accommodating the new needs of processors and resource allocation [3]

Serial processing:  The processor would work on each process in turn, fully completing one before moving onto another. Good for small number of programs, but it makes a computer pretty unusable when you want to do multiple things at once.

Concurrent processing: A processor executing one process at a time by switching between each process, completing them in smaller steps. This masks the time it actually takes to do the job - with which a single processor is the same amount of time to process the job, the difference is by switching between processes results in all the jobs being completed at the same time. For example - 3 jobs taking 30 seconds run concurrently finish in 30 seconds, even though each job takes 30 seconds. Run serially the job finishes the first in 30 seconds, then the next and finally the third taking 90 seconds to complete.

Parallel processing: Using more than one processor with an OS using a combination of parallel and concurrent processing.  

Resources on a computer are finite, and we can only start to manage our processes when we know what they're doing to the machine.

## The component parts of a computer process

 The  PID, is a number by which the process can be referred to. This is unique at any given time, but not unique over longer periods. The PID will be reused by another process eventually, after the original has ended. We can represent the process code and data as one because by the time code is being executed in a process, it can be thought of as data itself. Any good method for inspecting processes will show us the program or command used to start the process, which should give us a clue about what the process is trying to achieve.

 The first processes 0 starts with the start of the hardware, process 0 forks and starts process 1 which is a copy of the the first process. This "spawn" receives the parent PID for processing data. If an error occurs at this stage the process reverts to 0 and the program exits.

 Compute time of the CPU in executing the process: This is often expressed in absolute terms as the number of seconds, minutes, or hours that processes have spent executing the process [1].

 Processes are then loaded to a register, registers form blocks of memory which are loaded on pages and a group of pages are called a frame. Identified by their PIDs, processes are then executed according to a set of rules depending on where the process is being executed or completed.

## Hierarchy of processes

 There is a hierarchy of processes (called Nice) where the lower the quotient, the quicker the job is processed.

 Spawned processes or threads: A spawned process from an individual process creates a thread. Threads come with less overhead than all other processes. Threads are a way of having one process achieve separate tasks while sharing memory and other resources.

Individual processes: Process groups will have a parent PID, which are spawns of PID 1. From PID 1 processes are batched into sub-groups of PIDs. These sub-process that are initiated (also known as a spawned process as it is a child of the parent) in batches or chunks of data - often referred to batching or chunking. Individual chunks of data have lower latency than process groups

Process groups: Related processes that are executed together are called process groups. Signals are used to across all the processes in a process group so that the group receives the same communication from the OS. Files with their extensions - `.txt` `.html` - could be batched for processing and routed to their binary or bin folders. Signals are transported on "data buses" between processes on a register.

Sessions: Used to manage all of the execution that a user may start through running programs. When a user session ends, this means the OS can easily end all of the related execution. A session usually relates to the processing of a page of processes.

Processes closest to the CPU, come with the least overhead (fastest to process) and have the lowest number in the memory quotient or Nice, while the hard drive has the highest latency.

## Process states and the process control block or PCB

 All processes require a PCB, or a process control block to execute. A PCB is the information associated with each process that describes its exectuion and process state. It includes the PID, the process state, the program counter, the registers, the list of open files and the memory limit of the register. The PCB stores all the information so that execution can be resumed later if the process execution is interupted.

 As a process executes, it changes state during the process life cycle from:

- ready when the process is waiting to be assigned to a process
- waiting when the process is dependent on some event to occur before it can be processed
- new the state where the process is being created
- running when the process instructions are invoked and running
- terminated when the process is interuppted and fails or successfully runs and completes

 As each process has its own memory space and area of RAM, the state of one process, therefore, does not affect another. Equally, each process has a virtual CPU so that different processing methodologies can be used in the execution of the process.

## What is the difference between a process and a job?

A job is equivalent to a process group. Jobs are process groups in action during a user session. There are different types of jobs.

Foreground job - a single parent job submitted with a command(standard input) on the command line interface (CLI). Standard input is often shortened to `stdin`

Background jobs  - created or spawned from the foregroup, the job will get executed successfully (produce a standard output shortened to `stdout`) or when it runs into a processing problem will echo out (print) an error (standard error).

Suspended jobs - run in the foreground to tell the background job to stop or suspend the process. This is done via a signal that tells the job to pause or completely abandon execution.

__Some examples of suspend signals__

CLEAR or keyboard interrupt is sent to a process when Ctrl+C is used

The QUIT signal is sent to terminate a process and dump its memory, which can be useful for debugging. In Vim this command can be `q` - quit, `qa` quit all processes and `wqa` write and quit all processes. The write function saves the information in the file before quitting, while quit and quit all exit without saving.

KILL is a signal most often used when we're terminating a stubborn, otherwise frozen process. Any process receiving a KILL signal must end immediately and will not get a chance to perform cleanup operations. KILL sends a wide variety of signals eg: p-KILL is to kill a process, if a Node process is running and you want to terminate all Node processes that are running you can run p-KILL Node. NodeJS or Node, is a JavaScript runtime environment.

STOP is used to suspend a running process. Stop spelled S‑T‑P is the same as Control+Z on a foreground job, and it is possible for a process to ignore it. Ctrl+Z will suspend the foreground job, this is useful if you want to switch from one long-running job to a job that has a shorter execution time and return to the longer one without losing the information that has already been processed.

CONTINUE is the signal sent to a suspended process informing it to continue execution.

## What is the difference between a signal and a process

When processes are running, the way to communicate within a process is done with a signals.
Signals offer processes a form of inter‑process communication using a signal number as an identifier of the signal sent. Signals are usually sent asynchronously.

Processes can register their own signal handlers to react to different types of signal, or they can take a blanket default signal for the process.

Signals can also stop, terminate or suspend execution of a process in order to take some other action. While they ressemble an interuption, signals are slightly different.

## What is the difference between a signal and an interupt?

Interrupts also stop execution for some other action to be taken.

However, interrupts are a method for the CPU. They occur with instances of memory page faults, and accepting hardware input, for example.

## What is the difference between a signal and a semaphore

A semaphore has 2 operations up and down, in an OS, a semaphore contains both a signal and an interupt. Therefore a semaphore can operate both on system buses as well as on the CPU or kernel level.[5]

A binary semaphore has the binary values of 0 and 1 but a counting semaphore can use multiplexors signals like wait, block and wakeup can be used - a traditional red-amber-green signalling, seen on traffic lights.

## Loading processes as units of memory

 RAM is used a fast storage location where the processor can keep the parts of the process's data that aren't currently being executed.

 Hardrive is the computer disc's storage capacity.

 RAM does not store data between reboot so it is referred to as volatile. [6] And normally, only the OS has a choice over what is put here. For processes, it is generally measured in megabytes, gigabytes, or as a percentage of all the memory available and this is where the confusion can arise. When someone describes a laptop as having 32 GB of memory, this storage is what they're referring to. RAM is additional "fast" storage.

#### EXTERNAL REFERENCES - How computers process data

- [1] George Charalambous (2024), __Operating Systems Processes & Resource management (1)__ , PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5377599_1)

- [2] __Tech terms__ (Accessed: Dec. 14, 2022) [Available](https://techterms.com/definition/gigahertz)

- [3] __Plural Sight__ Premium PluralSight [Tutorial](https://app.pluralsight.com/library/courses/managing-jobs-processes-bash-z-shell/table-of-contents)

- [4] __Crucial__ Understanding RAM (Accessed: Dec. 14, 2022) [Available](https://www.crucial.com/articles/about-memory/support-what-does-computer-memory-do)

- [5] __Life Wire__ How a CPU processes information (Accessed: Dec. 14, 2022) [Available](https://www.lifewire.com/what-is-a-cpu-2618150)

- [6] __Baeldung__ "What is a semaphore?" (Accessed: Dec. 14, 2022) [Available](https://www.baeldung.com/cs/semaphore)
