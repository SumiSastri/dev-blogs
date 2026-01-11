---
layout: default
parent: ERDs map relationships and multiplicities not tables, columns and rows
nav_order: 17
title: What are 
last_updated: Jan 2026
---

# ERDs map relationships and multiplicities not tables, columns and rows

Relational databases (RDBMS) follow a structured approach where individual entries or records are stored in tables organised into rows and columns. They are called "relational" databases because tables are linked to each other based on relationships. When designing a conceptual entity relationship diagram (ERD), understanding how table entities are linked by their relationships is a key first step in determining the RDBMS design and structure. However, ERDs describe entities and not table structures. They describe the business objects in a database not the physical table itself.

The conceptual ERD is mapped to a logical ERD which then becomes a table. When designing tables, the concepts of normalisation and redundancy are reviewed in conjunction with ERD relationships and multiplicities to create a physical database.

Normalisation is the process of creating many tables rather than storing one large table with all the data, a relational database atomises the data into entity tables. For example, in a university library, instead of having one table with all the student, course and library book records, a relational database will have a table for students with student details, a table for courses and course details and a table for library books with the library book details. Each table contains data elements organised into records, fields, rows and columns. The tables are connected by relationships via primary keys - a unique identiier.

For example, the row or field with a student record, `123, Ram Ratan Sastri, 57, Cranfield Gardens, London, W12` is stored in columns representing the attributes of the record - student_ID, first_name, last_name, address. The student_ID field 123, identifies the student and is the primary key. The book table or entity may have as its attributes book_ISBN, book_name, book_author. The student can be linked via the primary key of the book table, the book_ISBN, to the student's primary key. A third table, the borrow table, with a borrow date, connects the student, the book and the library books borrowed, with 3 tables and with the relationships between them - student borrows book.

However, a conceptual ERD would simply determine the entities in the database and their relationships.

Entities: Student/ Book

Relationships: The relationships are typically represented similarly to the construction of a sentence - student (subject) borrows (verb) book (object or predicate).

Student borrows book (the relationship represents the direction between student and book) or
Book is borrowed by the student (the relationship represents the direction between book and student)

While this may ultimately be translated into tables for the RDBMS, ERDs are conceptual roadmaps showing the business objects and their relationships and not tables and their links.

## RDBMS - key data elements

This section identifies the differences between tables and entities and focuses on entity relationships

_Tables_

- **Records or Typles**: Individual entries in a table - usually in rows also
- **Fields**: Specific data points within a record - usually in columns

In a database table, data occurrences refer to the individual rows (or records) that represent specific instances of data. Each row contains values for the columns (or fields) defined in the table schema. For example:

| student_ID  | first_name | last_name | Campus     |
|-------------|------------|-----------|------------|
| 1           | Ram-Ratan  | Sastri    | New York   |
| 2           | Bob        | Bhootani  | Los Angeles|
| 3           | Charlie    | Maestroni | Chicago    |

_Columns_ Represent the attributes or properties of the data (e.g., `ID`, `Name`, `Age`, `City`).
_Rows_ Represent individual occurrences of data (e.g., Alice, Bob, Charlie).
_Primary Key_ A unique identifier for each row (e.g., `ID` in the table above).

_ERDs_

- **Entities**: Concepts or objects represented in the database - representing the table with all its attributes
- **Attributes**: Characteristics of entities -  the individual elements of the objects in the database
- **Relationships**: Connections between entities are usually established by primary, foreign, compound and composite keys
- **Multiplicities**: The connections between entities determined by the minimum participation and the maximum participation, or cardinality, or a record

## Entity relationships and multiplicity

A key element of understanding a relational database and how entities are structured is based on relationships. It is important to understand key concepts of participation and cardinality and how relationships between databases are conceptually created and outlined.

Let's take the case of the student borrows book. Key questions to ask to establish the data relationship between the student and the book are:-

- What is the minimum number of books a student can borrow?
- What is the maximum number of books a student can borrow?

This will establish the multiplicity of the relationship in the direction of the student borrowing a book.
Minimum is 0 (participation)
Maximum is many (cardinality)

