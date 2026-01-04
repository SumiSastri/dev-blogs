---
layout: default
parent: Database design
nav_order: 17
title: A deeper dive into entities, attributes, and keys in ERDs
last_updated: Jan 2026
---

# A deeper dive into entities, attributes, and keys in ERDs

Entity-Relationship Diagrams (ERDs) are a cornerstone of database design and provide a visual representation of the data and its relationships. This section is a deep dive into the types of entities and attributes, with a special focus on keys as important data sets in an ERD and why they need some thought and care when selecting an attribute as a key in an entity.

## Entities: strong and weak

Entities as we have seen in the previous section, are represent characteristics of a particular object in a data set. Entities have relationships with other entities creating either a superclass of entities that subclasses inherit attributes from, or simply are stronger entities when compared to an entity that there is a relationship with.

A **strong entity** is an independent entity that can exist without relying on another entity. It has a unique identifier (primary key) that distinguishes it from other entities in the database.

Example: Consider a `Course` entity in a university database. Each course has a unique `CourseID`, which serves as the primary key. The `Course` entity does not depend on any other entity for its existence, unlike `Course_Material` as an entity. Without a course, the course material could not exists. Therefore in this relationship we can see how course is a strong entity, while course material could be a weak entity. Some features that identify strong entities are they:

- have a primary key (PK)
- do not rely on other entities for identification.

A **weak entity** depends on a strong entity for its existence as we have seen in the example above. It does not have a sufficient set of attributes to form a PK on its own. Instead, it relies on a **foreign key** or FK from the related strong entity, combined with its own attributes, to form a **composite key** in a logical ERD. In a conceptual ERD both entities will exist, but when the conceptual ERD is mapped to a logical ERD, the weaker entity is considered a child entity of the parent and linked by an FK. Another example to highlight the difference is looking at an `OrderItem` entity in an e-commerce database. Each `OrderItem` belongs to a specific `Order`. If a customer makes no orders, an order item is not required. Order becomes the parent and the stronger entity, the relationship to the order-item is linked via an FK, like an item SKU, for example. To identify a weak entity in a logical ERD you will find it:

- lacks a PK and has only an FK
- depends on a strong entity for identification
- for indentification it requires a discriminator key - a combination of the PK and FK as a composite key
- cardinality is used to determine PKs and FKs in a 1:N relationship, the many side of the equation takes the FK; in 1:1 relationships the concept of strong and weak relationships comes into play. For example, student has computer shows 2 strong entities, you can argue the computer is more permanent than the student or that without the student the computer has no relevance in a database. But if you interrogate the data-brief and the database belongs to a university, where the university loans the computer to the student, you may decide that the computer serial number should be the primary-key while the studentID should be the FK as the student turnover is high and frequent changes to the key are not adviseable. The cardinality will show the relationship is 1:N, where student represents N, so therefore N should take the FK. Cardinality helps determining key choice.

## Attributes: types and special considerations

Attributes describe the properties of an entity. They can be classified into several types:

- **Simple Attributes**: These are atomic values that cannot be divided further. Example: `FirstName`, `Age`
- **Composite Attributes**: These can be divided into smaller sub-parts. Example: `FullName` can be split into `FirstName` and `LastName`
- **Single-Valued Attributes**: These hold a single value for each entity instance. Example: `DateOfBirth`
- **Derived Attributes**: These are calculated from other attributes. Example: `Age` can be derived from `DateOfBirth`.

## Keys: Primary, Foreign, Compound, and Composite

A **primary key** or a PK a unique identifier for each record in an entity. It ensures that no two rows in a table have the same value for this attribute.Characteristics include:

- it must be unique and uniquely identify each instance of the record
- it cannot contain `NULL` values as it contributes to amibiguity
- it should be stable and not likely to change over a period of time
- a single attribute key over composite keys should always be favoured
eg: In a `Customer` entity, `CustomerID` is a good choice for a PK because it is unique, stable, and simple, entities must have only one PK

A **foreign key** or an FK an attribute in one entity that refers to the PK of another entity. It establishes a relationship between the two entities.Characteristics include:

