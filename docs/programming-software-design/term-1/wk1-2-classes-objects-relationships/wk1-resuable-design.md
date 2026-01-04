ecode) which allows type checking to happen before program executes, this is true of both strongly and loosely typed languages.

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

Use case driven development (research)

__Tutorial take aways__

UML diagrams for classes use the `<<create>>` legend/label/sterotype for constructors
- accessibility is shown as `-private``+public` `#protected`

- [Tutorial sample answers link](https://gist.github.com/simoncourtenage/ba8d856dffcce472f48b52138ec538af)

__Tutorial tasks__
Exercise 0 - Easy

Create a Java project in Netbeans.  Use category "Java with Maven" and for project type, "Java Application".  You will then see a bare-bones Java application with a single class and a main function.

In the main function, print a message to the user (using System.out.println()) to type in two numbers.  You can get what the user types in at the keyboard using a Scanner object.  For example:

     java.util.Scanner in = new java.util.Scanner(System.in) ; // create new scanner to read from system input (keyboard);

  int x = in.nextInt();

Store these two numbers in two different variables. Print out their sum.

Change the program so that the code for printing out the message, reading the numbers into two variables and printing the sum is put into a separate function. Call that function from main so that it executes.

__Exercise 1__

For the remaining exercises, you can either use the same Java project or create new projects for each exercise.

Write a function called maxOfFour, which takes 4 integer arguments and returns the greatest of the four numbers.

In your main function, ask the user to type in 4 numbers. Read them into 4 integer variables and then call maxOfFour with these values and store the result of calling the function. Print out the result.         

__Exercise 2__

This is known as the 'fizzbuzz' problem.

Write a program that prints the numbers from 1 to 100. But for multiples of three print "Fizz" instead of the number and for the multiples of five print "Buzz". For numbers which are multiples of both three and five print "FizzBuzz".

__Exercise 3__

Write a program that asks the user to type in integers.

First, ask the user how many integers they will input. Use this information to create an array. Then, read in the user's numbers, storing them one by one in the array.

Write three functions. Each function should take an array of integers as its argument. Each function should iterate over the array. The first function will calculate the average of the integers in the array, the second function will calculate the minimum value, and the third will calculate the sum.

Output the result of calling each of the three functions on the array of integers.

Compile and test your code.

__Exercise 4__ (this might take longer than the tutorial)

The aim of this exercise is to emphasis the distinction between the public interface of a class (its logical properties) and the implementation of a class (what the class needs privately and internally to support those logical properties).

A social media company needs to provide statistics on its monthly active users (MAU). A MAU is defined as a user who, in any given month, writes a post or a comment at least once. Define a class for a social media user. Firstly, define its public methods - its interface - that provides the functionality, in addition to basic functionality such as finding out their and their avatar, that allows the company to decide whether a user is an MAU. Then, secondly, decide what attributes that class needs to support the functionality. Do you need any other classes to implement the public functionality of the class.

Write a program to use and test the class. You could, for example, create some users, add them to a list, simulate them posting over a variety of dates, and then iterate over the list to find MAUs for a particular month.