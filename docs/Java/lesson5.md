<!-- # Lesson 5 Notes -->

## What is method overloading

Method overloading is a form of static polymorphism

- compile time polymorphism
- where a method has one name but 2 different types of behaviours.
- In Same name, 2 args, overloading , static polymorphism

- constructors have same name as the class - example of overloading
- no return type for the constructor
- its purpose is to initialise the variable and expose the private attributes of the class
- constructor has different attributes
- eg: bank account (Bank with current account attributes/ bank with deposit account attributes)

EXAM QUESTION - What is valid overloading?

- Valid overloading is when the
- args length are the same but types are different
- args are different lengths

## What is encapsulation information hiding and data integrity

- The logic/ attributes and methods (data and behaviours) is self contained and controlled by the class
- Information is hidden from other classes by the key word private for attributes and methods
- Private methods can not be accessed by other classes
- All private attributes and methods are modified within the class with utility functions or setter methods
- All methods are validated and error checked within the class - setters update and validate information
- The public interface of a class attributes and methods are via public methods accessing private and hidden methods
- The implementation of these methods are not visible or accessible for modification by other classes
- The implementation (method body changes) can be controlled within the class so long as the signature is the same

## Why encapsulation?

- In procedural programming in the 1970s allowed access of all objects and all methods
- In the 1980s object oriented programming changed the paradigm to containerisation and modularisation of code
- The class encapsulates or modularises the code in the class
- Modularised code is written once and used many times
- Errors are handled within the class keeping code clean and free of anomalies
- Objects interact with each other via messages - the calling of the methods of public methods
- With implementation hiding changes can be made to the methods of the class
- Changes will be applied wherever the class is used if the signature of the class is unchanged

## What is the concept of interfaces between objects

- Objects rely on public methods as message interfaces allowing objects to interact with each other
- Interfaces can be via the public methods or the class interface using the `interface` key word
- Interfaces allow modularisation and interaction of classes while encapsulation preserves the integrity of data of the class

### Methods, methods methods - but which method?

- Methods have access key words which define how other objects may interact with them
- Private, public and protected
- A private method can only be called within the class
- A public method can be called by other objects accessing the class
- Methods can be void - these have a method signature but no return method or method body
- The void methods are called at run time and the body is overriden at runtime
- A protected method is what?

- Private methods can call public methods within the class and outside the class
- Public methods can call public methods
- Public methods within a class can call the private methods of that class but not of other classes
- Public methods can not call private methods of another class

__Implementation hiding__

- The implementation of these methods are not visible to other classes
- Getters - getters return information of the class
- Setters update, validate and return information of the class after validation and error handling
- Utility functions are those that enhance modularity of the class methods
