<!-- ---
layout: default
title: Memory management - key alogrithms
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# Memory management - key alogrithms

The computer memory is used to store and recall data in a series of units or bits. Instructions from processes could be fetched one bit at a time, but the chunking of code means a group of bits is fetched at any given moment. Though, not what we would describe as a word a group of bits is termed as a word and the number of bits in a word as word length of the computer. Words flow into virtual memory on a page. Pages flow into frames.

The processor looks for an address that is associated with each word. The address is stored in RAM units, the fastest and smallest is RAM and largest is the main memory. Secondary storage devices like SSDs, CD-ROMs, the cloud all store data but the further away the data is from the processor, the slower the job takes to get processed.

Latency, or the speed of processing and the cost of a memory unit depends on its access time. The costs are higher when more time is taken to access the memory location. This is why you would pay over and above disc storage for an SSD, external drives or cloud storage.

Programs access the virtual memory on a page as they supports processes larger than physical memory. Paging algorithms are used to manage page space and memory map tables map virtual to physical pages. The map is made up of link lists that represent blocks used by a process and free blocks.

__Paging algorithms__

- FIFO first in, first out
- LRU least recently used
- NFU not frequently used
- FIFO first in, first out

__Memory allocation algorithms__

- First fit
- Next fit
- Best fit
- Worst fit
- Quick fit


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
man tar - manual  -->