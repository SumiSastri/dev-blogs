<!-- ---
layout: default
parent: Software design and UML diagrams
nav_order: 8
title: What is a software design pattern and why is pattern recognition useful?
--- -->

# What is a software design pattern and why is pattern recognition useful?

A software design pattern is a recurring code pattern that can be abstracted and reused making the code modular and extensible. Design patterns help choose robust design patterns as the foundation of the system architecture. It speeds up the development process using known patterns their advantages and trade-offs according to Gamma, Helm et al, also known as "The Gang of Four"[1].

According to the authors, a design pattern provides a solution to a recurrent problem, many of these solutions are pre-existing and therefore have:

- a name - providing a vocabulary and toolset for the designer
- a problem statement - and the list of conditions that must be met to solve the problem
- a solution to the problem that meets the requirements of the problem statement
- a critical evaluation of the solution including trade-offs in implementation

Design patterns in object-oriented programming (OOP) depends on the relationship between classes and how the abstracted class design solves a real-life problem. Each component is a peice of the software that solves the problem as a whole in a particular way.

The authors outline a catalog of patterns with detailed descriptions of the kinds of problems each pattern solves with a critical evaluation. For example, the Adapter pattern, can be used to "convert the interface of a class into another interface clients expect. Adapter lets classes work together that couldn’t otherwise because of incompatible interfaces", the class is also known as wrapper to developers, in their critique, the authors outline some of the constraints such as the requirement to create several subclasses to make the interface work which can be cumbersome.



#### EXTERNAL REFERENCES What is a software design pattern and why is pattern recognition useful?

- [1] - _Design Patterns: Elements of Resusable Object-Oriented Software_, Erich Gamma, Richard Helm, Ralph Johnson, John Vlissides (O'Reilly, Oct 1994)