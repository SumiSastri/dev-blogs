---
layout: default
title: How computers process data
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# How computers process data once they are loaded on to memory registers

A computer's behavior is determined by code and data contained within programs, also known as processes. These processes run on the computer's or target machine's operating system (OS), which manages the finite resources required for execution. Understanding how processes work is key to managing them effectively.

## The role of the CPU, cores, and registers

Every action an OS undertakes must be executed in a processor nested in the CPU (Central Processing Unit) to produce the desired output. A CPU may be housed in a core, a computer may have one or more cores. It is the location where memory addresses and data are stored in registers.

Registers are small, fast memory locations inside the CPU that temporarily hold data and instructions during execution.
The OS loads data from RAM (Random Access Memory) onto CPU registers. RAM serves as fast, volatile storage, enabling quick access to active processes and data. However, when you compare RAM to a register has a larger capacity but is slower to access, the registers are the closest to the CPU, therefore process data faster, says Westminster's George Charalambous[1].

## How processes are executed

__Code compilation__

Source code written in a high-level programming language is translated into intermediate code or bytecode by a compiler. This intermediate representation ensures compatibility across different hardware platforms and facilitates further optimization. This intermediate or byte-code activates different parts of the memory to ensure a code block's executable object runs effectively on the target machine, converting it into binary or bit-code.

*Intermediate code and memory activation*

The intermediate code produced during compilation plays a vital role in process execution.

It serves as an abstraction layer between high-level source code and machine-specific binary instructions. It also activates specific areas of memory and hardware resources to ensure the program runs effectively on the target machine. This approach enables efficient resource utilization and allows the same code to be executed on different hardware architectures with minimal changes.

__Preparation for execution__

The OS allocates memory and creates necessary data structures for the process. The compiled executable code (binary format) is located on the target machine and loaded into memory registers.

For a process to execute, the CPU has to create necessary data structures, and find the executable code, the standard executable object created by a high-level software language's compiler. The object needs to be located on the target machine and loaded into memory registers to start the execution of the program. The executable is then converted into binary as part of the process of executing a process during the process lifecycle.

__Execution and the instruction cycle__

During execution, the compiled executable is already in binary format or converted to binary before execution.
These binary instructions activate specific circuits within the CPU to perform operations such as arithmetic calculations, data transfers, and logic evaluations.

The instruction cycle starts as the CPU fetches the instructions and data from the memory registers.The fetched instructions are decoded and executed by the CPU. The process continues until the program completes or terminates.

### What is the process lifecycle

When a computer starts, the CPU executes instructions stored in the bootloader, which initializes the OS kernel. The kernel creates a special process known as PID 1, often called the init process. This is the ancestor of all subsequent processes in the system. It starts the process lifecycle at initialisation and ends at process execution.

__Process initialization__

The starting-up or booting process of the computer results in the OS creating the first process (PID 0).  Known as the swapper process, it uniquely indentifies the parent of all processes. This is an internal kernel process responsible for initializing hardware, managing memory, and scheduling the CPU.

The swapper process (PID 0) runs during hardware initialization. It performs essential tasks during hardware initialization and system startup. Once its tasks are complete, PID 0 forks a copy of itself to create PID 1, also known as the init process.

Init Process (PID 1): The init process is the first user-space process[2]. It is responsible for setting up the environment for user and system programs by spawning other processes. These processes handle various tasks, such as loading and executing programs, managing peripherals, and initializing user-space services.  The PID 1 process is considered the ancestor to all processes as it initialises all further processes. The initialisation or "init" process is run and PID 1 is referred to as the init process.

The first process 0 starts with the start of the hardware, process 0 forks and starts process 1 which is a copy of the first process. This "spawn" receives the parent PID for processing data. If an error occurs at this stage the process reverts to 0 and the program exits.

__Process execution and the role of the process control block (PCB)__

Every process in a computer system requires a Process Control Block (PCB) for execution. The PCB is a data structure that contains essential information about the process, enabling the OS to manage and execute it effectively. Key elements stored in the PCB include:

- Process ID (PID): A unique identifier for the process.
- Process State: The current state of the process (e.g., ready, running, waiting, etc.).
- Program Counter: Indicates the address of the next instruction to be executed.
- Registers: Stores intermediate data and instructions for execution.
- Memory Limits: Defines the memory allocated for the process.
- Open File List: Tracks files the process is using.

