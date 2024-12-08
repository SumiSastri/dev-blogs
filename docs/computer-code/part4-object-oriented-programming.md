---
layout: default
title: What are the core principles of object-oriented programming?
parent: Computer programming fundamental principles
nav_order: 6
last_updated: Dec 2024
---

# What are the core principles of object-oriented programming?

Today, programming takes different approaches to writing and packaging code. Some of these approaches, or paradigms, outlined by Pokkunuri[1] are functional or procedural programming, logic programming, object-oriented programming, access-oriented programming, and constraint-based programming. Pokkunuri opines that there is no universal agreement on the best option. Each paradigm has its advantages and trade-offs.

Object-oriented programming aims to solve real-world problems using objects. Objects are abstract models of problem statements, and computer programs, or blocks of code, are created to solve these problems.

It is different from the functional and procedural approaches used in the past. 
Functional programming is an early evolution of programming in which each function is spelt out in each sequence.

Object-oriented programming places its attention on objects and their behaviour or interaction with other objects, the Pokkunuri paper states.

Object-oriented programming shares four key principles
1. Abstraction
2. Encapsulation
3. Polymorphism
4. Inheritance

which we will cover in this article. A key concept to outline is the difference between attributes and methods in a class and briefly touches on the concept of state.

Objects have attributes that describe them and methods that enable code execution.

State - or the data held in an object is managed and either read or updated. To read state, objects have getter methods and to mutate or update state they have setter methods. The methods or functions defined in an object define the behaviours of the object.

For example, an object in JavaScript contains the state or data of the person Jack Jones. To calculate his Body Mass Index, a method or function is used. A method, according to Tusa[2], is an operation that can be executed on an object.

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

While the code above is in JavaScript, a completely different language Java has the same concept of an object written in different syntax. Java is strongly typed, meaning every variable has a data type and cannot be executed unless there is a type associated with an object.

To create an object in Java, a class is required. In JavaScript, objects are created by following the inherited prototypes of other objects. As such, JavaScript therefore mimics object-oriented programming by creating classes from factory functions but the underlying language does not inherently support the creation of classes out of the box.

Let's look at a Java class to see how a class has attributes and methods in the example below.

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

## What is the value of classes in creating new object instances?

Object-oriented programming relies on classes that are blueprints creating new object instances. The Class keyword in most object-oriented languages refers to the constructor that constructs new instances of objects.

Each object must be initialised or instantiated. Take the example above. If we want different people, with different names and to calculate the BMI this is what we would do

```Java
Person p1 = new Person("John", "Doe", 80, 1.7);
p1.calcBMI(58,1.7)

Person p2 = new Person("Jane", "Doe", 65, 2.0);
p2.calcBMI(58,2)
```

Now the class Person has performed its job of creating 2 new objects, which are abstractions of the real-life people Jane and John Doe, one with a weight of 80 kilos and height of 1.7 meters and the other with a weight of 65 kilos and 2.0 meters. 

The two objects p1 and p2 which represent the individuals in the example, now can access the methods of the class and their BMI calculated.

## What is abstraction in object-oriented programming?

As we are creating an abstract version of a person in the Person class, as seen above, the code is considered an abstraction of a real-life problem that we are trying to solve.

The problem statement here is what is the BMI of a person and how do we calculate it. How can we calculate the BMI of several people with different heights and weights and relate them to their names?

The attributes in the class give us the opportunity of abstracting a person by their name and the method allows us to calculate their weight and associate it with an individual.

The class now can create many people, with different names, different heights and weights and we can calculate their BMI by calling the method in the class.

## What is encapsulation in object-oriented programming?

Classes are methods or blocks of code that allow you to create new objects with the attributes and methods that are contained in the class. Attributes of a class are private to ensure modularisation of code. 

This containment of the methods and attributes of a class to the class is called encapsulation. 

The methods are public and can be accessed by other classes in the application software and code packages that use these classes to run programs.

As you will see in both the JavaScript and Java code blocks, the use of the `this` keyword. It highlights the encapsulation of an attribute or a method to "this" variable of person as described in JavaScript or "this" class of Person as described in Java.

JavaScript, unlike Java, has no concept of classes and uses prototypal inheritance from the Window Object to define classes.

In reality, the JavaScript object is created using the global Object class that is inherited from the Window Object like so: `const person = new Object();` as you will see from the Mozilla documentation[3]. 

## What is the hierarchy of methods in a Java class?

As you can see by the differences between Java and JavaScript, the object-oriented paradigm has differences in the way some of these core principles are implemented. 

