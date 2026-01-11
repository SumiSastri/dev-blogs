---
layout: default
parent: How to apply ERD mapping rules to create RDBMS data tables
nav_order: 17
title: What are 
last_updated: Jan 2026
---


# How to apply ERD mapping rules to create RDBMS data tables

This is when the conceptual ERD is mapped to the required tables in a physical database.

- The first step is to identify binary relationships looking at participation. In a binary relationship the parent, or strong entity, can be identified as it is on the one side of the relationship
- Once all these relationships have been mapped look for any binary many-to-many relationships
- The third step is to identify specialisation-generalisation relationships and create the appropriate tables
- The final step is look for complex ternary, quaternary and nary relationships

- This will result in many of the conceptual relationships in the ERDs being removed
• One-to-many relationships will have 2 tables with the primary key (PK) of the parent referenced as the foreign key in the child (FK), the child entity retains its own PK - result PK-FK
• Many-to-many relationships: replaced by 3 tables - a link table to link the 2 weak entities, the 2 PKs of the weak entities are merged becoming FKs in the link entity and the PK of the link table becomes a compound key - result PK-FK-FK
• Specialisations: replaced with one or several tables (1:1 vs 1:0, 0:0) - 1:1 relationships with 1 table where all attributes are merged, or 2 tables with the PK of the parent referenced and flagged in as the FK in the child. Result PK-FK in all cases with flags
• Ternary relationships: replaced by 4 tables and 3 one-to-many relationships

Following the guidelines below, by the end of the mapping, logical ERD only contains
• One-to-many relationships with correct FKs, there will be no many-to-many relationships or ternary relationship
• One-to-one relationships optional on one side with correct FKs
• One-to-one relationships optional on both sides with correct FKs

## Binary relationships_

_1:N relationship_
_Tables: Create 2 tables parent & child. Create a FK in child to reference PK in parent_

- The child takes the primary key (PK) of the parent as its foreign key (FK). It retains its own PK and a PK-FK combination is used.

- If an entity has instances of multiple 1:N relationships the entity takes an associative entity where no third link entity is required but the PKs of the entities on the 1 side always become the foreign keyes of the child entity. So a child with 2 parent entities would have a composite key PK-FK/ PK-FK where these composite keys link 2 different instances of the entity and its relationships with other entities.

Eg: Office has branches/ branches have departments. branch_ID, the PK of the child would take office_ID of the parent as its FK. The PK-FK combination would be branch_ID-office_ID in this instance. The same would apply if the branch was the child of department, department_ID would become the FK in the branch entity and the PK-FK combination would be branch_ID-Department_ID as the composite PK-FK key in the instance of the object interacting with the Department.

_M:M_ relationships, both entities are weak entities, therefore a third link entity is required to define relationships. 
_Tables: Create 3 tables. Link table is a child of the other 2 tables and carries FKs and link table has a PK that is compound or composite_

A compound key taking the primary keys of both entities and using them in the linking entity to create a PK-FK-FK relationship. The primary key of the third link entity takes the 2 primary keys of the entities in the many-to-many relationship and they become foreign keys in the third entity in a composite key PK-FK-FK.

## Specialisation, Generalisation disjoints and overlaps_

With specialisation and generalisation, the relationship of mandatory_OR, optional_OR deterimines the disjoint in the relationship and must be flagged, while overlaps, mandatory_AND/ optional_AND should be flagged. The relationship is always 1:1 parent-to-child with the child inheriting all attributes of the parent. When there is a disjoint constraint like a Mandatory_OR/ Optional_OR then the relationship is 1:0 parent to child, with 0 showing the optional disjoint of the child. Optional on both sides is 0:0. Here we look at cardinality to establish the multiplicities during mapping from conceptual ERDs to logical ERDs and for table creation

_1:1 - Mandatory/AND_ total participation
_Tables:  Only 1 table with all attributes is required. Choose PK, other one is AK or FK_

- Specialised entities merged become child table -
- FK of child references PK of parent table
- (The parent’s PK is also the FK in the child)
- PK of the child table is the same as the PK of parent table
- Flags reference the 2 child entities
- Result parent-child {PK-FK (Flag1-Flag2 of child entities)}

_1:0 - Mandatory/OR - Cardinality_ One-to-one relationship optional on one side.
_Tables: Create 2 tables parent & child. Create a FK in child to reference PK in parent_

- Result parent-child {PK-FK (Flag1-Flag2 of child entities)}

_0:0 - Optional on both sides - Cardinality_  One-to-one relationship optional on both sides.
_Tables:Create 2 tables parent & child. Create a FK in child to reference PK in parent_

## Complex Relationships

Ternary relationships
_Tables: Create 4 tables. Link table is a child of the other 3 tables and carries FKs and link table has a PK that is compound or composite_
