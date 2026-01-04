__Java memory management__

Summary:

When Java is written and run, the JVM uses javac to compile the program. The code is compiled and linted before it is transformed into byte code, which is then converted into binary. This makes the system slower. Java is written in such a way that when it is running it is running via the Java application, so the app creates a sandbox protecting the system.

It makes it safer to use. It was not developed as an everyday programming language, it was written as code for hardware. The i/o for Java you have run through various levels to run print statements.

It was designed for dealing with hardware. C was developped for writing operating systems, it has not changed at all. The design of the kernel and the heart of the kernel is built on C and nothing else.

Can't used objects as they are expensive. Kernel is pure C. Because C is so basic, it gives it extra power and speed. C and Fotran are very old languages like Cobol and Visual basic.

OS' have the same form - backend which is the kernel, the front end where the GUIs are used to interact with the users and peripherals written to interact with users via the terminal. CLIs and shells are used to interact with the shell which interacts with the kernel.

In Java, when a method is invoked a local variable frame (stack frame) is created at the top of a stack
All the method arguments and variables are allocated in that frame
Variables in a local variable frame have the same lifetime as the method they belong to
Methods are called and data is passed by value - a copy of the data passed
Methods terminates and the space is deallocated
Data stored on the heap that are passed by reference have a longer lifetime than local variable
They are removed by the Garbage Collector only when there are no reference type variables in the program that refer to them

## Primitive types or value types stored on the stack

- Values are stored within the variable of the data
- data in memory as a range limit from 8 to 64 bits/ 2 bytes max
- value type data can fit into this cap for data space
- value types defined by Java
  - int
  - double
  - long
  - boolean
- Stack memory is for storing primitives
- LIFO last in first out
- not for storing objects and complex data types
- The computer memory is used to store and recall data in a series of units or bits.

## Complex data types or reference types stored in the heap

- data is stored in a reference to where the data is stored (the address of the data)
- the reference contains the address of the data not the data itself
- this is because complex data types the size of the data is not predictable
- the data is volatiel - may mutate during the data life-cyle
- the max size is 64 bits on the stack is not sufficient
- therefore the address of location of the data is stored
- the address is stored in RAM units on the heap
- reference types defined by Java
  - objects
  - arrays
  - wrapper classes - Object constructors (Strings, Integer, etc.) and Java utils

## What is stack, heap memory and meta in memory and how do they work

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

## How methods are called - EXAM QUESTION

- Javac compiler runs
- Memory - stack, heap and meta

- When a program runs, the main (static) method calls methods of the classes
- Attributes of the of class are stored on a local variable frame
- Base pointer is first data in
- Stack pointer is where the last data is stored
- Stack processes data on a LIFO basis

What is stored?
Params and local variables of a method
Params are stored first
Local variables next
Each method with its params and variables are stacked one on top of each other

Where is it stored - both on stack and heap
Data or attributes of methods are stored on the stack frame or local variable frame (JVM) similar to hardware PCB
Each method has a stack frame or local variable frame

- Methods are stored on the heap as addresses randomly when there is space available/ accessed runtime-compile time
  - Method A
  - Method B
  - Method C

  - Each of these methods has their own local variable frame with data on stack and heap
  - Encapsulation means, a method has access to its own privat attributes - not to the attributes of the other methods

In what order are methods called and how is data popped off the stack?

- Methods will call other methods - what happens then?

- Mutual exclusion/ Hold and wait

- Figure out what method is called first and what next
- If Method B calls Method A, Method B gets executed
- This will be because Method B calls Method A
- It is reliant on the data (resources) of Method A to run
- Method A then is completed once method B is completed

On the stack the params and attributes of method A will be stored first
The params and attributes of method B will be stored next
This is because method B has to execute first so the data has to be last in to be first out
The data of method A is stored first as Method B is reliant on method A

If the variables are reassigned eg variable a = variable b
2 places in memory are stored one for each variable
A copy of variable a is created and stored for variable b
As variable b relies on variable a for its information, variable b is stored after variable a
This is passing the data by value and not by reference as a copy is created
However it is only created for Method A where variables a and b can be copied
Variable a will not be available in Method B as the data is encapsulated

The only way the data can be passed is if the value is copied in the argument of Method B

When method B terminates, the data is deallocated from the stackframe
It also disappears from the heap
the stack pointer now shifts to the data on the top of Method A

Method A then executes, if Method C requires Method A, Method C data goes to the top of the stack frame
If in Method C there is a reference type, the data is not allocated but an address is allocated to the top of the stack

## Traversing the Java Object tree - Wrapper classes

- Done by interfaces under the hood (Lesson 11 and Lesson 12)

- Stack pointer points to null when there is a reference type without data (void methods)
- String constructor holds a null reference by default (same as undefined in JavaScript)
- BankAccount = account1 will reference null as there is no data
- only when we create `BankAccount = new BankAccount` with the `new` key word is it instantiated with data
- The `new` key word calls the methods of the constructor and initalises the data in the class creating the object
- Null acts as a placeholder on the stack referencing the address of the data
- It reserves a place for the data to be stored
- No data is stored till the values are initialised by methods that call that reference of data
- With an array the space stores contiguous memory as a block depending on the array size defined

When the `==` operator is assigned to variables strict equals applies and it errors with an object
Objects have different addresses
When the assignment operator is used `=` the address is reallocated and redirected with an object
In this case both variables and objects values can be reassigned
With objects a comparison has to be done at the wrapper Object level with the `equals` method
The comparison happens in a method eg: `checkEquals (ob1 ob2){}` checksums - CRCs
Once the object is reallocated, the space in the heap is freed and available for garbage collection
In JVM the release of the space in the data is cleaned up by garbage collector
Not the case in C or JavaScript - clean up has to be done manually like `setTimeOut()` this has to be closed
Garbage collection is timestamped not immediate, so if object deleted not immediately garbage collected

## Meta and accessing attributes from Objects using the _this_ key word

Data of the attributes is passed into meta which lies outside the heap

## Process deadlocks and deadlock management

- Done by interfaces under the hood (Lesson 11 and Lesson 12) 

