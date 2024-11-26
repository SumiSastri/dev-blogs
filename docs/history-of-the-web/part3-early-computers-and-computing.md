---
layout: default
parent: History of the Web
nav_order: 3
title: Computers and computing in the mid-20th century
---

# Computers and computing in the mid-20th century

The world's first electronic digital computer was the ENIAC - the Electronic Numerical Integrator and Computer. It was designed and constructed at the University of Pennsylvania.

The machine weighed 30 tonnes and occupied over 100 square meters of floor space - the size of a small warehouse. 

Stallings, et al [1] note that it was developed as a decimal rather than a binary machines to create a ballistic report in the form of tables. The firing tables were to be used by gunners in World War II in the 1940s. It provided the range and trajectory of weapons. By the time it was completed, the War had ended. It was therefore used to perform a series of complex calculation to determine the feasibility of the hydrogen bomb. It was dismantled in the 1950s.

## From Lovelace to the ENIAC

Shustek,[2] observes, that while Ada Lovelace and Charles Babbage created calculators, and the Pascaline, built in the 1600s by Blaise Pascale, the ENIAC was a fully electronic computer that had done "more calculations than all human beings in all of history" at the time.

Lovelace and Babbage, conceived of ordered instructions to carryout arithmetic operations. The orders were punched into operation cards with a separate sequence of variable cards to store the use of the arguments of each operation. However, Haigh notes [3], the Analytical Engine was never built or stably designed.

Therefore, while it was a precursor to the ENIAC, the Analytical Engine is not considered to be the first modern-day computer. 

The ENIAC, as an assembly of units wired together to solve mathematical problems is the first electronic version of a computing engine. Data control in the ENIAC is distributed and the machine could run processes in parallel. However, these processes were difficult and time-consuming. The execution of instructions was from read-only-memory or ROM. A simple mathematical calculation could take a minimum of nearly an hour to compute and complete execution.

Several scientists, Alan Turing, John Mauchly, Presper Eckert and John von Neumann were researching how a program could be stored in memory.  They were also developing methods to retrieve these instructions from memory. This concept of stored programs in memory was incorporated in the design of the Princeton Institute of Advanced Studies EDVAC - the Electronic Discrete Variable Computer, or the IAS computer.

The fundamental architecture of the IAS computer persists in modern computer design. Computers today are more compact than the historical computers which used vacuum tubes to operate the on-off switches in the computer circuit board, but the basic architectural decisions have not changed significantly, Stallings et al observe.

The ENIAC memory consisted of 20 accumulators, each capable of holding a 10-digit decimal number. According to Stallings et al., it was manually programmed by setting switches and plugging and unplugging cables. Shushtek adds that it was an 840-instruction program that used subroutines, nested loops, and indirect addressing for data locations and jump destinations. A jump destination is a set of instructions or programs that can be used to jump from one part of the instruction set to another, altering the instruction set's normal flow.

## The EDVAC and separation of compute, control and memory operations

The EDVAC, separated the planning and set up stages, the compute operation and the storage of the instructions in memory. This meant data flow and control were programmed by circuits responsible for triggering operations at the correct time, Haigh observes. Programming now referred to programming instructions before operations stared and coding to the tasks of looking up numerical codes corresponding to the programming instructions.

von Neumann[4], in his _First draft of a report on the EDVAC_ discusses the need for the separation of concerns into the central arithmetic part, a central control part, various forms of memory required, the input and output drivers in the second section of the paper which details the main subdivisions of a computer system.

In his analysis of the central control unit, he says the unit's function is to receive orders from the input driver and provide "a list of orders or code to be used to define the mathematical and logical meaning and the operational significance of its code words". The orders could be to transport instructions from one part of the system memory to another part of the memory to get the next set of instructions from memory, transport instructions from the input driver to the central arithmetic part to execute specific mathematical operations, transport results from the central arithmetic part to the output driver. Speed and reliability are required from the central control unit - the modern-day central processing unit (CPU), or processor.

He emphasises that the main function of memory is to store information in a register which is required while a problem is being solved. Therefore, memory should only be used for the duration that the problem is being solved and cleared with a delay to ensure stability and reliability during the processing of information from memory. In this light, he looks at the capacity unit of memory, speed and delays in accessing data from a capacity unit of memory and the time required to process each capacity unit of memory. Memory is fastest when it is closest to the action it is performing. Latency is inversely proportionate to size. The larger the memory storage unit, the slower the processing power. So, the smallest unit of memory - a bit is closest to the processing units.

