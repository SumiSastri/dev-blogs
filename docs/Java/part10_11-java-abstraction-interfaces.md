__The concept of polymorphism__

Same object or class that takes on different attributes or methods.
The subclass objects are treated as instances of the parent class.
They are versions of, rather than exact replicas.

__Generalisation and polymorphism of objects__

- Inheritance—the subclasses inherit the same implementation of methods of the parent class.
- A sub-class can use another class as an attribute implementing the methods of this class (Liskov substitution)
- Liskov subsitution - the child class should be able to do everything the parent does
- Any instance of a parent class can be replaced with an instance of one of its child classes

- The method binding is tightly coupled with the parent class.
- Overloading used to update methods of the class and is called compile-time polymorphism
- The attributes and methods bound by the `this` keyword are then bound to all the subclasses
- Inheritance is a less favoured way to create objects and classes.
- The contracts between objects of the class are defined by inheritance
- The subclass must fulfil the contracts of these methods providing both reliability of code performance and consistency
- However pure inheritance can be inflexible

__Polymorphism of classes__

__Abstract Classes a form of runtime polymorphism__

- Enforces the contract between super class and subclasses
- Implementation of the subclass is based on fulfilling the contract set out by the super class
- The subclass `extends` the data and behaviours of the superclass
- A class creates several new objects, and an abstract class creates several new classes
- Therefore, while a class is a blueprint for object creation, an abstract class is a blueprint for new classes.
- The parent (super) class does not define the behaviour of subclasses.
- Instead, a place is held in memory by a void function with a signature rather than a body
- It, in effect, serves as a placeholder
- Methods in the parent (super) class are incomplete as they can not be instantiated
- Method table is used to reference the methods of a subclass at compile time
- Overriding methods used NOT overloading for polymorphism of abstract classes
- In memory, when the `abstract` keyword is used, a method table in the parent class references the methods of the subclass.
- The subclass methods are called in run time, in what is termed as "late binding"
- The subclasses are not declared as abstract
- Instead, the keyword `extends` is used to instantiate the void methods of the abstract super class
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

- Extension of class methods in the parent (super) class is defined as a signature
- The body is defined in the subclasses by "extending" the methods of the subclasses
- The subclasses call super() method to extend parent attributes and methods (data and behaviours)
- They override the super class with their own version of the method body
- They can also add their own methods and attributes (data and behaviours) relevant to the subclass
- All of these methods are called at runtime, then super called and therefore late binding takes place
- This is the reason it is called late binding or runtime polymorphish

However it is still dependent on inheritance and Java does not allow multiple inheritance
Inheritance in Java works only one way - from parent or super class down to subclasses
The super class knows nothing about its subclasses
Access control - who sees what
An abstract super class can not be instantiated - not allowed byc ompiler
An abstract class makes new classes but can not be the blue print for a new class as it is the master blue print
It is a way of locking down the master blue print so that it serves its purpose of being the single source of truth
Calling a method with a Wrapper class - array or object you are calling the global wrapper class Object that is
the uber class for super classes -> Arrays/ Objects which are reference types therefore you are referencing the hashcode
The hashcode is the address of the reference type
The methods of the global object are

- equals()
- getClass()
- hashCode()
- toString()

__An interface inheritance as a form of multiple inheritance without weakened encapsulation__

READING LIST - have a look at the pre-reads again
Effective Java
Object Oriented JavaScript - Chapter 11

- Interfaces make all methods abstract
- Abstract is true by default when you use the `interface` key word
- An interface only has methods no attributes - subclasses inherit method signature
- All methods are abstract and public and only have signatures - no attributes/constructors
- Subclasses must implement the methods of the abstract class but can have own attributes/ methods
- A class inherits from the interface and all its parents
- The first concrete subclass must implement interface methods to avoid compile time confusion
- An interface provides interface inheritance via implementation of these void methods
- Interfaces allow classes to interact with methods in a more flexible manner - modularisation of methods
- Used when classes have a different way to implement a method

```Java
public interface Bookable {
    Customer getCustomer();
    String getCustomerID();
}
```

Uses implementation and overriding polymorphism with the `implements` key word in subclasses
eg: `public class BookingSales implements Bookable`

- The implementation in the subclass can have attributes and constructors and overrides
- This is a polymorphic implementation of the method

Many classes can use the same interface for multiple inheritance - Admin?
eg: `public class Planet implements Nameable, Comparable`

eg: `public class Admin implements Bookable, Comparable`
This allows comparison of objects in a class, sorting and filtering

Interfaces prevent resource deadlock - or the deadly diamond of death

HOW?
Methods are not seeking the same resources but are implementing the methods of the classes
No rigid and formal inheritance structure, one or more interfaces can be added to any class
Method called in run time - Late/ dynamic binding, no compile time issues

__Interface Classes an extended implementation of abstract classes and polymorphism__

- public methods that a class uses to access the attributes of the class
