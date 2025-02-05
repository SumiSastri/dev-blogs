__How to arrive at use case requirements__

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
[Good examples of non-functional requirements](https://www.geeksforgeeks.org/functional-vs-non-functional-requirements/)

Use case actors describe roles not users
Use cases are interactions between actos and the system

Interactions follow both happy and unhappy paths - how to handle exceptions and errors
Primary actors initiate the interaction
Secondary actors respond to the interaction

Every use case has a use case scenario in natural language to describe outcomes - postive/ how failures will be handled
Unhappy path is a variation of the happy path it is a branch of the "typical" case

An actor can also be a system -eg: the ecom system that is an actor that interacts with the payment system
Clock actors
Ecommerce actors
Payment gateway actors

An uninteruppted flow of events in the use case scenario
2/ 3 scenarios?
Matching details - of customer to payment
No shows?

Terminate use case
Show error message
Arrow to show how to get back to system or exit
Log fault - large enough amount of work

Any interactions with the system - actors
Goals and expectations of what the system has to perform - interactions
System boundary
Left - Primary actor initiates the activities with the system
Right - secondary actor