Now lets look at the reverse: The book is borrowed by a student. The questions to ask now are

- A book can have a minimum of how many students borrowing the book?
- A book can have a maximum of how many students borrowing the book?

Minimum is 0 (participation)
Maximum is many (cardinality)

Establishing relationships in all directions, finding the minimum and maximum bounds are referred to as establishing the participation and cardinality of a relationship.

_Participation_  refers to the minimum requirement of the entity to participate in a relationship.

_Cardinality_  defines the maximum number or degree to which instances interact with each other.

Multiplicities between relationships can be represented by an asterisk in ERD, where many is represented by an asterisk in ERD, and participation is the first number, while cardinality is the second number. The numbers are separated by 2 full stops.

_Simple relationships_

Binary relationships with the following multiplicities

- _One-to-Many (1..*)_ shows the stronger entity on the 1 side
- _Zero-to-Many (0..*)_ many is any number above 1
- _Many-to-Many_(* .. *)_ shows two weak entities

_Complex relationships_

- _One-to-One (1..1)_  also known as total or mandatary participation FK of the child refernces the PK of the parent
- _Zero-to-One (0..1)_  also known as optional participation on one side

## What is the difference between a data occurrence and multiplicities

A data occurrence refers to a specific instance of data in a table of database. In the table of `Students`, each row represents an occurrence of a student. It pinpoints individual data points or records. Multiplicity, on the other hand, describes the number of possible relationships between entities in a database as described above. It focuses on participation and cardinality. 

### Key Differences

| Aspect             | Occurrence                     | Multiplicity                   |
|--------------------|--------------------------------|--------------------------------|
| **Focus**          | Individual data instances      | Relationships between entities |
| **Representation** | Rows in a table                | Cardinality in relationships   |
| **Example**        | A single student record        | `1-to-many` teacher-class link |

## Types of simple relationships and their multiplicities

When designing ERDs, determining the multiplicities is crucial, as Multiplicity defines the number of instances of one entity that can or must be associated with instances of another entity. The most important part in establishing entities, their relationships and multiplicities lies in understanding the requirements of the brief. This process is open to interpretation, and therefore, in the conceptual ERD stage, these ambiguities must be cleared up to design the entities and multiplicities.

In a database design brief, the first step is to determine entities. Let's go back to the student, library and book borrowing example.

Student borrows book is considered a _binary relationship_ as it is a simple, direct relationship between the entity student and book. There are 3 tables involved and 2 relationships to establish in either direction, as we have seen.

Now let's look at a more complex scenario. Student enrols in courses offered by a particular department. The entities or tables required to describe this relationship would be

- Student
- Course
- Department

This is an example of 2 binary relationships:
Student enrols in the course
The course is offered by the department

Let's look at this brief for a database design - a student enrols in a course offered by a particular department, taught by a specific professor. This relationship now requires a Teacher entity.

- Student
- Course
- Department
- Teacher

The relationships are
Student enrols in the course
The course is offered by the department
The course is taught by a specific professor

The student, therefore, has a relationship with the teacher via the course the student enrols in. This type of relationship is called a _ternary relationship_ in ERD design as all three entities need to interact with each other - the student, the course and the teacher. The relationship between the course and the department remains a binary relationship.

Now let's look at this revised brief statement. A student enrols in a course offered by a particular department, taught by a specific professor, who can also be the course leader. We are now seeing what is known as a _recursive relationship_ in ERD design. This type of relationship represents the hierarchy of the entities in the database. The same member of staff - the professor can also be a course leader, it is important to note that not all professors are course leaders, but the fact that this entity - the Teacher table may have a hierarchical structure must be represented in the conceptual design.

_Quaternary and Nary relationships_ These are more complex relationships and should be investigated thoroughly without confusing a series of binary relationships with a complex interaction. Quaternary represents an entity involved in 4 simulataneous relationships, and any number above four is called an Nary relationship.

## Complex relationships - the concept of specialisation and generalisation

As we have seen in the previous section, the degree of relationships determines entity relationships. With further investigation into entities, some entities can act as a superset of other entities. This hierarchical structure of a relationship is not just represented in recursive relationships between the same entity.

