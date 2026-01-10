<!-- ---
layout: default
parent: ERDs establishing table relationships and multiplicities
nav_order: 17
title: What are 
last_updated: Jan 2026
---


# Mapping conceptual ERDs to logical ERDs

_Identify simple relationships looking at participation_

The first step is to identify all simple binary relationships and map them first.

- In binary 1:N relationships, the parent or strong entity is on the one side of the relationship. The child takes the primary key (PK) of the parent as its foreign key (FK). It retains its own PK and a PK-FK combination is used.

In a 1:1 relationship, identify the strong and weak entity. The strong entity becomes the parent and the weak entity becomes the child and the same mapping rule as above applies. The child uses the primary key of the parent as a foreign key retaining its own primary key.

_Identify complex relationships_

M:M is the first complex relationship where both entities are weak entities, therefore a third link entity is required to define relationships. A compound key taking the primary keys of both entities and using them in the linking entity creates a PK_PK combination that becomes a PK-FK-FK relationship. The primary key of the third, link entity takes the 2 primary keys of the entities in the many-to-many relationship and they become foreign keys.

_Specialisation, Generalisation disjoints and overlaps_

With specialisation and generalisation, the relationship of mandatory_OR, optional_OR deterimines the disjoint in the relationship and must be flagged, while overlaps, mandatory_AND/ optional_AND should be flagged. -->

