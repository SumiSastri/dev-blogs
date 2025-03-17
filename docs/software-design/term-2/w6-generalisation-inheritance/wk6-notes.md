__Generalisation__

The common contract eg: costs for both assemblies and parts

Inheritance
The specifics of the generalised class - assemblies are part of components - just special versions component is the super class

The base or super class is extended into the sub class or specialised version


Abstract ke word means we don't want objects from this class

Overrides - implementations different - different foods for the different animals - cat, dog, goldfish

Object/Assembly/Component (3 classes in this class extension)

Association-Aggregation-Composition
The relatinship between the class and the object
The classes and their association - run the programs in the objects
1:1 mapping static code and the runtime code

Generalisation-Inheritance-polymorphism
Is a relationship between classes not 1:1 class to object
Class as a set of objects/ classes

Component as a set of objects/classes

Is a has a

__Super class Wk7__

AKA base class
Subclasses have special behaviours in the methods
Kernel of the structure is in the superclass once - duplication avoided
Attributes - go into state management
Methods - all must be inherited without exception by the subclass
It is a contract with methods but not with attributes

UML representation if there is no overriding then no methods shown in the subclass
But when the method is overriden then you add the method into the subclass
Slide 14
Same return type and same number of params - overrding
You can also overload
Protected/ public classes only are seen by the call stack of nested objects
Slide 15
C++ Friend class (breaks type system)
Slide 18
Program needs to know unambiguously to call methods on the stack, the  ambiguity of how the resource is accessed makes it crash/ stop in compile time

__Interfaces__

Solves the challenge of multiple inheritance which inheritance does not allow
Specification of behaviour
It is a contract
Interface only provides what is dones - names of services (methods with return types and params)
Use multiple interfaces
Not nesting objects within one other - no notion of having to implement super class contracts 
An interface can be one method - but the contract is strict
An interface can operate like a type of (type strict of method)
Demo section in the class recording Pantopo
Polymorphism without superclasses

Interfaces dont provide inheritance because there is nothing to inherit
Isolating methods - not inheritance
Classes have one method - price - eg:(taxis/oranges/ eggs)
