<!-- ---
layout: default
title: Memory management - key alogrithms
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# Memory management - key alogrithms

Words
Pages
Frames
Images


Allows bare sharing of the CPU based on given processes running. The algos are based on a single CPU not on multicore - this can be mapped to multicore using load balancing so that you can assign values to separate qs and randomise allocation of jobs to the processes based on how busy they are and other priority factors you can add on NICE is used to give access to the CPU.

If it is a kernel - high priority, user based lower value. The NICE value changes as a process sits in the q, increases selfish round robin - priority of jobs waiting in the new q so that they get accepted and run on the system

A process is dynamic depending on where it sits on the system - does not remain on a particualr site on the memory map, it can be moved based on the OS requirements. It can be allcoated and deallocated and moved. Deals with the image of the process when there is an OS, we ensure that we map our memory structures to the physcial structures - ie the RAM - a mechanism to protect process, sharing multiple instances of process running, so image of process needs to be shared when a process is created memory needs to be allocated according to page structure

Pages are swapped to and from the disc. A process called thrashing. A frame is a block of physical memory but a frame is virtual memory. There are 1-2-1 mapping of pages and frames.

Page frames need to have limited wastage of memory. 50% of wasteage of space allocation happens 0 small processes can't just create smaller paging  internal fragmentation happens.

Swap pages in and out easily because 121 mapping.

protection is hard to do - sticky bit to one change???
Swap space on hard drive - swap places in and out of memory - more time spent on thrashing rather than executing the program.

__Memory map tables__ 

It is a table that maps virtual pages to the physical frames - they are of the same size so this is used by the operating system to map where the process will be. The user will only see page addresses but they never see the frame addresses.

If a page is in memory, the table extracts the the information and map the info based on the offset. If it is on the hard drive a page fault is created then the page is swapped from the swap space in the hard drive into the RAM space. Then the disc is updated and all the data structures updated with info for the new page. All of this is done dynamically.

RAM increased - reduces the amount of swap space on the hard drive - when buying a computer higher the RAM better the performance.

Mapping pages of a fixed size - which pages are occupied and used and which are free for allocation.

A bit map is used to keep track of pages allocated. If it is allocated 1 and if not 0.

__Link lists__

Useful to order, remove elements, restructure and keep the nodes connected to each other - it is an extra layer of complication to code this.

Used for creating qs and scheduling for the dispatcher and mapping of memory

Why want this list - so that when you deallocate you free up memory space, you have adjacent frames to allocate to so that addressing will be easy, otherwise you will have to jump from one location to another for your memory

The physical memory is not searched but the location is searched so that you can see which process is removed what space is freed up to create more space for other processes to be executed

For C++ for some class definitions, created and methods to use so you don't need to worry - like the Vector classes ??? to allow you to create dynamic arrays, all the various are hidden so the list can expand and contract giving a dynamic array the ability to flex

A strut is a key word that allows you to identify a number of variables under one label - it is a precursor to class creation in Java

- strut - what you call it - eg: characters/ integers/ strings - you provide the fields or elements to your struts

- It is a definition that does not exist in memory. You use your definition of a strut to create it you used the definition of the strut to create the variable that has the same structure of your data that you load on memroy

It was the precursor to objects (C) it was the start of creating a class definition - variables + plus methods in a class are just a definition, then you create an object, you use your class as a blue print to create objects, it is the objects that are stored in memory, while the class is only a definition of how you want the object to be shaped and used. 

Data structure of the link list - you can order and remove and keep the nodes all connected to each other
Label 2 values and a pointer that point to the next value
Definition - H or P/ Hole or process 1st is character H P occupied
Base address - second field
Length - number of blocks used - number
Pointer to the next node - x is the pointer

There are 2 lists  the occupied and freed list
Addresses are redirected from the used to the other - swap the spaces in the nodes

Address look up is a high overhead so link lists help to avoid address look up by linking the lists.

Addresses are not looked up but redirected - makes life easier to manage.

EXAM - IDENTIFY
__Memory scheduling allocation alogrithms__

- First fit - where the first space availble is used to store data, this is fast but may not be efficient, cluster of tiny blocks in the front
- Next fit - where the allocation continues where the last allocation spot was determined and the next first fit found
- Best fit - all available space in memory is searched and the closest match in terms of available space is found - while this looks like the best option, best fit is slow and leaves small fragments of unused memory space that have to be cleaned up by softwared packages like garbage collectors or defragmenters
- Worst fit - like best fit, a complete scan of memory space is run and then the largest available space is used, this may look like a bad option but what it allows for is many processes to run uninterupted, it is also slow as all the space is searched
- Quick fit - algorithms checking quickly for the best fit option allows for speed while minimising the amount of memory fragmentation, maintains 2 lists of common sizes and is sorted by sizes

Garbage collection - all the small blocks are put together and resused
If you can not allocate you can reallocate processes and create a space or merge 2 blocks of adjacent free spaces - compaction. compaction is expensive and difficult

If there is no space to allocate then the memory is found on the hard drive. Hard drive may run out of space so it has to be defragged. 

All of these fit algos have the same problem, at some time you are going to run out of space and have all sorts of wasted fragments of unused space.

__Buddy system and the binary search tree__
Fast but inefficient utilitsation of memroy - suffers from internal fragmentation - wasted internal blocks

Page-frame allocation algorithms include:- 

- FIFO first in, first out
- LRU least recently used
- NFU not frequently used
- FIFO first in, first out

Resource management memory allocation alogrithms manage resource deadlock and are also referred to as the bankers alogrithm.

#### EXTERNAL REFERENCES - How computers process data

__Paging algorithms__

- FIFO first in, first out
- LRU least recently used
- NFU not frequently used
- FIFO first in, first out

## Process deadlocks and deadlock management



## An overview of the calculations behind the algorithms


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
man tar - manual  

## What is stack and heap memory and how do they work

Size of the stack is small megabytes or less - very limited space

- LIFO last in first out
- Stack is like a pile of data (dishes)
- Data is added serially
- Stack pointer points to the last peice of data on the top of the stack
- Accessing element is the last one added
- Stack data is popped and the stack pointer is updated to the next data set

## Heap memory is larger 100s of megabytes

- Random and dynamic way of allocating data
- Data is allocated based on the available data where and when there is space
- Random way of accessing and removing the data
- Small gaps in the heap garbage will defrag if possible and clean up the mess
- Data storage and access is fragmented and slow

-->
