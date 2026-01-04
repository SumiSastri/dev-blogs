---
layout: default
parent: Database design
nav_order: 17
title: Relational databases - structure and design
last_updated: Jan 2026
---

# Relational databases - structure and design

Relational databases (RDBMS) follow a structured approach where individual entries or records are stored in tables organized into rows and columns. Each record has a unique identifier called a **primary key**, and the fields in a row represent specific data items associated with that record.

For example, the row `ID: 123, Ram Ratan Sastri, 57, Cranfield Gardens, London, W12` represents a record with `ID: 123` as the primary key.

Each column corresponds to a field, such as `Name` or `Address`. Entities like `User` or `Address` are described by their attributes, such as `First Name`, `Street`, or `Postcode`.

The relationship between entities could be described in the database structure as - the User has an address.
The multiplicity of the relationship can be established by asking key questions

- Can one user have many addresses (yes - home address, office address, permanent address, forwarding address), the multiplicity of this relationship therefore is 1 user can have many or n number of addresses.

- Can one address have many users (yes - a flat/ home may have many occupants or an office block can have several employees using the address, therefore 1 flat can 0 occupants (empty) or have n number of users as well)

Entities can be considered strong or weak depending again on how they are viewed.

- Can an address exist without a user (yes - strong entity)
- Can a user exist without an address (debatable, but probably no, therefore weak entity)

You can have two strong entities and two weak entities where one entity is stronger than the other, often determining strong and weak entities depends on user requirements and logical deductions and conclusions.

## Key elements of RDBMS

- **Tables**: Collections of records organized in rows and columns
- **Records**: Individual entries in a table
- **Primary keys**: Unique identifiers for records
- **Fields**: Specific data points within a record
- **Entities**: Concepts or objects represented in the database
- **Attributes**: Characteristics of entities
- **Relationships**: Connections between entities usually established by foreign keys
- **Multiplicities**: The connections between entities determined by the minimum participation and the maximum participation, or cardinality, or a record

## Data Occurrences in a Table

In a database table, data occurrences refer to the individual rows (or records) that represent specific instances of data. Each row contains values for the columns (or fields) defined in the table schema. For example:

| ID  | Name       | Age | City       |
|-----|------------|-----|------------|
| 1   | Alice      | 25  | New York   |
| 2   | Bob        | 30  | Los Angeles|
| 3   | Charlie    | 22  | Chicago    |

### Key Concepts

- **Columns**: Represent the attributes or properties of the data (e.g., `ID`, `Name`, `Age`, `City`).
- **Rows**: Represent individual occurrences of data (e.g., Alice, Bob, Charlie).
- **Primary Key**: A unique identifier for each row (e.g., `ID` in the table above).

## Understanding relationships and multiplicity in RDBMS

Entities in a database are connected through relationships, which can be described as:

- **One-to-One (1..1)**: Each instance of Entity A is related to at most one instance of Entity B, and vice versa.  Example: A person can have only one passport, and each passport belongs to only one person. This is also referred to as mandatory participation - as both the minimum and maximum instances that the data is required 1:1 on both sides. In the next section we will see how participation can be optional.

- **One-to-Many (1..*)**: Each instance of Entity A can be related to multiple instances of Entity B, but each instance of Entity B is related to at most one instance of Entity A.  Example: A department can have many employees, but each employee belongs to only one department.

- **Many-to-Many (*..*)**: Each instance of Entity A can be related to multiple instances of Entity B, and vice versa.  Example: Students can enroll in multiple courses, and each course can have multiple students.

## Understanding participation and cardinality in multiplicity

When designing a database, two important concepts in the Entity-Relationship Diagram (ERD) are **participation** and **cardinality**. These concepts help define the relationships between entities and ensure the database structure accurately represents the real-world scenario.

### Participation

**Participation** refers to whether all instances of an entity are required to participate in a relationship. It is the minimum number of instances to participate in the relationship, participation can be zero, one or many.

- **Total or mandatory participation**: Every instance of the entity must participate in the relationship.  
  Example: If every employee in a company must belong to at least one department, the `Employee` entity has total participation in the `works in` relationship.

- **Partial or optional participation**: Some instances of the entity may not participate in the relationship.   Example: Not all customers of a bank may have a loan. In this case, the `Customer` entity has partial participation in the `has loan` relationship. Customers:Loans can be represented as 0:n showing this partial participation of an entity on one side of the relationship.

Where there is no participation possible on both sides for example a teacher may require a computer but not all teachers require computers. The relationship of the teacher:computer is 0:n, equally not every computer is allocated to a teacher computer to teacher could be 0:n. Here the paricitipation is partial on both sides. If the requirement is every teacher has a computer that would become 1:1 and mandatory participation.

### Cardinality

**Cardinality** defines the maximum number of instances of one entity that can or must be associated with instances of another entity. It specifies the "degree" of the relationship. Cardinality is the opposite side of the spectrum to participation in a relationship. It refers to the maximum number of instances of the data required in the relationship.Any requirement above 1 instance of the record is classified as n number or many, represented by the asterisk in ERDs.

To summarize participation and cardinality depend on how the database requirements are outlined and met. Therefore the requirements of the database and the use of its instances determine participation and cardinality of entities in a relationship. Cardinality is important when establishing the mapping rules from a conceptual ERD to a logical ERD and ensuring the right keys are chosen for database tables that are to be built.

## Occurrence vs. Multiplicity in Databases

### Occurrence

- **Definition**: Refers to a specific instance of data in a database.
- **Example**: In a table of `Students`, each row represents an occurrence of a student.
- **Context**: Focuses on individual data points or records.

