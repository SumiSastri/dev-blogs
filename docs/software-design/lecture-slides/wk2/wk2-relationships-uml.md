__Relationship between objects and classes__

For objects to work together there must be a relationship between objects
The relationship is defined by links between objects
The link relationship lets you know that the objects are connected and "know" about each others methods and attributes
The links are either uni or bi-directional - a uni-directional only one object knows about the methods of the other
The link could be unknown and therefore unspecified
In UML - Links are instances of the relationship between classes
Labels on links give meaning to the link connections

__Generalisation and inheritance__

EG:
Part is a type, p is the variable name , the new object that the class of type Part that is utilised as a contract to create the object.

new Part -- is the new type of Part

Part p = new Part( "bolt", 23103, 0.03)

a class can utilise many types
eg:

Part {
  private CatalogEntry entry;
}

screw -> Link/ Channel to Catalog entry (in computer hardware this is the address)
UMLs use labels or names (entry local id) - connection between 2 is an abstraction of computers/ memories etc.

Not an object identity - it is a label not a variable name

One way relationship - parts know about catalog entries/ catalog entries do not know about parts
It is about identitiy - who needs to know what about whom the cross is non-navigable- no cross don't know the navigability

Objects invoke methods then this becomes important

Role names

Place holder class name
Attributes - and methods
Names and access levels (private or public)
pod class - only attributes no methods 

stereotype - constructors
destructors - stereotype
stereotypes can be added to class types - adapt meaning of the UML syntax
minus entry shows the relationship between the Part and the Catalog bec the Part is of the type CatalogEntry
Shown by association relationship

Same info in the UML in ASTA will not warn you that the info is duplicated
Op code can be passed via the UML channel to call the getCost() method/ message to abstract programming language and make it translate into UML language

Execution call
getName
screw object
Catalog Class
back to execution of code
Same with the getCost
Communication diagram for asta

Implicit return no return arrows back
Bidirectional 2 arrows not one arrow with 2 arrow

__Association, Aggregation and Composition__

Relationships between classes display some form of containment - where one object "contains" another.

Aggregation and Composition are both containment style association. Association is weak and aggregation is considered a modelling placebo as it is a form of association with no strong differences.

See slide 24 for relationship hierarchy

Exclusivity - tightly coupled - lifetime - both destroyed - composition ironically is destructive if a blog is destroyed the comments and likes are destroyed
Free-for-all - loosely coupled - lifetime - one continues vs the other being destroyed - aggregation (modelling placebo - same as association)

Dangling relationships to consider
Hierarchy of relationships based on the amount of information the model holds

Multiplicity 0..* is of one to many...

Dependency - some relationship exists weak - don't know how

[Further reading](https://www.visual-paradigm.com/guide/uml-unified-modeling-language/uml-aggregation-vs-composition/)


Use case driven development (research)