The PCB ensures that a process can be paused and later resumed without losing its execution context, to paraphrase Charalambous'
lecture notes [3].

__Process states during execution__

As a process moves through its lifecycle, it transitions through various states:

- New: The process is being created.
- Ready: The process is prepared and waiting to be assigned to the CPU.
- Running: The CPU is actively executing the process instructions.
- Waiting: The process is paused, waiting for an event (e.g., I/O completion).
- Terminated: The process has completed execution or has been interrupted.

Each process has its own memory space and virtual CPU, ensuring isolation and independence from other processes.

__The role of binary in process execution__

At the heart of process execution is the binary system, which efficiently represents data as 0s and 1s. Computers are composed of transistors and switches that rely on binary signals to operate. During execution, the binary instructions activate specific circuits within the CPU to perform tasks such as data manipulation, arithmetic, and logic operations. Stallings et al, outline the types of processing in the next section [4].

### Types of processing

When managing and executing processes, the system can use different processing techniques depending on the hardware capabilities and the nature of the tasks.

__Serial processing__

Serial processing involves the processor working on each process sequentially, fully completing one process before moving on to another. Serial processing is suitable for systems running a small number of non-overlapping tasks or when tasks must be executed in strict order.

__Concurrent processing the illusion of parallelism__

In concurrent processing, the CPU switches between multiple processes, allocating small time slices to each. Although only one process runs at a time, the rapid switching creates the illusion of parallelism. Concurrent processing is ideal for multitasking environments where tasks are independent, and the goal is to maximize resource utilization and improve responsiveness.

__Parallel processing__

Parallel processing utilizes multiple processors (or cores) to execute multiple processes simultaneously. This allows true parallelism, where different tasks or parts of a single task are executed at the same time.Parallel processing is best suited for systems with multiple processors and workloads that can be divided into smaller, independent tasks.

### What role does the CPU play in process management

The CPU drives the instructions of the data lifecycle - from creation to storage, to access and mutation and then finally to deallocation from the memory registers. These states define how instructions are processed and how memory is accessed, modified, and released [5].

The CPU operates as a finite state machine, executing instructions in the following cycle:

- Fetch: Retrieve the next instruction from memory.
- Decode: Interpret the instruction to determine the required operation.
- Execute: Perform the operation, which could involve arithmetic calculations, data movement, or I/O operations.
- Store: Write results back to memory or registers.

This process, known as the instruction cycle, repeats billions of times per second.

Compute power - or the speed with which your computer can run programs depends on how many processes you may want to execute and the computing power of the processors to deal with them.

The speed at which the CPU executes instructions is governed by its clock rate. The CPU executes processes based on its clock rate, measured in hertz (Hz), which determines how many instructions it can execute per second.

For decades, the clock speed of a computer's CPU was measured in MHz, with higher clock speeds generally indicating a faster processor. In the early 2000s, Intel, AMD, and IBM all released processors with clock speeds over 1000 megahertz (MHz), so they began measuring clock speeds in gigahertz (GHz) rather than MHz [7]. Within several years of the first 1 GHz processors, new processors have clock speeds over 4 GHz meaning 4-billion of cycles per second. CPUs can perform tasks in nanoseconds due to this rapid clock rate.

### Hierarchy of processes

Processes in a computer system operate in a structured hierarchy, enabling efficient management and execution. This hierarchy is influenced by factors like priority (determined by the "Nice" value), resource allocation, and process relationships.

*Priority and the "Nice" value*

The "Nice" value determines the priority of a process. Processes with a lower Nice value have higher priority and are allocated more CPU time, enabling them to complete faster. Conversely, processes with a higher Nice value are considered less urgent and are allocated less CPU time. The Nice value ranges from -20 (highest priority) to 19 (lowest priority).

Example:A real-time video processing application may have a Nice value of -5 to ensure smooth performance, while a background file indexing process may have a Nice value of 10 to minimize its impact on other tasks.

*Spawned processes and threads*

A spawned process is a child process created by a parent process. When a process spawns another process, it shares a hierarchical relationship, where the parent oversees and manages the child.

Within a spawned process, threads can be created. Threads are lightweight sub-processes that allow a single process to perform multiple tasks concurrently while sharing the same memory and resources. Threads have less overhead compared to processes, making them more efficient for tasks that require parallelism.

