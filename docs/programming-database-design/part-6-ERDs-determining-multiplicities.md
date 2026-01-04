---
layout: default
parent: Database design
nav_order: 17
title: Steps to determine multiplicity of entities in an ERD
last_updated: Jan 2026
---

# Steps to determine multiplicity of entities in an ERD

When designing an Entity-Relationship Diagram (ERD), determining the multiplicity (cardinality) of relationships between entities is crucial. Multiplicity defines the number of instances of one entity that can or must be associated with instances of another entity. Follow these steps to determine multiplicity:

## 1. Understand entities and determine degree of relationship between them

- Identify the entities involved in the relationship
- Clearly define the purpose of the relationship between the entities
- **Binary:** simple direct relationships - there can be a series of binary relationships without any other type of interaction. However in a complex design more than one type of relationship can be expected
- **Recursive:** often key relationships that show hierarchy will exist in a model and will need to represent this self-referential (eg: a member of staff is both a manager and a member of staff)
- **Ternary, Quaternary and Nary:** These complex relationships should be investigateed thorougly without confusing a series of binary relationships to be a complex interaction. Determine by the requirements exactly how many entities are involved in a relationship avoiding over simplicity of several binary relationships as much as avoiding complexity for the sake of representing interactions between multiple entities.

## 2. Analyze the business rules in the requirements documents

- Gather and review the business rules or requirements that govern the relationship this should be the main way to determine the degree of relationship between entities
- Look for constraints or conditions that specify how many instances of one entity relate to another, check if the entity can be a superset/ subset representing specialisation or generalisation
- Where specialisation or generalisation are present look for the multiplicities to determine constraints and disjoints. The child to parent relationship in specialisations is always 1:1 while the parent to child multiplicities need further investigation

## 3. Ask key questions, using real life scenarios

- For each relationship, review participation and cardinality
- Consider real-world examples to validate the relationship. For instance can one order belong to many customers? The answer is no, one order belongs to one customer so the relationship is 1:1.  The same equation does not apply to a customer making orders. A customer can browse and make a minimum of no orders but a max of many, here the relationship is 0:n, where n represents many.

To represent this use the UML standards with the number followed by 2 periods, not a colon as represented in a ratio to proportion notation. The variations are:
    - `0..*` zero to many
    - `1..1` exactly to to one
    - `1..*` exactly one to many

When you compare participation look at the first number it is either 1:1 or 0:1 where 0:1 shows the relationship is optional on one side
When you look at cardinality look at the second number it is either 1:n or n:n

## 4. Document assumptions

At the conceptual stage, confirm the multiplicity with stakeholders or domain experts to ensure accuracy and adjust the ERD if necessary based on feedback.This becomes important when you are mapping a conceptual ERD to a logical ERD that is provided as a roadmap to developers to build a system. The conceptual ERD may go back and forth between designer and the client but once the design is locked down, the mapping must follow with rigour the conceptual roadmap.Record any assumptions made during the process to provide context for future reference as well as to ensure that the client brief has been met and proven to be met.

### Conclusion

Determining multiplicity in an ERD is a critical step in accurately modeling real-world relationships between entities. By systematically identifying entities, analyzing business rules, validating with real-world scenarios, and documenting assumptions, designers ensure that the ERD reflects both structural and functional integrity. Properly defined multiplicities not only clarify relationship constraints but also serve as a foundation for transforming conceptual designs into logical and physical database models that align with business requirements.