In a more complex design, the superset entities may have attributes that are inherited by the entities in their subset. The entities in the subset, however, may have their own unique attributes. Take the example of the university database, where you may have several departments - the entity of the Department may have general attributes that relate to all departments, like the department_ID, department_name. These generalised attributes are inherited by each department that may then have its own attributes - a particular department may have laboratories with equipment, but others may have easels and art materials.

_Generalisation_ represents the general attributes that all entities inherit, and _Specialisation_  allows for unique attributes to be held by the sub-entities.

## Understanding participation and cardinality in complex relationships

Once the simple relationships have been determined from a brief, further investigation into participation and cardinality of these complex relationships is required

Let's take the example of the university database a bit further. Student enrols in courses offered by a particular department; students can be undergraduate students and postgraduate students.

In this case, we see the general entity is the student. The specialised entities are the undergraduate student and the post-graduate student. The 3 tables required would be represented hierarchically in an ERD. 

The Superclass/subclass relationship is one-to-one (1:1) - the relationship could be mandatory or optional, this is known as a _participation constraint_ of the subclass
Superclass may contain overlapping or distinct subclasses - this is known as a _disjoint constraint_ in the subclass relationship

In this example, the participation is mandatory (1:1) - a student must be either an undergraduate or a postgraduate student; the roles are distinct not interchangeable. In this either-or situation, the ERD diagram describes this as a _Mandatory-OR_ type of relationship. This is also known as a disjoint in the relationship.

            Student
            /      \
Undergraduate   Postgraduate

ERDs also have _Optional-AND_ types of relationships. Not all members of a superclass need be a member of a subclass, this is known as an optional relationship.
Let's take another example in the university. The university has staff. Staff can be admin, finance, librarians, or professors. Admin staff can also be librarians. The entities now have multiple roles; the admin staff can also be librarians or lab attendants. 

Optional in this case means that there could be other departments other than the ones described that can be added to the tables -eg, technicians, lab attendants. While the representation "AND" refers to the fact that the Admin entity can be Admin, Librarian and Lab Attendant. This is also known as an overlap in the relationship.

                    Staff
                     |
Admin Finance Librarian Professors Lab Attendants

Together, these concepts allow ERDs to model hierarchical data efficiently, conceptually representing real-world entity structures and relationships.

## The importance of business requirements in database design

As you can see, there are high levels of ambiguity in designing a database. Everything boils down to what is the client is asking - what is the business case, what exactly are the requirements. An ERD designer can only determine final designs by thoroughly investigating the requirements.

- Gather and review the business rules or requirements that govern the relationship. This should be the main way to determine the degree of relationship between entities for designers
- Look for constraints or conditions that specify how many instances of one entity relate to another, and check if the entity can be a superset/ subset representing specialisation or generalisation
- Where specialisation or generalisation are present, look for the multiplicities to determine constraints and disjoints. 
- For each relationship, review participation and cardinality
- Consider real-world examples to validate the relationship. For instance, can one order belong to many customers? The answer is no, one order belongs to one customer, so the relationship is 1:1.  The same equation does not apply to a customer making orders. A customer can browse and make a minimum of no orders but a max of many, here the relationship is 0:n, where n represents many.

_Document assumptions_

At the conceptual stage, confirm the multiplicity with stakeholders or domain experts to ensure accuracy and adjust the ERD if necessary based on feedback. This becomes important when you are mapping a conceptual ERD to a logical ERD that is provided as a roadmap to developers to build a system. The conceptual ERD may go back and forth between the designer and the client, but once the design is locked down, the mapping must follow with rigour the conceptual roadmap. Record any assumptions made during the process to provide context for future reference, as well as to ensure that the client brief has been met and proven to be met.

Determining multiplicity in an ERD is a critical step in accurately modelling real-world relationships between entities. By systematically identifying entities, analysing business rules, validating with real-world scenarios, and documenting assumptions, designers ensure that the ERD reflects both structural and functional integrity. Properly defined multiplicities not only clarify relationship constraints but also serve as a foundation for transforming conceptual designs into logical and physical database models that align with business requirements.
