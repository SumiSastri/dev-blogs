__Design system__

How (SOLID) maintainable and extensible is the design system

SOLID (Uncle Bob, Robert Martin)

- S Single Responsibility - class should do one thing - have a single responsiblity to create 1 defined object
- O Open for extension/ closed for modification - classes should have private attributes/ public methods
- L Liskov substituion - sub classes should be able to do whatever super class does - only better :-)
- I Interfaces - interfaces should not be "god interfaces" they should do one thing
- D Decoupling dependencies - classes should not depend on each other but use abstractions to interface

- Design stable systems
- Less design and coding time - keeps code DRY
- Less maintainence time - write once apply many times in subclases
- If the contract is too rigid, difficult to customise
- If too customisable, error prone, no consistency
- Design systems must have a balance between predictability and customisability

- These core principles of software design
  - maintain code
  - keep programs flexible and easy to extend
  - promote usage and adoption
  - keep costs of code production down
  - enhance speed and delivery
  - promote code reliability

__The concept of inheritance__

If you can say something "is a" it is inheriting attributes and behaviours from a parent class
If some of the attributes and behaviours need modifying abstraction is required.

So Saturn is a planet/ Mars is a planet - inheritance
However, if we want this inheritance to be loosely coupled so that we can say Mars is hot Saturn is cold, abstraction and inheritance can be used.

Overriding can be used with behaviours, where subclasses call the super class.

__The concept of multiple inheritance__

An interface, like an abstract method, only has a signature - it has no method body, no functionality, no attributes.

If a class needs to use methods and attributes from multiple sources, it may need to implement some methods or extend the inheritance of the class. Therefore there is no super class, but several classes where attributes and methods need to be picked and mixed.

Interfaces allow for this kind of multiple inheritance. Interfaces have no method body, no functionality, no attributes. It is a signature of a contract between 2 classes - the class that implements the Interface, represents a capability that is used not inherited.

Starship, Cruiser two intergalactic space ships require different types of fuel, carry different cargo and have different routes they travel. They may use interfaces to define `getSpeed()`/`setFuelType()`  from 2 different interfaces implementing the methods in an unique way.

Asteroids and Stars are both moving in space, you may `getSpeed()` from an interface so that both Stars and Starships can have their speed calculated becuase they are implementing the methods of the Speedometer interface - this interface, only caculates speed of objects that travel in space.

__The role of an interface__

It is a contract that obliges the adherance to the rules of the design contract.

Interface contract - abstract methods are enforced by using the interface

Capability is enforced by useage not by inheritance - nothing is defined in an interface

 It is an abstract class by nature, but abstraction purely for abstraction sake. There are no cookie-cutter objects or classes that are created from an interface.

A class can inherit from one or more Interfaces, when designing an interface it may be important to look at the principle of single responsiblity.

Let the interface do one thing as the signature method - let it not be a "god class" makes it difficult to implement multiple methods unless a class needs all those multiple methods.

__The concept of association__

The association of relationship can be uni directional or bi-directional.  
Terms _has a_ and _owns a_

eg: Bidirectional relationship

A bank has a customer, a customer owns a bank account
Association is of peers - neither is more important than the other.
Life cycle of the objects both are as important as the other - and can not exist without the other.

Multi-directional associations are also possible

__The concept of aggregation__

When the whole picture is made up of an aggregate of its parts. (Has a or has many/ uses a or uses many - is not a is-a of inheritance)
Terms _has a_ _has many_ or  _uses a_ or _uses many_

A car has a steering wheel a car has many parts

Unidirectional relationship
Interfaces support aggregation
Unilateral relationship - the whole it is more import than what it is connected to
The parts can exist without the whole
The lifecycle of the parts do not depend on the whole for creation or destruction

__The concept of composition__

Unilateral relationship - the whole it is more import than what it is connected to
Terms _has a_ and _owns a_

The whole cannot exist without its parts
The whole is made up of a composition of the parts
If the parts decompose the whole decomposes - (Has a ? or Owns a? Composition shows ownership)
Related to the lifecycle of the class - the class ceases to have importance and decomposes