Example: A web browser may use one thread to render the page's layout, another thread to handle user input, and additional threads to load images and scripts—all within a single parent process.

*Individual processes*

Processes are often grouped into parent and child relationships. Each parent process can spawn one or more child processes, which inherit certain attributes from the parent. These processes are identified by unique process IDs (PIDs).

*Process groups*

Processes that share a common purpose or function are grouped into process groups, which are identified by a Group ID (GID). Signals sent by the OS can be broadcast to all processes within a group, ensuring synchronized communication and execution.

*Batching and chunking*

When processing large datasets, individual processes may work on batches or chunks of data. These smaller chunks reduce latency and improve processing efficiency.

Example: A file compression tool may divide a large file into smaller chunks, compress each chunk in parallel, and then combine the results into a single compressed file.

*Process groups*

A process group consists of related processes that work together to achieve a shared goal. Process groups are managed collectively, allowing the OS to send signals (e.g., terminate or suspend) to all processes in the group simultaneously.

File Processing Example: Files with specific extensions (e.g., .txt, .html) may be grouped for batch processing. The processes responsible for these files could be routed to their respective directories or binary folders (e.g., /bin), enabling streamlined management.

__Signals__

Signals and data are transported between processes via data buses, ensuring coordinated execution. These buses enable fast communication, particularly when processes share the same memory space.

__Sessions__

A session is a higher-level grouping that encompasses all processes initiated by a user during their login session. Sessions provide an organized way to manage the execution of multiple processes and ensure that they are terminated when the session ends.

Example: When a user logs into a Linux terminal, the shell (e.g., Bash) starts a session. All commands and programs executed during that session belong to the same session group. If the user logs out, the session ends, and the OS terminates all associated processes.

__Proximity to the CPU and latency__

Processes closer to the CPU are executed faster because they require less overhead. The hierarchy of execution is as follows:
Registers: Processes in the CPU registers are executed with the least latency due to their proximity to the CPU cores.
RAM: Processes in memory are slightly slower but still efficient due to the fast access speed of RAM.
Hard Drive: Processes that rely on disk I/O (e.g., reading or writing data to storage) have the highest latency because of the slower access speed of hard drives or SSDs.

__Process hierarchy in action__
Consider a web server handling multiple requests:

- Threads: Each request spawns a thread within the same parent process, allowing concurrent handling of multiple users.
- Process Groups: The server groups related processes, such as database queries and web page rendering, into a process group for coordinated execution.
- Sessions: Each user session (e.g., logging into an account) creates a unique session, ensuring that user-specific processes terminate when the session ends.
- Priority: Real-time tasks, like serving dynamic content, are assigned a lower Nice value for higher priority, while background maintenance tasks (e.g., log rotation) are assigned higher Nice values.

By leveraging this hierarchy, the OS ensures efficient management of system resources, prioritizing tasks that require immediate attention while handling background operations with minimal disruption.

## Processes, Jobs, Signals, Interrupts, and Semaphores in System Architecture

To understand the internal hardware architecture and how different system components work together, it is important to differentiate between processes, jobs, signals, interrupts, and semaphores. Below is an ordered explanation:

__Processes and Jobs__

A *process* is a program in execution. It is a fundamental unit of work within an operating system (OS) and includes the program code, its execution state, memory, and resources like open files and registers. Processes can be:

- Foreground processes: Interact directly with the user (e.g., a command-line program running in the terminal).
- Background processes: Run without user interaction, often performing tasks like backups or monitoring.

A *job* is equivalent to a process group, which is a collection of related processes. Jobs operate within a user session and can be in different states:

- Foreground Job: A single job executed via a command in the command-line interface (CLI) that accepts user input (stdin).
- Background Job: A job running without user interaction, producing output (stdout) or errors (stderr) asynchronously.
- Suspended Job: A job that is paused (but not terminated) by the user or OS until it is explicitly resumed.

Examples of Job States:

- Foreground Job: Running a text editor like vim directly in the terminal.
- Background Job: Running a backup script using &, e.g., backup.sh &.
- Suspended Job: Pressing Ctrl+Z to pause a running process and using fg or bg to resume it.

__Signals__

Signals are a mechanism for communication between processes or between the OS and a process. They are identifiers (numbers) sent asynchronously to notify processes of specific events, allowing them to take action or change behavior.

