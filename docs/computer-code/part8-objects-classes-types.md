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

BNF characters are defined when the language is written, with the types of data closely or loosely coupled with how the program is typed. Typed programming languages normally involve a compilation phase before program execution (either to machine code or byt

__Relationship between objects and classes - message passing__

For objects to work together there must be a relationship between objects
The relationship is defined by links between objects (stereotypes)
The link relationship lets you know that the objects are connected and "know" about each others methods and attributes
The links are either uni or bi-directional - a uni-directional only one object knows about the methods of the other
The link could be unknown and therefore unspecified
In UML - Links are instances of the relationship between classes
Labels on links give meaning to the link connections

__Association, Aggregation and Composition__

Relationships between classes display some form of containment - where one object "contains" another.

Aggregation and Composition are both containment style association. Association is weak and aggregation is considered a modelling placebo as it is a form of association with no strong differences.

See slide 24 for relationship hierarchy

Exclusivity - tightly coupled - lifetime - both destroyed - composition ironically is destructive if a blog is destroyed the comments and likes are destroyed
Free-for-all - loosely coupled - lifetime - one continues vs the other being destroyed - aggregation (modelling placebo - same as association)

Dangling relationships to consider
Hierarchy of relationships based on the amount of information the model holds

Multiplicity 0..* is of one to many...

Dependency - some relationship exists weak - don't know how

[Further reading](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/uml-aggregation-vs-composition/)

__Generalisation and inheritance__

EG:
Part is a type, p is the variable name , the new object that the class of type Part that is utilised as a contract to create the object.

new Part -- is the new type of Part

Part p = new Part( "bolt", 23103, 0.03)

a class can utilise many types
eg:

Part {
  private CatalogEntry entry;
}

screw -> Link/ Channel to Catalog entry (in computer hardware this is the address)
UMLs use labels or names (entry local id) - connection between 2 is an abstraction of computers/ memories etc.

Not an object identity - it is a label not a variable name

One way relationship - parts know about catalog entries/ catalog entries do not know about parts
It is about identitiy - who needs to know what about whom the cross is non-navigable- no cross don't know the navigability

Objects invoke methods then this becomes important

Role names

Place holder class name
Attributes - and methods
Names and access levels (private or public)
pod class - only attributes no methods 

stereotype - constructors
destructors - stereotype
stereotypes can be added to class types - adapt meaning of the UML syntax
minus entry shows the relationship between the Part and the Catalog bec the Part is of the type CatalogEntry
Shown by association relationship

Same info in the UML in ASTA will not warn you that the info is duplicated
Op code can be passed via the UML channel to call the getCost() method/ message to abstract programming language and make it translate into UML language

Execution call
getName
screw object
Catalog Class
back to execution of code
Same with the getCost
Communication diagram for asta

Implicit return no return arrows back
Bidirectional 2 arrows not one arrow with 2 arrow