- an FK is an unique reference from one entity to another
- it can contain `NULL` values if the relationship is optional
- it may be part of a composite key in weak entities
- it must also be stable - not change frequently
eg: In an `Order_Item` entity the SKU is the PK of the item. To bind it to the `Order` entity, the PK attribute `OrderID` in the Order entity is added to the `Order_Item` attributes and is identified as an FK in `Order_Item` linking the 2 tables in a PK-FK composite key combination. This PK-FK combination now uniquely identifies the link between the 2 entities and the `Order_Item` entity retains its integrity (or ability to be uniquely identified) retaining its own PK and we remove redundancy by changing the PK from `Order` into an FK in the `Order_Item` entity binding the 2 objects.

A **composite key** is similar to a compound key but is specifically used in the context of weak entities. It combines the FK from the related strong entity with one or more of the weak entity's own attributes to form a unique identifier. Characteristics include:

- a FK from a related strong entity, as we see in the PK-FK example above, the strong entity is the `Order` and the weak entity is the `Order_Item`
- uniqueness for weak entities where no PK can be used
- it is often used to establish relationships between strong and weak entities
eg: To reuse these objects in a shopping cart, we may need to link the product, item and order together. Here we create a new link table with a composite key that uses the 2 IDs - the ProductID, the ItemSKU as 2 FKs in the link table. This link table also needs to show integrity - which it can not with the same FK-FK combination we see if there are multiple orders of the same item by multiple customers. So a date-time stamp may be used as a new PK for this link table which could be called `Order_Date_Time`. The combination is now unique with an FK-FK-PK combination.

As we can see requirements may grow and change the configuration of the the data-base design, therefore the conceptual ERDs are where these alterations are made before these are mapped into logical ERDs for developers to use as a blueprint to build and maintain the database.

A **compound key** is a key that consists of two or more attributes that together uniquely identify a record. These attributes, when combined, ensure uniqueness, but individually, they may not. Characteristics include:

- it combines multiple attributes to form a unique identifier
- it is used when no single attribute can serve as a PK
- it is often used in junction tables or associative entities
eg: In a `CourseEnrollment` entity, a combination of `StudentID` and `CourseID` can serve as a compound key, uniquely identifying each student's enrollment in a specific course

**Choosing keys best practices**

- Understand the data: Analyze the data and its relationships to identify unique attributes
- Avoid overloading: Do not use attributes with business logic (e.g., Social Security Numbers) as PKs
- Normalize the database: Ensure the database is normalized to reduce redundancy and improve key selection
- Consider composite and compound keys over surrogate keys: Use composite keys for weak entities and compound keys for associative entities when appropriate.
- Use surrogate keys only when necessary: If no natural key exists, create a surrogate key (e.g., an auto-incremented ID)

In greater depth, first identify from the above process candidate keys. Candidate keys are all keys with unique identifiers of the entity data. Select one as a PK, keep an eye out for other unique attributes in case they are required for mapping as AKs (alternative keys). When you are mapping the PKs from a conceptual ERD to a logical ERD with the view to developing the blueprint for an RDMBS database, the PK-PK combination can be mapped into 2 FKs in an FK-FK or PK-FK combination as a table can not hold 2 PKs. This is to ensure data integrity and avoid redundancy.

In some cases the 2 PKs are the only keys to use to combine tables, they are then mapped as a PK-AK combination, where AK is the alternative key.

Identifiers in more complex database designs may require more than PK-FK combinations to identify them. You may need a composite key - often 2FKs in a table. As we see each key is an FK and the combination of FK-FK inherits the PKs of the parents makis this a composite key - composed of its inherited characteristics as well as its own inherint

The addition of a new PK highlights the importance of selecting all AKs early in the planning process as the AK in this instance can become a PK in a composite key combination.

## Conclusion

Understanding entities, attributes, and keys is essential for designing robust databases. Strong entities are independent, while weak entities rely on strong entities for identification. Attributes describe the properties of entities, and keys (primary, foreign, compound, and composite) ensure data integrity and establish relationships. By following best practices for key selection, you can create a well-structured and efficient database. Compound keys are particularly useful for associative entities, while composite keys are essential for weak entities. Together, these concepts form the foundation of effective database design.
