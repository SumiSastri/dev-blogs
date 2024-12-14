<!-- ---
layout: default
title: Memory management - key alogrithms
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# Memory management - key alogrithms




## Process management, images, memory and bit maps, linked lists

The first processes 0 starts with the start of the hardware, process 0 forks and starts process 1 which is a copy of the the first process. This "spawn" receives the parent PID for processing data. If an error occurs at this stage the process reverts to 0 and the program exits.

The spawned processes is placed into a process queue and allocated a memory register. Processes are then allocated pages. A memory page is a virtual block of memory with a fixed length. A frame is a paging system, also with a fixed length but with a physical space, rather than a virtual space in memory.

Programs access the virtual memory on a page. Pages supports processes larger than physical memory.

Memory is divided into bit, bit maps keep track of which pages are allocated and which are free

Memory allocation algorithm to link lists  - 2 lists allocated list and free list to represent blocks used by a process and free blockes

First fit
Next fit
Best fit
Worst fit
Quick fit


Memory map tables map virtual to physical pages

Paging algorithms are used to manage page space

- FIFO first in, first out
- LRU least recently used
- NFU not frequently used
- FIFO first in, first out



## Process deadlocks and deadlock management -->

<!-- Unary 1 - base one

Time stamp: around 50-56 mins

Binary 2 - base 2, range is 0-1




Octal - base 8, is used because binary is difficult to read. Range 0-7 ideal to define permissions as only 9 options required.

In binary 100 is read-only/ 110 is read-write/ 111 is read-write-execute. Converting this to an octal. R/W/X are the alphabets representing these 4-read / 6-read-write/ 7 read-write-execute (0777, 0700) self-group-others/ self yes-group-others no/chmod 0777/ 0700/ chmod 0600

Check ls -l 7 (all have read/write/execute)
0600 (4,2, 1) read and write
0400 - read only 4 in base 8 read only
0700 - r/w/execute base 8 (421)
0100 - read only

1.11.27
Hexadecimal - base 16 which is 0-9 and??

Decimal - base 10, 10 to the power of 0 is 1, 10 to the power of 2 is 10 multiplied by 10 is 100, thousand is 10 to the power of 3. Base ten 0-9 is the range

cd on its own goes into home directory
man tar - manual  -->