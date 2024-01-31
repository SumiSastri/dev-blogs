---
layout: default
parent: The developer environment
nav_order: 7
title: The terminal under the hood - computer processes
---

# The terminal under the hood - computer processes

A computer's behavior is expressed in code and data that is contained within programs that run in your computer hardware - or local environment, or operating system (OS).
 
Every action your OS undertakes must be executed in a processor nested in the CPU (Central Processing Unit) to produce the desired output. A CPU may be housed in a core, a computer may have one or more cores. 

A process is the execution of a compute process in the processor. The CPU and cores manage these processes and the speed of their execution.

Compute power - or the speed with which your computer can run programs depends on how may processes you may want to execute and the compute power of the processors to deal with them. 

 ## Types of processing

Serial processing:  The processor would work on each process in turn, fully completing one before moving onto another. Good for small number of programs, but it makes a computer pretty unusable when you want to do multiple things at once. 

Concurrent processing: A processor executing one process at a time by switching between each process, completing them in smaller steps. This masks the time it actually takes to do the job - with which a single processor is the same amount of time to process the job, the difference is by switching between processes results in all the jobs being completed at the same time. For example - 3 jobs taking 30 seconds run concurrently finish in 30 seconds, even though each job takes 30 seconds. Run serially the job finishes the first in 30 seconds, then the next and finally the third taking 90 seconds to complete.

Parallel processing: Using more than one processor with an OS using a combination of parallel and concurrent processing.  

Resources on a computer are finite, and we can only start to manage our processes when we know what they're doing to the machine.

## The component parts of a computer process

 The process ID, or PID: This is a number by which the process can be referred to. This is unique at any given time, but not unique over longer periods. The process ID will be reused by another process eventually, after the original has ended. We can represent the process code and data as one because by the time code is being executed in a process, it can be thought of as data itself. Any good method for inspecting processes will show us the program or command used to start the process, which should give us a clue about what the process is trying to achieve. 
 
 Compute time of the CPU in executing the process: This is often expressed in absolute terms as the number of seconds, minutes, or hours that processes have spent executing the process. [A good article to read - to understand how a CPU processes information]https://www.lifewire.com/what-is-a-cpu-2618150

 
 Random Access Memory or RAM:  Fast storage where the processor can keep the parts of the process's data that aren't currently being executed. [Understanding RAM](https://www.crucial.com/articles/about-memory/support-what-does-computer-memory-do) as different from computer storage is important. Computer storage capacity refers to the hard drive or disk on a computer. 
 
 RAM does not store data between reboot so it is referred to as volatile. And normally, only the OS has a choice over what is put here. For processes, it is generally measured in megabytes, gigabytes, or as a percentage of all the memory available and this is where the confusion can arise. When someone describes a laptop as having 32 GB of memory, this storage is what they're referring to. RAM is additional "fast" storage.

 ## Hierarchy of processes

 Sessions: Used to manage all of the execution that a user may start through running programs. When a user session ends, this means the OS can easily end all of the related execution. 
 
 Process groups: Related processes are executed together. Signals are used to across all the processes in a process group so that the group receives the same communication from the OS. 
 
 Individual processes: Each of these processes will have a parent PID inherited from the PID of the sub-process that initiated (also known as a spawned process as it is a child of the parent) it. 
 
Spawned processes or threads: A spawned process that creates a thread tends to come with less overhead than starting another process. Threads are a way of having one process achieve separate tasks while sharing memory and other resources.

## What is the difference between a process and a job?

A job is equivalent to a process group. Jobs are process groups in action during a user session.
There are different types of jobs.

Foreground job - a single parent job submitted with a command(standard input) on the command line interface (CLI). Standard input is often shortened to `stdin` 

Background jobs  - created or spawned from the foregroup, the job will get executed successfully (produce a standard output shortened to `stdout`) or when it runs into a processing problem will echo out (print) an error (standard error).

Suspended jobs - run in the foreground to tell the background job to stop or suspend the process. This is done via a signal that tells the job to pause or completely abandon execution.

__Some examples of suspend signals__

CLEAR or keyboard interrupt is sent to a process when Ctrl+C is used

The QUIT signal is sent to terminate a process and dump its memory, which can be useful for debugging. In Vim this command can be `q` - quit as well as `qa` quit all processes. 

KILL is a signal most often used when we're terminating a stubborn, otherwise frozen process. Any process receiving a KILL signal must end immediately and will not get a chance to perform cleanup operations. KILL sends a wide variety of signals eg: p-KILL is to kill a process, if a Node process is running and you want to terminate all Node processes that are running you can run p-KILL Node.

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

[Premium PluralSight content informs this section on computer processes and jobs](https://app.pluralsight.com/library/courses/managing-jobs-processes-bash-z-shell/table-of-contents)
