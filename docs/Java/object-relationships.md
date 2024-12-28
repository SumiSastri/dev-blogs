Design choices:

How maintainable and extensible is the design system
If the contract is too rigid, difficult to customise
If too customisable, error prone, no consistency
Design systems must have a balance between predictability and customisability

__The concept of association__

The association of relationship can be uni directional or  bi-directional.  

A customer owns their room booking and can have can have 0 bookings to many bookings
A hotel room may have 1 or many bookings from multiple customers

eg:
A Hotel can have a relationship with a Customer and a customer the relationship with the hotel

Association is of peers - neither is more important than the other. Life cycle of the objects both are as important as the other - and can not exist without the other.

It can be multi-associations as well.

__The concept of aggregation__

When the whole picture is made up of an aggregate of its parts. Interfaces support aggregation

__The concept of composition__

__The concept of polymorphism__

Same object or class that takes on different attributes or methods.
The subclass objects are treated as instances of the parent class.
They are versions of, rather than exact replicas.

__Polymorphism of objects__

- Inheritance—the subclasses inherit the same implementation of methods of the parent class.
- A sub-class can use another class as an attribute implementing the methods of this class (Liskov substitution)
- The method binding is tightly coupled with the parent class.
- Overloading used to update methods of the class
- The attributes and methods bound by the `this` keyword are then bound to all the subclasses
- Inheritance is a less favoured way to create objects and classes.
- The contracts between objects of the class are defined by inheritance.
- The subclass must fulfil the contracts of these methods providing both reliability of code performance and consistency.

__Polymorphism of classes__

__Abstract Classes a form of polymorphism__

- A class creates several new objects, and an abstract class creates several new classes.
- Therefore, while a class is a blueprint for object creation, an abstract class is a blueprint for new classes.
- The parent class does not define the behaviour of subclasses.
- Instead, a place is held in memory by a void function with a signature rather than a body. It, in effect, serves as a placeholder.
- Methods in the parent class are incomplete as they can not be instantiated.
- Method table is used to reference the methods of a subclass at compile time
- Overriding methods used NOT overloading for polymorphism of abstract classes
- In memory, when the `abstract` keyword is used, a method table in the parent class references the methods of the subclass.
- The subclass methods are called in run time, in what is termed as "late binding".
- The subclasses are not declared as abstract.
- Instead, the keyword `extends` is used to instantiate the void methods of the abstract class.
- This allows for late binding of the subclass methods - also referred to as dynamic binding of the class attributes to its methods.

Example Abstract class and overriding:  
`add(): void;` defines the signature of the method, in the parent of an abstract class the body is overridden by the subclasses.
The method is called and defined in the function body of the subclasses.
Each subclass can have methods that "override" the empty signature, giving the class its execution of the code body.
For example, `add()` can add 2/ 3 numbers using integers or doubles as args depending on the use case of the subclass.

Example of ordinary class and overloading:
Add( x, y ): int method can be overloaded with Add (x, y, z ): int  or Add (x, y) : Double
This is done by writing the method with new args same types but different lengths or different types
args of the same type and length can not be used in overloading

Here we can see the parent class of room morphs into 3 new objects of the subclasses.

```Java
Room  r1 = new StandardRoom
Room  dx1 = new DeluxeRoom
Room  s1 = new SuiteRoom
```

Now the methods written in the parent class can call the methods in the subclasses via the Liskow Substitution Principle.

```Java
<!-- subclasses call the methods of the parent data flows from parent to child -->
eg: StandardRoom.displayDetails()
DeluxeRoom.displayDetails()
SuiteeRoom.displayDetails()
```

__Interface Classes an extended implementation of abstract classes and polymorphism__

- public methods that a class uses to access the attributes of the class

__An interface inheritance as a form of multiple inheritance without weakened encapsulation__

Interfaces allow classes to interact with methods in a more flexible manner - modularisation of methods
Used when classes have a different way to implement a method
An interface only has methods no attributes - subclasses inherit method signature
An interface provides interface inheritance via implementation of these void methods
A class inherits from the interface and all its parents
Abstract is true by default when you use the `interface` key word
All methods are abstract and public and only have signatures,no attributes/constructors

```Java
public interface Nameable {
    void setName(String name);
    String getName();
}
```

Uses implementation and overriding polymorphism with the `implements` key word in subclasses
eg: `public class SpaceShuttle implements Nameable`
The implementation in the subclass can have attributes and constructors and overrides
This is a polymorphic implementation of the method
Many classes can use the same interface for multiple inheritance
eg: `public class Planet implements Nameable, Comparable`
This allows comparison of objects in a class, sorting and filtering

Interfaces prevent resource deadlock - or the deadly diamond of death
HOW?
Methods are not seeking the same resources but are implementing the methods of the classes
No rigid and formal inheritance structure, one or more interfaces can be added to any class
Method called in run time - Late/ dynamic binding, no compile time issues


Lists and manipulating lists
- show and sort
- add
- delete
- update

Name logger is like shape drawer ?
(application to project)
