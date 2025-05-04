---
layout: default
title: What are software design patterns and why are they important?
nav_order: 12
parent: Software design and UML diagrams
last_updated: Feb 2024
---


# What are software design patterns and why are they important?

In software development, design patterns are standardised, reusable solutions to common design problems. Introduced and popularised by the "Gang of Four" (Erich Gamma, Richard Helm, Ralph Johnson, and John Vlissides), design patterns provide templates that guide developers in creating flexible, maintainable, and scalable software architectures. A good design pattern not only addresses a specific design issue but also anticipates broader needs, thereby supporting future extensibility and avoiding unnecessary redesign.

A well-crafted design pattern typically includes:

- Identification of pertinent objects and their roles
- Clear separation between classes that create objects (creators) and those that use them (clients)
- A design at the right level of granularity, avoiding both excessive complexity and oversimplification
- Well-defined interfaces and inheritance hierarchies to promote polymorphism and reusability
- Explicit definition of relationships between system components, especially regarding delegation and composition
- Practicality in addressing a concrete problem, while still being general enough for reuse across various systems and domains

By crystallising and simplifying overwhelming design choices, patterns help developers focus on what matters. They are a way to reuse proven solutions instead of reinventing them, thereby reducing risk and development time.

Design patterns, in concept, are abstract solutions that can be adapted to many languages, regardless of their type system. Many design patterns (like Singleton, Factory, Strategy) have been successfully implemented in both statically typed (e.g., Java, C++) and dynamically typed (e.g., Python, JavaScript) languages. In strongly typed languages (e.g., Java, C#), type checking is performed before runtime, adding an additional layer of safety when implementing patterns such as Singleton, Factory, or Observer.

Strongly typed languages enforce strict type rules (e.g., Python and Java).Loosely/weakly typed (e.g., JavaScript) allows more implicit type coercion either at compile time or runtime.  In strongly typed languages (e.g., Java, C#), type checking is performed before runtime, adding an additional layer of safety when implementing patterns such as Singleton, Factory, or Observer.

More accurately, design patterns can be effectively applied in both statically typed and dynamically typed object-oriented languages, where types are checked at compile time or runtime. Statically typed languages (like Java, C#): Types are checked at compile time. Dynamically typed languages (like Python, JavaScript): Types are checked at runtime.

The nuance here is not in strong or loose typing, but static or dynamic typeing and the underlying programming paradigm being an object-oriented paradigm rather than a functional programming paradignm. Patterns therefore are language-agnostic and can be adapted across any object oriented programming language


## What is Unified Modelling Language (UML) and how does it relate to software design?

To model and visualise these patterns, developers use Unified Modeling Language (UML), a standardised visual language for representing object-oriented systems. UML is not a methodology but rather a tool that supports design processes. It evolved from a combination of earlier approaches: OMT (Object Modeling Technique) by James Rumbaugh, the Booch Method by Grady Booch, and OOSE (Object-Oriented Software Engineering) by Ivar Jacobson. Initially developed at Rational Corporation, UML has been standardised by the Object Management Group (OMG).

UML provides a suite of diagram types—such as class diagrams, sequence diagrams, and use case diagrams—to represent the structure and behavior of systems. In class diagrams:

- Access modifiers are denoted using symbols like + (public) and - (private)
- Abstract classes and methods are typically shown in italics
- Relationships such as inheritance, aggregation, and composition are represented with distinct arrow styles

Moreover, use case driven development—a practice often associated with UML—emphasises capturing system requirements from the user's perspective, leading to more user-focused designs.

In conclusion, design patterns, when properly understood and applied, offer a powerful toolkit for solving recurring problems in software architecture. Coupled with UML’s expressive modeling capabilities, they enhance communication, maintainability, and robustness of software systems across teams and projects.