### Multiplicity

- **Definition**: Describes the number of possible relationships between entities in a database.
- **Example**: In an ER diagram, a `1-to-many` relationship between `Teachers` and `Classes` indicates multiplicity.
- **Context**: Focuses on the cardinality of relationships (e.g., `1:1`, `1:N`, `N:M`).

### Key Differences

| Aspect          | Occurrence                     | Multiplicity                  |
|------------------|--------------------------------|--------------------------------|
| **Focus**        | Individual data instances     | Relationships between entities|
| **Representation** | Rows in a table              | Cardinality in relationships  |
| **Example**      | A single student record       | `1-to-many` teacher-class link|


## Preventing redundancy in RDBMS design

Data redundancy refers to the duplication of data within a database. While redundancy can sometimes improve availability, unintentional redundancy due to poor design can lead to inefficiencies.

**Causes of data redundancy**

- Poor database design.
- Lack of normalization.
- Manual data entry errors.
- Data replication for fault tolerance.

**Problems with data redundancy**

- **Increased storage costs**: Duplicate data consumes more space.
- **Data inconsistency**: Conflicting versions of data can arise.
- **Maintenance overheads**: Managing redundant data requires extra effort.

**Benefits of controlled redundancy**

- **Improved Data Availability**: Ensures data is accessible during failures.
- **Faster Data Access**: Reduces access time in distributed systems.

## How RDBMS reduces redundancy

1. **Normalization**:
    - The process of organizing data into tables and defining relationships between them to minimize duplication and redundancy.
    - Ensures that each piece of data is stored only once, reducing storage requirements and improving data consistency.

2. **Primary keys**:
    - Unique identifiers for records in a table.
    - Prevents duplicate entries and ensures that each record can be uniquely identified.

3. **DBMS tools**:
    - Built-in mechanisms in relational database management systems (RDBMS) to enforce data integrity and consistency.
    - Includes constraints like unique constraints, foreign keys, and checks to avoid redundant data.

4. **Regular audits**:
    - Periodic reviews of the database to identify and remove unnecessary duplicates.
    - Helps maintain data quality and ensures that redundancy is minimized over time.

## What is data normalisation

Data normalization is the process of organizing data to reduce redundancy and improve integrity. It involves structuring data into tables and ensuring logical dependencies.

**Goals of data normalization**

1. Minimize data redundancy.
2. Ensure data consistency.
3. Simplify database maintenance.

**What are normal data forms**

1. **First Normal Form (1NF)**:  
    - Ensure all columns contain atomic values.  
    - Remove duplicate rows.

2. **Second Normal Form (2NF)**:  
    - Achieve ojectives of the first normal form
    - Ensure all non-key attributes depend fully on the primary key.

3. **Third Normal Form (3NF)**:  
    - Achieve objectives of the second normal form
    - Remove transitive dependencies.

4. **Boyce-Codd Normal Form (BCNF)**:  
    - A stricter version of the third normal form where every determinant is a candidate key.

**Steps to normalize data**

1. Identify the data and its relationships
2. Define primary keys for unique identification
3. Eliminate redundancy by breaking down tables
4. Establish relationships using foreign keys
5. Validate against the desired normal form

## Relationships Between Data Design and Data Systems

Data design and data systems are closely interconnected. Effective data design ensures that data systems are efficient, scalable, and maintainable. Below are the key aspects of their relationship:

### 1. Data Normalization

- **Design Aspect**: Organizing data to reduce redundancy and improve integrity.
- **System Impact**: Normalized tables reduce storage requirements and improve query performance.
- **Example**: Splitting a table into two related tables to avoid duplicate data.

### 2. Relationships Between Tables

- **Design Aspect**: Defining how tables relate to each other (e.g., one-to-one, one-to-many, many-to-many).
- **System Impact**: Relationships are implemented using foreign keys, ensuring data consistency.
- **Example**: A `Customers` table and an `Orders` table linked by a `CustomerID`.

### 3. Indexing

- **Design Aspect**: Creating indexes on frequently queried columns.
- **System Impact**: Improves query performance but may increase storage and write operation costs.
- **Example**: Indexing the `Name` column in a table for faster search.

### 4. Scalability

- **Design Aspect**: Designing for future growth (e.g., partitioning, sharding).
- **System Impact**: Ensures the system can handle large volumes of data and users.
- **Example**: Partitioning a table by date for efficient querying.

### 5. Data Integrity

- **Design Aspect**: Enforcing rules to ensure data accuracy and consistency (e.g., constraints, validations).
- **System Impact**: Prevents invalid data from being entered into the system.
- **Example**: A `NOT NULL` constraint on a required column.

### 6. Data Access Patterns

- **Design Aspect**: Understanding how data will be accessed and designing accordingly.
- **System Impact**: Optimizes the system for read-heavy or write-heavy workloads.
- **Example**: Using a denormalized schema for read-heavy analytics systems.

---

## Conclusion

Relational databases provide a robust framework for organizing and managing data efficiently. By leveraging key concepts like normalization, primary keys, and relationships, RDBMS minimizes redundancy, ensures data consistency, and simplifies maintenance. While controlled redundancy can enhance availability in specific scenarios, unintentional redundancy should be avoided to maintain the integrity and efficiency of the database. A well-designed RDBMS is essential for building reliable, scalable, and maintainable data-driven applications.

The design of data structures and relationships directly impacts the performance, scalability, and reliability of data systems. A well-thought-out data design ensures that the data system can meet current and future requirements efficiently.