*What signals do*

- Terminate or Stop a Process: Signals can stop, pause, or terminate processes.
- Inform Processes: Signals notify processes of important system events, such as interrupts or errors.
- Trigger Handlers: Processes can register custom signal handlers to react to specific signals or use default behaviors.

*Common signals*

- `Ctrl+C` (Interrupt): Sends the SIGINT signal to terminate the foreground process.
- `Ctrl+Z` (Stop): Sends the SIGTSTP signal to suspend the foreground job.
- `p -kill` Sends the SIGKILL signal to forcefully terminate a process without cleanup. Example: kill -9 <PID> forcefully kills a process/ pkill Node terminates all Node.js processes.
- `q` Sends SIGQUIT, which terminates a process and creates a memory dump for debugging.
- `continue` Sends SIGCONT, resuming a suspended process.

__Interrupts__

Interrupts differ from signals in that they are low-level mechanisms used by the CPU to handle external events or system needs. Interrupts temporarily stop the current execution to allow the CPU to handle a higher-priority task.

*Types of interrupts*

- Hardware Interrupts: Triggered by hardware events like keyboard input, mouse clicks, or network activity.
- Example: A keypress triggers an interrupt that the CPU processes to display the typed character.
- Software Interrupts: Triggered by system calls or errors (e.g., a division by zero error).
- Memory Page Faults: Triggered when a program attempts to access a memory page not currently in physical RAM.

### The difference between signals and interrupts

| __Aspect__     | __Signal__                               | __Interrupt__                           |
|-----------------|------------------------------------------|------------------------------------------|
| __Purpose__     | Notify processes of system or user events. | Notify the CPU of hardware or system events. |
| __Triggered By__| OS or processes.                        | Hardware or software.                   |
| __Scope__       | Process-level communication.            | CPU-level execution handling.           |
| __Examples__    | `SIGKILL`, `SIGINT`, `SIGTSTP`.         | Keypress, network packet arrival, page faults. |


__Semaphores__

A semaphore is a synchronization mechanism used to manage access to shared resources among multiple processes or threads. It differs from signals and interrupts in its function and usage.[8]

*Types of semaphores*

- Binary Semaphore: Acts like a flag with two states—0 (locked) or 1 (unlocked). It is used to ensure mutual exclusion for a critical section. Example: Controlling access to a shared printer so that only one process can print at a time.

- Counting Semaphore: Allows multiple threads or processes to access a resource up to a defined limit. Example: Limiting the number of threads accessing a database connection pool.

*Semaphores in action*

Semaphores can manage both:

- System Buses: Control access to shared resources like memory or I/O devices.
- Kernel-Level Operations: Ensure orderly execution of processes or threads in multitasking environments.

*Semaphore operations*

- Wait (Down): Decrements the semaphore's value, blocking a process if the value is zero.
- Signal (Up): Increments the semaphore's value, allowing blocked processes to proceed.

| __Aspect__          | __Semaphore__                                   | __Signal__                      | __Interrupt__                            |
|----------------------|------------------------------------------------|----------------------------------|------------------------------------------|
| __Function__         | Synchronization of shared resources.           | Process communication.          | Handling CPU events or hardware input.   |
| __Triggering Entity__| OS or processes accessing shared resources.     | OS or user.                     | Hardware or system-level operations.     |
| __Example Use Case__ | Controlling access to shared memory or devices. | Sending `SIGTERM` to stop a process. | Keypress interrupt handling by the CPU.  |

### Hierarchy of Processes in Architecture

In system architecture, the hierarchy reflects the relationship between jobs, processes, and their underlying management:

Processes: Basic units of execution.
Threads: Lightweight sub-processes within a parent process.
Jobs: Process groups within user sessions.
Sessions: Group of jobs associated with a user session.
Signals, Interrupts, and Semaphores: Tools for communication, synchronization, and execution control across processes and hardware.

## Process Scheduling Algorithms

The operating system (OS) uses various process scheduling algorithms to manage the execution of processes. These algorithms are crucial for allocating CPU time and resources to processes in a fair and efficient manner, ensuring that all processes receive adequate attention, while avoiding starvation and maximizing system throughput. Here’s a breakdown of some common scheduling algorithms:

__First-Come, First-Served (FCFS)/ FIFO (First in first out)__

