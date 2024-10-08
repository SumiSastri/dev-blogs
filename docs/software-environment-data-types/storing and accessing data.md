## Variables as the smallest unit of data storage

Once data has been created in a program, it needs to be allocated to memory in a computer or in a cloud-based storage system.

All programming languages therefore have a storage type called a variable. The variable stores the data for future usage.

If the data is unlikely to change the variable holds immutable - or data that does not change.

If the data is likely to change - for example, if a name is spelt incorrectly and needs to be changed or updated, then this data must have mutability - or the ability of a programmer to change its initial state.

To differentiate between these variables, JavaScript has two types of variables the `let` variable and the `const` variable. The `let` variable allows the data to be mutated or changed, while the `const` holds a constant state of data - or data that is immutable and does not change.

Java, Python, C and other programming languages will have their own key words that define a variable.



Once data has been created and stored, this data must be retrieved. Different programming languages have different methods to retrieve data.

A host of compilers and interpreters - called runners - make trips between the data that is stored in memory back to the user who wants to access this data.

The compilers bundle code into chunks and reduce them back into byte code, or computer code that machines understand.

Interpreters then take the data store it in memory and retrieve it based on programmatic commands.

An American mathematician of Hungarian descent, John von Neumann, described the data-life-cycle as an Instruction Cycle. 

This instruction cycle, also known as the von Neumann cycle, or the von Neumann architecture, describes the cycle by which data is created, decoded and stored, fetched from storage, decoded once again and executed.

Data is created in a computer program, or a peice of software and stored in a file.

This file is sent via the computer's input driver to the processor, the central processing unit or CPU. The data is temporarily stored in registers in sequential order of their arrival into the processor. The data is processed on a first in first out basis. 

Arithmetical processes are directed the ALU, or the Arithmetic Logic Unit or the Control Unit (CU).

Once the data is processed it is sent to the primary memory and if required the RAM (random access memory).

When it is retrieved by user and sent back to the user via the output driver in the computer.

This basic architecture still remains the foundation upon which data architectures are built.

In architectural terms, von Neumann recommended the separation of the input/output (I/O) drivers from the data-processing operations.

This allows the processor to do the job it is supposed to do more efficiently. The transport of data to the I/O drivers is handled by interpreters or runnings. The storage of data is managed by the memory units.

In the von Neumann architecture, once the data is processed, the memory stores both the data and processing instructions which can be retrieved and shipped to the output driver.

Within the processor, the processing functions are further separated into the ALU and CU. This allows the data to be processed in two streams - arithmetical logic or conditional logic and algorithms used in programming logic.

Further reading:

https://www.learncomputerscienceonline.com/von-neumann-architecture/


https://thinkobjectoriented.hashnode.dev/introduction-to-computer-programs-bytecode-machine-code