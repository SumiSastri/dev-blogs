__How to arrive at use case requirements__

- BDD - behaviour driven development
- TDD - test driven development
- DDD - data driven development (static or dynamic - sequence diagram dyanamic/ class diagram static)
- Functional Requirements
- Non-functional Requirements
- [Good examples of non-functional requirements](https://www.geeksforgeeks.org/functional-vs-non-functional-requirements/)

The realisation of a usecase diagram is a sequence diagram

__Course work pointers__

- Look at the data - what actions performed and what data needed to perform actions
- Look at the behaviours - sequentially
- What are the sequence of behaviours for a sequence diagram
- Sequence diagrams are details of high level taks in sequential order
- Relationships and links - gives structure to the model
- Behaviours achieve goals and solve problems that the user wants to pursue
- Functional requirements - typical interactions between user and systems
- How is a system is typically used - not all the ways the system can be used
- The capabilities of the system
- Nonfunctional requirements - out of user control to influence eg - encryptation/ etc.
- What are branch behaviours - sub-routines
- What are nice to have and what are luxury - if time do it
- Who are the actors? Use case actors describe roles not users
- Use cases are interactions between actors and the system
- Interactions follow both happy and unhappy paths - how to handle exceptions and errors
- Primary actors initiate the interaction
- Secondary actors respond to the interaction
- Every use case has a use case scenario in natural language to describe outcomes - postive/ how failures will be handled
- Unhappy path is a variation of the happy path it is a branch of the "typical" case
- Check if the stereotype is include or extend
- An actor can also be a system -eg: the ecom system that is an actor that interacts with the payment system
eg:
- Clock actors
- Ecommerce actors
- Payment gateway actors

- First show an uninteruppted flow of events in the use case scenario - happy path
- Is this only one or 2/ 3 scenarios? What are the subroutines
- What happens if things go wrong - can you matching details - of customer to payment
- What happens in the no shows scenario?
- How does the use case terminate? 
- How are you handling and showing error messages?
- How does user get back into the system?
- Log fault - large enough amount of work
- Any interactions with the system - actors
- Goals and expectations of what the system has to perform - interactions
- System boundary
- Left - Primary actor initiates the activities with the system
- Right - secondary actor

__Tutorial__

- Energy customer user options
- Booking of a boiler engineer
- Sunday park run


Exercise 1

Customers of an energy company typically do things such as enter meter readings (for example, the latest reading from their electricity meter), book appointments for an engineer to service their boiler and so on.

Draw a use case diagram to describe a system that allows customers of an energy company to perform tasks relating to their account.


[Sample solution](https://gist.github.com/simoncourtenage/ac6c7f2f040313c7aabbd5a8971ef893)

Exercise 2

Write a scenario for the use case for a customer booking an appointment for an engineer to service their boiler. Use a text editor or Word to do this. Try to write it without mentioning any specific implementation detail (such as menus, buttons, etc.) but still using descriptive words. You might try asking what kinds of things would be used to achieve this task if an IT system was not involved in making the appointment.
[Sample solution](https://gist.github.com/simoncourtenage/917d9edb1082b5af0da3a2701de9a766)


Exercise 3

Actors in use case diagrams represent roles and these roles are fully described by the goals they have. In the following exercise, think carefully about the actors in terms of their goals. In particular, whether a person can play more than one role (be more than one actor) over the course of their interaction with a system.

A local Sunday running club would like to develop an application that allows people to :-

see results of past races
view the current leaderboard
book a place on an upcoming race
However, only logged-in users can books places, although anyone can register for an account. Places on upcoming races are limited and are first-come, first-served. Administrators can create new races in the calendar, and are also responsible for entering results of races.

Create a use case diagram for this application. Write a scenario for booking a place on an upcoming race.

[Sample solution](https://gist.github.com/simoncourtenage/7b4d2cde1510a3c557dc2028f3a8e819)
