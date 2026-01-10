---
layout: default
parent: Database design
nav_order: 17
title: A deeper dive into entities, attributes, and keys in ERDs
last_updated: Jan 2026
---

# A deeper dive into entities, attributes, and keys in ERDs

Entity-Relationship Diagrams (ERDs) are a cornerstone of database design and provide a visual representation of the data and its relationships. As ERDs define business objects in a database rather than tables, this section is a deep dive into strong and weak entities and the design methodlogy used to create attributes for these entities. Keys are attributes that enforce relationships between entities, we take a closer look at keys as important data elements in an ERD and why they need some thought and care when selecting an attribute as a key in an entity.

## Entities: strong and weak and types of relationships 

Entities represent characteristics of a particular object in a data set. Entities have relationships with other entities. These relationships can be simple, or complex.

_Simple relationships_ in an RDBMS refer to basic linkages between two tables via keys, typically implemented as one-to-one (1 .. 1) or one-to-many (1..*) relationships. The asterisk in ERDs denote many.

_Complex relationships_ refer to many-to-many (* .. *) associations and other advanced patterns beyond simple one-to-one or one-to-many relationships

Determining strong and weak entities in relationships

A _strong entity_ is an independent entity that can exist without relying on another entity. It has a unique identifier (primary key) that distinguishes it from other entities in the database. 

A _weak entity_ on the other hand relies on a strong entity and can not exist without it.  For example, a course and course material as entities in a university database show how without the course, course materials could not exist making the course a strong entity and the course material a weak entity.

## Attributes of an entity and their classification

Attributes describe the properties of an entity. They can be classified into several types:

- _Simple Attributes_: These are atomic values that cannot be divided further. Example: `FirstName`, `Age`
- _Composite Attributes_: These can be divided into smaller sub-parts. Example: `FullName` can be split into `FirstName` and `LastName`
- _Single-Valued Attributes_: These hold a single value for each entity instance. Example: `DateOfBirth`
- _Derived Attributes_: These are calculated from other attributes. Example: `Age` can be derived from `DateOfBirth`.

Keys are attributes that perform an special function in an entity and are classified as:

- _Candidate keys_ or alterative keys (AKs) are all attributes that are unique in an entity and could be selected as either primary or foreign keys.

- _Primary key_ or PK, is a unique identifier for each record in an entity. It ensures that no two rows in a table have the same value for this attribute.

Characteristics include:

- it must be unique and uniquely identify each instance of the record
- it cannot contain `NULL` values as it contributes to amibiguity
- it should be stable and not likely to change over a period of time
- a single attribute key over composite keys should always be favoured

eg: In a `Customer` entity, `CustomerID` is a good choice for a PK because it is unique, stable, and simple, entities must have only one PK

- _Foreign key_ or FK, is attribute in one entity that refers to the primary key of another entity. It establishes a relationship between the two entities.

Characteristics include:

- an FK is an unique reference from one entity to another
- it can contain `NULL` values if the relationship is optional
- it may be part of a composite key in weak entities
- it must also be stable - not change frequently

eg: In course and course material, _course_material_ID is a good PK, and course_material_serial_number is a good candidate key (AK). Now the 2 entities can be linked to each other. The strong entity provides the weak entity with an FK. Course material takes course_ID as its FK, should the course material have multiple instances in the database, the course_serial_number could be used to create a composite key.

- _Composite key_ is similar to a compound key but is specifically used in the context of weak entities. It combines the FK from the related strong entity with one or more of the weak entity's own attributes to form a unique identifier.

Characteristics include:

- a FK from a related strong entity, as we see in the PK-FK example above, the strong entity is the `Course` and the weak entity is the `Course_Material`
- uniqueness for weak entities where no PK can be used
- it is often used to establish relationships between strong and weak entities

eg: In a complex relationship course_id and course_material_id would be used when the course material is represented in a complex relationship. The combination of course_Id (FK) of course material and course_material_id(PK) the PK of course material then is used to show the strong-weak entity relationship and use the weak entity in other relationships that the entity may have with other entities. For example, course, course material may interact with student and this configuration can be used with the student entity.

- _Compound key_ is a key that consists of two or more attributes that together uniquely identify a record. These attributes, when combined, ensure uniqueness, but individually, they may not.

Characteristics include:

- it combines multiple attributes to form a unique identifier
- it is used when no single attribute can serve as a PK
- it is often used in junction tables or associative entities

eg: In a `CourseEnrollment` entity a new attribute - course_start_date could be use to create a compound key where we have course_id, course_material_id and course_start_date as a composite key to create relationships between the 3 entities in a complex relationship

## Choosing keys best practices

As we can see requirements may grow and change the configuration of the the data-base design, therefore the conceptual ERDs are where these alterations are made before these are mapped into logical ERDs for developers to use as a blueprint to build and maintain the database. When choosing candidate keys here is a short list of best practices:

- Understand the data: Analyze the data and its relationships to identify unique attributes
- Avoid overloading: Do not use attributes with business logic (eg: National Insurance numbers) as PKs to identify a person eg: Staff entitiy identified by staff_ID not National Insurance number as it may be required in another table
- Normalise the database: Atomise tables don't create one large table, in the example above, Staff could be one entity and Payroll could be another entity which requires the National Insurance number.
- Use surrogate keys only when necessary: If no natural key exists, create a surrogate key (e.g., an auto-incremented ID)
- Choose a PK that is stable and does not change over time
- Ensure the FK of an entity is not the PK of the entity - the FK links 2 entities together and the PK of both entities have equal importance
- Consider composite and compound keys over surrogate keys: Use composite keys for weak entities and compound keys for associative entities when appropriate.
- As a weak entity** depends on a strong entity for its existence It does not have a sufficient set of attributes to form a PK on its own. Instead, it relies on a  FK from the related strong entity, combined with its own attributes, to form a composite in a logical ERD.
- Compound keys have keys that exist in other entities
- Composite keys are composed of a new attribute as well as keys that exist in other enities

Understanding entities, attributes, and keys is essential for designing robust databases. Strong entities are independent, while weak entities rely on strong entities for identification. Attributes describe the properties of entities, and keys (primary, foreign, compound, and composite) ensure data integrity and establish relationships. By following best practices for key selection, you can create a well-structured and efficient database. Compound keys are particularly useful for associative entities, while composite keys are essential for weak entities. Together, these concepts form the foundation of effective database design.
