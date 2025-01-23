__What is an object?__

- object is a software module must be unique to be identified and accessed
- it must have data (state) and data modifiers or behaviours (methods)
- data has to be instantiated for the modifiers to work - ie there must be data to modify
- access of data and behaviours must be available to other objects (public methods)
- they are not isolated but exist in a network of modules/ the software architecture
- private methods - close coupling in compile time, you can not "see" how the method runs or is implemented
- public methods - loose coupling in run time you can access and "see" the method in action
- the network of objects are connected by links (link list?)
- links are instances of object associations

__What is a class?__

- a class is a template to create objects - the initialisation of the object now is delegated to the constructor
- the static network of classes come alive when methods within these classes are called
- the invoking of data and modifying of the underlying data of the object happens in runtime
- this binds objects to each other dynamically
- static binding is when methods are called within the class in compile time (private methods)
- a class can have many constructors to create an object
- user defined type a class is a way a type - a contract specifying how you use the value of the type
- an architecture of objects - it is a set of objects that behave in the smae way and have the same structure
- the new key word allocates space in memory (the address and the unique id for the class)

- Class declaration
  - attributes (access specifiers)
  - constructor (initialise and create an object - can have many constructors, default args default constructor)
  - getters/ setters (state management)

    Exec
  - new
  - then constructor to initialise the class and its objects

__What is a type__

The way a language is "typed" describes the relationship between the data and the precision of the data.
A type can be strongly typed - where that definition of what the data is tightly coupled with what a programmer types or loosely typed where the definition of the data type may be inferred at compile or run time.

A strong type defines a character as a string, or a UTF-8/ ASCII-type character a number as an integer, floating point or decimal and a conditional statement or a boolean as a true-false statement.

BNF characters are defined when the language is written, with the types of data closely or loosely coupled with how the program is typed. Typed programming languages normally involve a compilation phase before program execution (either to machine code or bytecode) which allows type checking to happen before program executes, this is true of both strongly and loosely typed languages.

__What makes a good design pattern?__

Gamma, Helm et al

- pertinent objects
- classes that create objects
- right granularity
- define interfaces, inheritance hierarchies
- establish key relationships
- solve a specific problem, while serving a general need for future proofing and extensibility
- minimise and avoid redesign, support flexibility, extensibility or portability
- overwhelming options need to be crystallised and pertinent options chosen
- know how to resuse solutions and patterns that work (from past or other examples - dont reinvent the wheel)

What is a design pattern

A solution to a recurrent problem, many of these solutions are pre-existing and therefore have

- a name - providing a vocabulary and tool set for the designer
- a problem statement - and the list of conditions that must be met to solve the problem
- a solution to the problem that meets requirements of the problem statement
- outlines consequences and tradeoffs/ critical evaluation of what is solved, how and to what extent

__How the UML (Unified Modelling Language) models design patterns__

- UML is a unification of - now Kernel Modelling Language (KML)
- It has its own syntax and formal modelling process

– OMT (James Rumbaugh)
– The Booch Method (Grady Booch)
– OOSE (Ivar Jacobson)
◼ UML was initially developed at the Rational Corporation, but has been
submitted to the OMG (Object Management Group) for approval as a
standard. UML 2.1.2 was released in Nov 2007 see[Object Management Group website](www.omg.org)
◼ Unlike its predecessors, UML is not a methodology by itself
– UML is a (visual) language
– It does not define a process for development
– The “Rational Unified Process” is a complementary development process,
from Rational, but which does not form part of UML

Access modifiers syntax `- private + public`
Abstract classes with void functions Italics - abstraction
