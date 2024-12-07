---
layout: default
title: What are the core principles of object oriented programming?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# What are the core principles of object oriented programming?

Programing today has different approaches to writing and packaging code. Some of these approaches, or paradigms outlined by Pokkunuri[1] are functional or procedural programming, logic programming, object oriented programming, access-oriented programming, constraint based programming. There is no universal agreement, Pokkunuri opines, as to the best option. Each paradigm has its advantages and trade-offs.

Object oriented programming aims to solve real world problems using objects. Objects are abstract models of these problem statements and computer programs, or blocks of code, are created to solve these problems.

It is different from the functional and procedural approach used in the past. Functional programming, is an early evolution of programming where each function is spelt in a given sequence.

Object oriented programming, places its attention on objects and their behaviour or interaction with other objects, the Pokkunuri paper states.

__What is the difference between attributes and methods in a class?__

Objects have attributes that describe them and methods that enable code execution.

State - or the data held in an object is managed and either read or updated. To read state, objects have getter methods and to mutate or update state they have setter methods. The methods or functions defined in an object define the behaviours of object.

For example, an object in JavaScript, contains the state or data of the person Jack Jones. To calculate his Body Mass Index, a method or function is used. A method, according to Tusa, is an operation that can be executed on an object.

```JavaScript
const person = {
// attributes
      firstName: "Jack",
      lastName: "Jones",
      weightInKilos: 50
      heightInMeters: 1.5
      },
    // methods  
      Bmi: function() {
      return this.weight / this.height
   },
      }
```      

While the code above is in JavaScript, a completely different language Java has a the same concept of an object written in different syntax. Java is strongly typed, meaning every variable has a data type and can not be executed unless there is a type associated with an object.

To create an object in Java, a class is required. 

```Java
class Person {
// attributes information hiding and encapsulation
{
private String name;
private String surname;
private Double weight;
private int height;
}
// public methods that can be invoked by other classes and objects
public int calcBMI (Double weight, int height) {
   return this.weight / this.height
}
}
```

## What is abstraction in object oriented programming?

As we are creating an abstract version of a person in the Person class, as seen above, the code is considered an abstraction of a real-life problem that we are trying to solve.

The problem statement here is what is the BMI of a person and how do we calculate it. How can we calculate the BMI of a number of people with different heights and weights and relate them to their names?

The attributes in the class give us the opportunity of abstracting a person by their name and the method allows us to calculate their weight and associate it with an individual.

The class now can create many people, with different names, different heights and weights and we can calculate their BMI by calling the method in the class.


## What is encapsulation in object oriented programming?

Classes are methods or blocks of code that allow you to create new objects with the attributes and methods that are contained in the class. Attributes of a class are private to ensure modularisation of code. 

This containment of the methods and attributes of a class to the class is called encapsulation. 

The methods are public and can be accessed by other classes in the application software and code packages that use these classes to run programs.

As you will see in both the JavaScript and Java code blocks, the use of the `this` key word. It highlights the encapsulation of an attribute or a method to "this" variable of person as described in JavaScript or "this" class of Person as described in Java.

JavaScript, unlike Java has no concept of classes and uses prototypal inheritance from the Window Object to define classes.

In reality, the JavaScript object is created using the global Object class that is inherited from the Window Object like so: `const person = new Object();` as you will see from the Mozilla documentation. 

__What are getter and setter methods in Java?__

In Java, a better example of object oriented thinking in programming, classes have methods to access state. 

To get the data in the class, getters return the state of the object while setters allow programmers to update or mutate the initial state of that data.

In this approach an object behaves like a primitive element, combining attributes and procedures. Data is transmitted by the method's signature - which is the function name, its parameters and procedures. The function is then "called" or invoked and the program set in the class runs.

This, Pokkunuri says is in contrast with a data-structure-oriented-programming. In this paradigm, a single powerful data structure is used. In SQL, this is a relational database; in LISP a list, or in APL an array.

In object oriented programming, each object is a modular and autonomous entity. It has its attributes and methods that sends messages through callable functions to corresponding objects.


## What is dynamic binding, polymorphism or method overloading ?

Staying with our Java example, of the Person class, we can demonstrate how a class can have a method with the same name and different parameters. As the signature of the method is different, the name can be "overloaded" with parameters as the method is called when the code is run and not when it is compiled. This is what is referred to as dynamic binding.

```Java
class Person {
{
private String name;
private String surname;
private Double weight;
private int height;
}
// dynamic binding and method overloading
public int calcBMI (Double weight, int height) {
   return this.weight / this.height;
}

public int calcBMI (String name, String surname, Double weight, int height) {
   return System.out.println("This is the BMI of " + this.name + this.surname) && this.weight / this.height
}
}
```
Therefore, the first method in runtime will return the BMI of a person, while the second method will print the name of the person and their BMI.

Because the method has the same name with different signatures, method overloading is considered to be an indication of the principle of polymorphism. Derived from the Greek word meaning many forms -  poly (many) and morph (form) - polymorphism in object oriented programming refers to the ability of methods to adopt several forms, method overloading being one example.


## What is inheritance in object oriented programming?

#### EXTERNAL REFERENCES

## Blogs

- [2] __Think Object Oriented__, "An Overview of Classes and Objects", Tusa, Francesco (Accessed: Dec. 7, 2024) [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-the-java-language)


## Documentation
- [3]
- [Documentation Mozilla - numbers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)
- [Documentation Mozilla - strings](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)


## Research papers

- [1] __Central Electronics Engineering Research Institute__ "Object Oriented Programming", Bhanu Prasad Pokkunuri, an abstract from the file "oop_paper.pdf"