Pokkunuri, highlights these differences in his paper, discussing other languages that use the object-oriented paradigm, with examples from Smalltalk,[4] a purely object-oriented language with no primitives like strings and numbers, C++ and Objective-C which are object-oriented paradigms of the C language or object-Pascal, for Pascal.

A disambiguation note, Java bears no relationship with or to JavaScript. The languages and the use cases are completely different.

In a Class, not all methods are equal. There is a hierarchy of classes and depending on the programming language and the program architecture the hierarchy of classes may vary.

Java is a compiled language. For a better understanding of code packages and code compiling, [the article on storing and accessing programming data](https://sumisastri.github.io/dev-blogs/computer-code/part3-storing-and-accessing-data/) in this section will provide some context.

For this article we will focus, from now onwards on the Java programming language and demonstrate the hierarchy of methods in the code compilation process in the Java language.

__The main method__

The main class in a program in Java class is a static method, it has no attributes and is the first to be called in the stack by the Java compiler, or JVM (Java Virtual Machine).

For the sake of the example, this package is called the BMI calculator. In the main class of this program, we initialise the class Person that has been created in a separate code block, the class with the constructor Person.

```Java
package bmicalculator;

public class Program {

    public static void main(String[] args) {

      Person p1 = new Person("John", "Doe", 80, 1.7);
      p1.calcBMI(58,1.7)

      Person p2 = new Person("Jane", "Doe", 65, 2.0);
      p2.calcBMI(58,2)
    }
}
```

It contains the core code on how the whole application will be run. There is only 1 main program in a package.

__The constructor method__

The constructor method refers to all the classes in the package that create new objects. 

```Java
class Person {
// attributes information hiding and encapsulation
{
private String name;
private String surname;
private Double weight;
private int height;
}
// constructor
  public class Person (String name, String surname) {
   this.name = name;
   this.surname = surname;
}
}
```
A second class may create many address objects like so. Note the name of the class and the public method that access the private encapsulated methods use the same naming convention. The JVM recognises and compiles the code using the `public` key word in run time.

```Java
class Address {
{
private String firstLine;
private String secondLine;
private String postcode;
}
// constructor
  public class Address (String firstLine, String secondLine, String postcode) {
   this.firstLine = firstLine;
   this.secondLine = secondLine;
   this.postCode = postcode;
}
```

The method, initialises the private attributes, making them public with a method so that they can be invoked in the main method. 

__The getter and setter methods__

To get the data in the class, getters return the state of the object while setters allow programmers to update or mutate the initial state of that data.

```Java
class Person {
// attributes information hiding and encapsulation
{
private String name;
private String surname;
private Double weight;
private int height;
}
// constructor with all attributes
  public class Person (String name, String surname, Double weight, int height) {
   this.name = name;
   this.surname = surname;
   this.weight = weight;
   this.height = height;
}

    public String getName() {
        return name;
    }
      public String setName() {
        return name;
    }
}
```

In this approach an object behaves like a primitive element, combining attributes and procedures. Data is transmitted by the method's signature - which is the function name, its parameters and procedures. The function is then "called" or invoked and the program set in the class runs.

This, Pokkunuri says is in contrast with a data-structure-oriented-programming. In this paradigm, a single powerful data structure is used. In SQL, this is a relational database, in LISP a list, or in APL an array.

In object-oriented programming, each object is a modular and autonomous entity. It has attributes and methods that send messages through callable functions to corresponding objects.

So, in the main program, we can now access the name of the p1 abstraction of John Doe and update the name to Johnathan.

```Java
package bmicalculator;

public class Program {

    public static void main(String[] args) {

      Person p1 = new Person("John", "Doe", 80, 1.7);
      p1.getName()
      p1.setName("Johnathan")
    }
}
```

__Static methods that call on classes not objects__

Static methods, Tusa elaborates [5], are called at run time and not at compile time. They are methods that are written without attributes as they are methods that invoke classes not objects.

The advantage of these methods is that they are invoked on a class and therefore, in this example, you can calculate the BMI of several individuals by invoking the Person class, not the p1, p2 objects that have been created by the class.

```Java
public class BMIcalculator {
    public static int calculateBMI(int height, int weight) {
         return weight / height
    }
}
```

The code we saw initially now can be modularised, with the calculator method taken out of the class and the constructor, getter and setter methods. It can stand alone and call the class to calculate the BMI of any number of people - which is the problem we are trying to solve with this abstraction.

Encapsulation, therefore, does not work here as the calculation of the BMI does not depend on the person but is a class of its own that needs to be applied to calculating a person's weight. Therefore, in the package above, we can create a utility function `BMICalculator`
which is a class in its own right that can calculate the weight of any person.

Now in the main program, we invoke this class to calculate the BMI of all the instances of the person created - p1 and p2 which are abstractions of the people John and Jane Doe.

```Java
package bmicalculator;

public class Program {

    public static void main(String[] args) {

      Person p1 = new Person("John", "Doe", 80, 1.7);
      Person p2 = new Person("Jane", "Doe", 65, 2.0);

    String p = Person.BMICalculator()
    }
}
```

The JVM compiles the code by parsing the `public static` key word and making it available to be called on all instances of the class and the objects created by that class as we see above.

## What is dynamic binding, polymorphism or method overloading?

Staying with our Java example, of the Person class, we can demonstrate how a class can have a method with the same name and different parameters. As the signature of the method is different, the name can be "overloaded" with parameters as the method is called when the code is run and not when it is compiled. This is what is referred to as dynamic binding.

```Java
package bmicalculator;

class Person {
{
private String name;
private String surname;
private Double weight;
private int height;
}

// constructor is a method that can be overloaded
  public Person (String name, String surname) {
   this.name = name;
   this.surname = surname;
   this.weight = weight;
   this.height = height;
}

// constructor is a method that can be overloaded
  public Person (Double weight, Double height) {
   this.name = name;
   this.surname = surname;
   this.weight = weight;
   this.height = height;
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

Because the method has the same name with different signatures, method overloading is an indication of the principle of polymorphism, adds Tusa[6]. 

Derived from the Greek word meaning many forms - poly (many) and morph (form) - polymorphism in object-oriented programming refers to the ability of methods to adopt several forms, method overloading being one example.

## What is inheritance in object-oriented programming?

The principle of inheritance in object-oriented programming depends on the method hierarchy and in Java, the keyword `super` is used when a superclass is created.

The sub-classes of this class will inherit the attributes and methods of the superclass. The classes "extend" the main class features.

In our example, if the hypothesis in real life that we want to check is whether young adults, mid-life adults and seniors change with age, we can extend the person class into 3 sub-classes

```Java
package bmicalculator;

public class YoungAdult extends Person {

// constructor
public YoungAdult (Double age)
// access attributes of the parent class with the super keyword and inherits them
{
 super (name, surname);
 this.age = age;

}
}
```
The second sub-class also inherits all the attributes of the parent class with the `super` key word. You can also add specificity, if you want to, for example, check if gender is a factor for BMI.
```Java
package bmicalculator;

public class Senior extends Person {

// constructor
public Senior (String name, String surname, Double age, String gender)
// add additional attributes that are not shared by YoungAdult sibling class
{
 super (name, surname);
 this.age = age;
 this.gender = gender;
}

public void getGender(){
  return gender;
}
}
```

With the examples above, we have explored the core concepts that underly object-oriented programming - abstraction, encapsulation, polymorphism and inheritance.


#### EXTERNAL REFERENCES

- [1] __Central Electronics Engineering Research Institute__ "Object Oriented Programming", Bhanu Prasad Pokkunuri, an abstract from the file "oop_paper.pdf"

- [2] __Think Object Oriented__, "An Overview of Classes and Objects", Tusa, Francesco (Accessed: Dec. 7, 2024) [Available](https://thinkobjectoriented.hashnode.dev/introduction-to-the-java-language)

- [3]
- [Documentation Mozilla - numbers](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Number)
- [Documentation Mozilla - strings](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/String)

- [4] __Cincomsmalltalk__, "What is the Smalltalk Programming Language?",(Accessed: Dec. 7, 2024) [Available](https://www.cincomsmalltalk.com/main/info/quick-start/what-is-the-smalltalk-programming-language/)

- [5] __Think Object Oriented__, "Understanding Static Attributes and Methods", Tusa, Francesco (Accessed: Dec. 7, 2024) [Available](https://thinkobjectoriented.hashnode.dev/understanding-static-attributes-and-methods)

- [6] __More on Memory Management, Static Attributes and Static Methods__, Francesco Tusa (2024), PDF slides  [Available to MSc Computer Science Students MODULE: (2024) 7SENG011W Object Oriented Programming](https://learning.westminster.ac.uk/ultra/courses/_98802_1/outline/file/_5052469_1) and [Lecture 8 Pantopo recordings for the module](https://westminster.cloud.panopto.eu/Panopto/Pages/Viewer.aspx?id=52932e3e-4774-4e02-ab70-b227009d73e8)

