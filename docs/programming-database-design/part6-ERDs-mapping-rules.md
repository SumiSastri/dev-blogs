---
layout: default
parent: ERDs establishing table relationships and multiplicities
nav_order: 17
title: What are 
last_updated: Jan 2026
---


<!-- # Mapping conceptual ERDs to logical ERDs

_Identify binary relationships looking at participation_

- In a binary _1:N relationship_ the parent or strong entity is on the one side of the relationship. The child takes the primary key (PK) of the parent as its foreign key (FK). It retains its own PK and a PK-FK combination is used.

- If an entity has instances of multiple 1:N relationships the entity takes an associative entity where no third link entity is required but the PKs of the entities on the 1 side always become the foreign keyes of the child entity. So a child with 2 parent entities would have a composite key PK-FK/ PK-FK where these composite keys link 2 different instances of the entity and its relationships with other entities.

Eg: Office has branches/ branches have departments. branch_ID, the PK of the child would take office_ID of the parent as its FK. The PK-FK combination would be branch_ID-office_ID in this instance. The same would apply if the branch was the child of department, department_ID would become the FK in the branch entity and the PK-FK combination would be branch_ID-Department_ID as the composite PK-FK key in the instance of the object interacting with the Department.

- In a binary _M:M_ relationships, both entities are weak entities, therefore a third link entity is required to define relationships. A compound key taking the primary keys of both entities and using them in the linking entity to create a PK-FK-FK relationship. The primary key of the third link entity takes the 2 primary keys of the entities in the many-to-many relationship and they become foreign keys in the third entity in a composite key PK-FK-FK.

_Specialisation, Generalisation disjoints and overlaps_

With specialisation and generalisation, the relationship of mandatory_OR, optional_OR deterimines the disjoint in the relationship and must be flagged, while overlaps, mandatory_AND/ optional_AND should be flagged.

These will be 1:1 relationships on the participation side therefore cardinality is reviewed to determine the constraints to the model

_Optional both sides_

_Optional-Or_

_Optional-AND_

_Mandatory-Or_

_Mandatory-AND_ -->