The central arithmetic part, as a subdivision of the system is devoted to executing system instructions relating to arithmetical calculations. The logic of the instructions relate to the conversion of decimal system mathematical problems to binary. The section discusses the types of mathematic operations in detail and the set of instructions they may need. It estimates the number of high-speed vacuum tubes the EDVAC needs and the estimated time to complete actions. The paper also explores the vacuum tube elements - the gates and triggers required to execute operations. 

The relationship between the ALU, or the arithmetic logical unit that performs bitwise operations on binary numbers, must also access the memory required to store instructions and logic. The method to load the instructions before execution and to relay them back to output drivers is also detailed in this section. The arithmetic part may be impacted by memory delays and other blocks and interrupts in the signals and therefore the section reviews the system requirements for the interdependency of the ALU and memory. Therefore, based on latency, all decimal and fraction operations need to be reduced down to binary so that it can be stored in its smallest memory register located the closest to the ALU.

Stallings et al, note that with very few exceptions, modern-day computers are built on the foundations of the von Neumann model. While von Neumann is credited as the founding father of this architecture, his draft paper is a collective intelligence report from several scientists and mathematicians who remain unattributed in the paper and were working on solutions to the limitations of the ENIAC, according to Shustek.

## Life before PCs

Transiterisation of the EDVAC was the next step in the progression of the early 20th century computers, Stalling et al note. Transistors replaced the vacuum tubes significantly reducing the heat generated and the footprint of the computer in terms of space occupied and energy consumption. 

Circuit boards with transistors represent the second generation of computers in the 1950s and 1960s. Transistors are semiconductors that amplify electronic signals and electrical power. Their importance in modern electronics in shrinking the size of computers cannot be overstated, says Moraes [5]. Transistors required less power and had a longer lifespan than vacuum tubes making them ideal for a wide use of electronic devices, Moraes adds. With the introduction of silicon in the manufacture of transistors, heat reduction in the compute process increased helping in the development of integrated circuits and microprocessors, which are the third generation of computers. 

In a single chip, today billions of transistors are embedded to amplify electronic signals, the mid-20th century computers started with a few thousand transistors. Transistors increase the voltage and current of the signal, converting een a small input to a significantly larger output.  Acting as a valve, the transistor creates a magnified copy of the input signal.

The second big change in this generation of computers was the introduction of a multiplexor to transmit a larger data set of information units over a smaller bandwidth of processing queues to the CPU. When a multiplexor is used in an electronic circuit which involves high-speed switching and data transfers, input has to be selected from many available options based on the signal provided to them, Raj explains. The control signal channels information to input pins and output pins. Control and selection pins are used to select the input and output pin signals.

This combination of applications of these components transformed the ability of these expensive and large machines to be scaled down to size and up in speed and adoption of new users.

#### EXTERNAL REFERENCES - Computers and computing

## Blogs 

- [2] L.J. Shustek,  "Programming the ENIAC: an example of why computer history is hard", Leonard J Shustek, https://computerhistory.org/ (Accessed: Nov. 25, 2024). [Available](https://computerhistory.org/blog/programming-the-eniac-an-example-of-why-computer-history-is-hard/)  

- [3] T. Haigh, "Where code comes from", Tomas Haigh,  https://cacm.acm.org/  (Accessed: Nov. 25, 2024). [Available](https://cacm.acm.org/opinion/where-code-comes-from/ )

-[4] J. von Neumann,  "First draft of a report on the EDVAC" https://web.mit.edu, John von Neuman, edited by Michael D. Godfrey, IEE Annals of the History of Computing , Vol. 15 No.4, 1993, Pg 27 (Accessed: Nov. 25, 2024). [Available](https://web.mit.edu/STS.035/www/PDFs/edvac.pdf)

- [5] C. F. Moraes, "Understanding Transistors: What They Are and How They Work:A deep dive into the world of transistors and their application in modern electronics" https://www.wevolver.com/ Cassiano Ferro Moraes,  (Accessed: Nov. 25, 2024) [Available](https://www.wevolver.com/article/understanding-transistors-what-they-are-and-how-they-work )

- [6] A. Raj "What is a multiplexer circuit and how it works", Aswinth Raj https://circuitdigest.com/ (Accessed: Nov. 25, 2024) [Available](https://circuitdigest.com/tutorial/what-is-multiplexer-circuit-and-how-it-works)

## E-books

-  Stallings W & Mohan R, __Computer organization and architecture: designing for performance__ , 9th ed., International ed., Pearson Education, March 2013, Available from: ProQuest Ebook Central
