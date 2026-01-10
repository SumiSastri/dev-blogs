---
layout: default
parent: Database design
nav_order: 17
title: Understanding entity relationships in conceptual ERDs  
last_updated: Jan 2026
---

# Understanding entity relationships in conceptual ERDs  

A conceptual ERD models the  business objects that should exist in a system and the relationships between them. It is an overview of teh system by defining what
entities exist, not which tables. The relationships between entities are deemed as important and are mapped out with their multiplicities.
A conceptual data model comprises of

- Entities can be identified by the nouns/ noun-phrases in a database design brief
- Attributes and attribute domains (what identifies the characteristics of this entity/ the domains are the types)
- Definition of keys as principal discriminators and identifiers
- Relationships between entities (implicity and explicit from a brief often identified by verbs/ verb-phrases)
- Multiplicities between relationship types and the constraints of participation/ cardinality
- Constraints and disjoints within participation and cardinality

## What are relationships between entities and why are they important?

Relationships between entities define how two or more entities interact with each other within a system. They are crucial in database design as they help establish the structure and flow of data, ensuring data integrity and enabling meaningful queries. Properly defined relationships allow for efficient data storage, retrieval, and manipulation.  

## The degree of a relationship defined

The degree of a relationship refers to the number of participating entities in a relationship
• two is binary: most common
• three is ternary
• four is quaternary
• n is n-ary.

**Binary**
Binary relationships involve two entities and are the most common type of relationship. For example, a technician oversees a lab. Here the technician entity and the lab as an entity are 2 equally strong entities. The lab can exist without the technician and the technician does not neeed a lab and can operate in other environments.

**Recursive**
Recursive relationships occur when an entity is related to itself. This is a relationship that also involves two entities but one entity performs 2 roles in the relationship. Examples include an employee of a firm can also have a manager who is an employee; a course material may have supplementary materials and main materials both are course materials.  

**Ternary**
Ternary relationships involve three entities simultaneously. They are used when a binary relationship cannot fully capture the interaction. For example, a technician oversees a lab and all its equipment; a student enrols in a course taught by a particular lecturer. Always start modeling with binaries and use a ternary relationship only when binaries fail to capture the required business semantics involving all three entities simultaneously. Care must be taken in creating only binary relationships if three entities require each others keys to interact efficiently. Here a binary relationship can lead to loss of meaning or inaccurate representation of the constraints and real-world logic that the data model must capture - a ternary relationship will do this more effectively. In all such cases prefer a ternary relationship to binaries.

**Quaternary**
Quaternary relationships involve four entities. These are less common and are used when interactions among four entities need explicit modeling. They are often complex and may require normalization. eg: A financial institution supports bids arranged by solicitors on behalf of respective clients. 

**Enary**
Involve any number of relationships that involve 5 or more interactions, even less common and do require explicit modelling needing normalisation as in quaternary relationships

## Steps to establish relationships in a conceptual ERD

- Identify entities
- List their attributes
- Validate use cases to align with real-world scenarios to identify the relationshisp and multiplicities
- Identify relationships as binary, recursive, ternary, etc.,
- Determine the mulitplicities of participation and cardinality
- Simplify a relationship if possible this ensures design normalisation

## How keys connect and bind entity relationships

Different relationships are needed to accurately model real-world interactions between entities. They ensure that the database structure reflects the logical flow of data and supports the required operations. Keys play an important part in the mapping of conceptual ERDs to logical ERDs. 

In a simple _binary relationship_, the keys capture simple, direct interactions with the use of primary keys, foreign keys and alternate keys. These are mapped from a conceptual ERD to a logical ERD and tables created representing the relationships of the visual concepts of the conceptual ERD take shape in structured data in the entity diagram. From here the domains or the data types are mapped as the third stage before the data-base is built and tested.

_Ternary, Quaternary and Nary relationships_ model complex interactions involving multiple entities may require multiplicites to be identified, link tables to be created and complex and composite keys to identify their relationships. The entities are then created with these additional link table entities which in the last stage are given their types or domains for database creation.

_Recursive_ Represent hierarchical or self-referential data 

## How are relationships used in logical ERDs?

In logical ERDs, relationships are used to define foreign keys and constraints that enforce the associations between entities. They help in designing the schema for relational databases, ensuring data consistency and enabling efficient querying. Logical ERDs also refine the conceptual design by incorporating attributes and primary/foreign key relationships.  

Understanding and defining relationships between entities is a fundamental aspect of database design. Conceptual ERDs provide a high-level view of these relationships, enabling designers to model real-world interactions effectively. By identifying the types of relationships, determining cardinality, and validating with use cases, you can create a robust and normalised database structure. These relationships form the foundation for logical ERDs, which further refine the design and ensure data integrity in relational databases.  