FCFS is one of the simplest scheduling algorithms. In this method, processes are executed in the order in which they arrive in the ready queue.

<!-- _How it works_ 

When the CPU is free, the process that has been in the queue the longest is executed first. Once it finishes, the next process in line gets CPU time, and so on.
    - Pros:
Simple to implement and understand.
Fair in terms of order of arrival.
    - Cons:
Convoy Effect: If a long process arrives before a shorter one, the shorter process will have to wait, which can lead to inefficiency.No consideration of process priority or burst time. -->

__Round Robin (RR)__

The Round Robin (RR) algorithm is a preemptive version of First-Come, First-Served (FCFS). It divides CPU time into fixed-sized time slices (or quantum) and assigns each process a time slice to run. If a process does not finish in its assigned time slice, it is put back into the ready queue for the next round.

<!-- _How it works_

Each process in the ready queue is assigned a fixed time slice, which it can use to execute. If the process does not finish in the time slice, it is preempted, and the CPU is given to the next process in line.
    - Pros:
Time-sharing system, ideal for multi-user systems.
Fair for processes that require similar amounts of time.
    - Cons:
If the time slice is too large, it behaves like FCFS.
If the time slice is too small, it increases the context-switching overhead. -->

__Priority Scheduling__

Priority Scheduling assigns a priority value to each process, and processes with higher priority are executed before those with lower priority. This algorithm can be either preemptive or non-preemptive, depending on whether or not a running process can be preempted in favor of a higher-priority process.

<!-- How it works: In preemptive priority scheduling, if a process with a higher priority arrives while a lower-priority process is running, the lower-priority process is preempted and placed back in the ready queue. In non-preemptive priority scheduling, once a process starts running, it will continue until it finishes or voluntarily yields the CPU.
Pros:
Allows more critical processes to get CPU time earlier.
Can prioritize real-time systems or time-sensitive tasks.
Cons:
Starvation: Lower priority processes may never get a chance to execute if higher priority processes continuously arrive.
Can be difficult to manage priorities dynamically.
Example:

Processes A, B, and C have priorities 1, 2, and 3, respectively (with 1 being the highest priority).
Process A will execute first, then Process B, and finally Process C.
In case Process D arrives with a higher priority (priority 1), Process A will be preempted, and Process D will execute first. -->

__Shortest Job Next (SJN)__

Shortest Job Next (SJN), also known as Shortest Job First (SJF), is a non-preemptive algorithm that selects the process with the shortest burst time to execute next. The burst time is the amount of time a process will need to run before it completes.

<!-- How it works: The process that has the smallest estimated run time is chosen first. This method minimizes the average waiting time, but it requires knowledge of the execution time of processes, which is often difficult to predict.
Pros:
Optimizes the average waiting time and turnaround time.
Cons:
Starvation: Longer processes may never get executed if shorter processes keep arriving.
Requires prior knowledge of process burst time.
Example:

Process A needs 5 seconds, Process B needs 2 seconds, and Process C needs 4 seconds.
Process B will execute first, then Process C, and finally Process A. -->

__Multilevel Queue Scheduling__

Multilevel Queue Scheduling is a scheduling strategy where processes are divided into different queues based on their priority or type (interactive processes, CPU-bound processes, etc.). Each queue has its own scheduling algorithm, and processes are selected from the highest priority queue.

<!-- How it works: Processes are assigned to different queues based on their characteristics, and each queue has its own scheduling algorithm (such as FCFS, RR, etc.). The OS selects processes based on priority, with higher-priority queues being selected first.
Pros:
More flexible and dynamic compared to simpler algorithms.
Can prioritize interactive processes over CPU-bound ones.
Cons:
Can become complex to manage multiple queues.
Processes in lower-priority queues may experience starvation.
Example:

Queue 1 (high priority) uses Round Robin, Queue 2 (medium priority) uses FCFS, and Queue 3 (low priority) uses SJF.
Process A goes to Queue 1 (interactive), Process B goes to Queue 2 (CPU-bound), and Process C goes to Queue 3 (long-running job). -->

__Multilevel Feedback Queue Scheduling__

Multilevel Feedback Queue Scheduling is a more advanced version of multilevel queue scheduling. In this algorithm, processes can move between queues based on their behavior and CPU usage. If a process uses too much CPU time, it might be moved to a lower-priority queue. If a process is interactive and requires less CPU time, it may be moved to a higher-priority queue.

