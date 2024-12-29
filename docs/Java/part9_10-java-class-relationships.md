__Design system__

How maintainable and extensible is the design system
Less design and coding time - keeps code DRY
Less maintainence time - write once apply many times in subclases
If the contract is too rigid, difficult to customise
If too customisable, error prone, no consistency
Design systems must have a balance between predictability and customisability

- These core principles of software design
  - maintain code
  - keep programs flexible and easy to extend
  - promote usage and adoption
  - keep costs of code production down
  - enhance speed and delivery
  - promote code reliability

__The concept of association__

The association of relationship can be uni directional or bi-directional.  

eg: Bidirectional relationship
The booking class has a relationship with a customer calss and a customer the relationship the booking class
A customer class owns the room booking class and can have can have 0 bookings to many bookings
Room booking class can have 0 to many customers and belongs to the customers

Association is of peers - neither is more important than the other.
Life cycle of the objects both are as important as the other - and can not exist without the other.

It can be multi-associations as well.

__The concept of aggregation__

When the whole picture is made up of an aggregate of its parts.
Unidirectional relationship

Interfaces support aggregation
Unilateral relationship - the whole it is more import than what it is connected to
The parts can exist without the whole
The parts can be repurposed and used somewhere else
The room factory can be used for a laundry check

__The concept of composition__

Unilateral relationship - the whole it is more import than what it is connected to
The whole cannot exist without its parts
The whole is made up of a composition of the parts
If the parts decompose the whole decomposes
Related to the lifecycle of the class - the class ceases to have importance and decomposes
The room booking decomposes