<!-- How it works: Processes are initially assigned to the highest priority queue and can be moved to lower priority queues based on their execution time. The algorithm dynamically adjusts the priority of processes to balance responsiveness and throughput.
Pros:
Adaptable and efficient for a wide range of process types.
Prevents starvation by dynamically adjusting process priorities.
Cons:
Complex to implement and manage.
Might result in higher overhead due to frequent process re-prioritization.
Example:

Process A is initially in Queue 1 (interactive), but if it starts to use excessive CPU, it is moved to Queue 2 (CPU-bound). If it becomes interactive again, it may be moved back to Queue 1. -->

## How modern CPUs cope with increasing data-processing demands of Gen AI

Resource management has become both more complex and simple. Complex because there are several more processes to complete, simpler because hardware has adapted to processing more data more efficiently.

Processing jobs through the process life cycle is complex with many steps executed in nanoseconds. A program process is the execution of a series of instructions in the CPU, guided by (OS). The CPU contains one or more cores, which are independent processing units capable of executing instructions concurrently. Each core contains registers and the OS manages memory, processor time, and peripherals to ensure smooth execution of processes.

Modern CPUs include up to 16 cores or more, enabling parallel processing. Each core can execute instructions independently, allowing for greater multitasking and performance. Advances in chip manufacturing and design, hardware and software have made it easier to manage increasing data loads, balancing efficiency and complexity.

The combination of fast memory registers, efficient instruction execution by CPUs, and intelligent OS resource management ensures that processes run smoothly. Advances in clock speeds, core counts, and resource allocation algorithms have made modern computing systems vastly more capable than their predecessors.

By using these scheduling algorithms, the OS efficiently manages CPU time and ensures that processes are executed in an optimal order. The choice of scheduling algorithm is influenced by the type of system and the types of processes being handled. Some algorithms prioritize fairness, while others optimize for throughput or response time. The OS may even combine these algorithms for different types of tasks to achieve a balanced approach to process management.

As we move into the era of next-level processing, challenges presented by technologies like generative AI (gen-AI) are reshaping the landscape of resource management. Gen-AI models, such as large language models and neural networks, require immense computational power, vast datasets, and high-performance hardware. Training these models involves processing terabytes of data and executing billions of operations, all of which place significant demands on CPU cores, memory, storage, and networking.

To meet these challenges, resource management must evolve to handle these massive loads more efficiently. Traditional scheduling algorithms and CPU architectures are being tested by the sheer scale of AI workloads. Multi-core and distributed processing will be critical to ensure that AI tasks are processed in parallel, minimizing latency and maximizing throughput. Furthermore, the integration of GPUs and specialized hardware accelerators is increasingly important for AI tasks. The future of processing must balance performance, energy efficiency, and scalability to support the ongoing rise of AI technologies.

#### EXTERNAL RESOURCES

- [1] George Charalambous (2024), __Operating Systems Processes & Resource management (1)__ , PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5377599_1)

- [2] __Tech terms__ (Accessed: Dec. 14, 2022) [Available](https://techterms.com/definition/gigahertz)

- [3] George Charalambous (2024), __Computer Hardware (1)__, PDF slides [Available to MSc Computer Science Students MODULE: (2024) 7SENG012W.1](https://learning.westminster.ac.uk/ultra/courses/_98804_1/outline/file/_5377599_1)

- [4] William Stallings (2013), __Computer organization and architecture: designing for performance__ 9th ed., International ed., Pearson Education, March 2013, Available from: ProQuest Ebook Central

- [5] __Life Wire__ How a CPU processes information (Accessed: Dec. 14, 2022) [Available](https://www.lifewire.com/what-is-a-cpu-2618150)

- [6] __Plural Sight__ Premium PluralSight [Tutorial](https://app.pluralsight.com/library/courses/managing-jobs-processes-bash-z-shell/table-of-contents)

- [7] __Crucial__ Understanding RAM (Accessed: Dec. 14, 2022) [Available](https://www.crucial.com/articles/about-memory/support-what-does-computer-memory-do)

- [8] __Baeldung__ "What is a semaphore?" (Accessed: Dec. 14, 2022) [Available](https://www.baeldung.com/cs/semaphore)
