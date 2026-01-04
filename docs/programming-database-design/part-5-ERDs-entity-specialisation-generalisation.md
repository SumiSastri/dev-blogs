---
layout: default
parent: Database design
nav_order: 17
title: Further investiation into entity specialisation and generalisation in conceptual ERDs
last_updated: Jan 2026
---

# Further investiation into entity specialisation and generalisation in conceptual ERDs

As we have seen in the previous section, the degree of relationships determine entity relationships. With further investigation into entities, some entities can act as a superset to other entities. This hierarchical structure of a relationship is not just represented in recursive relationships between the the same entity.

In a more complex design, the superset entities may have attributes that are inherited by the entities in their subset. The entities in the subset, however may have their own unique attributes. Take the example of staff, where a manager can be a member of staff managing other members of staff. `Staff` as an entity will be the superset, while the different type of staff - sales, technicians, financial staff representing the subset will have unique attributes. The sales staff may be eligible for a bonus, while the technicians and other staff may not. Similarly the technician may be required to work overtime, while the finanacial staff may be required to make audit reports. These are specialised tasks within the superset-subset relationship.

 The terms Specialisation and Generalisation** are key mechanisms, borrowed from UML design to represent this.

**Generalisation** groups multiple lower-level entities into a higher-level entity based on common properties and is a *bottom-up* design process. The subset to superset multiplicity is always 1:1, the key concept is to move common attributes of the subset entities to a more **general (superclass)** entity. The subclass inherits all these common attributes while retaining the ability to have its own specialised attributes.

**Specialisation** allows for unique attributes to be held by the  **subclasses (sub-entities)** whilst inheriting the attributes of the superclass, which is why it is considered a *top-down* design process. The process is called inheritance as all the attributes of the superclass are automatically applied to the subclass.

## Mandatory and optional participation and the concept of disjoints vs overlapping

Once supersets and subsets have been identified, the multiplicities of parent to child will require a re-definition. The concept of mandatory or optional participation interrogates participation once more very differently from a binary relationship.

Take the example of cars and car specifications. All cars may have some shared characteristics that can be inherited - serial number, brand name, horsepower,type of car but the individual makes and models may have specialised characteristics. These could include model number, wheel size, type of interiors, etc. Each subset can have relationships outside the superset and subset

For example a customer may buy a specific model of a car from a dealer in a specific branch. The entities here would be the customer, the car and its subset of model, the dealer.

To model this, the customer buys a car from the dealer. This is one binary relationship. The dealership has various branches. This is one superset and subset relationship. Each branch has cars with different makes and models. Here is another superset-subset relationship where cars is a superset and makes and models subsets. Each of the subsets inherits the relationships of the superset.

Therefore, the relationship the customer has with the superset of dealership automatically is inheritied by the subset of branches of the dealership.

In a real world situation, not every branch of the dealer has the same cars, makes and models. Therefore we can see where concepts of mandatory and optional participation could occur in the Car entity.

Let us look at this more carefully.

**Mandatory vs optional participation**

| Type | Meaning | Example |
|------|--------|--------|
| **Mandatory** | Every super-entity **must** be in a subclass | Every dealership must have cars |
| **Partial** | Some super-entities **may not** belong to subclasses | Some dealerships may sell cars and trucks |

**Disjoint or overlapping participation**

| Type | Meaning | Example |
|------|--------|--------|
| **Disjoint (OR)** | Entity belongs to **only one** subclass | A vehicle can be a **Car OR Truck** |
| **Overlapping (AND)** | Entity can belong to **multiple** subclasses | An employee can be **Manager AND Engineer** |

This is represented by curly braces as a `{Mandatory-Or/And}` and `{Optional-Or-And}`

Together, these concepts allow ERDs to model hierarchical data efficiently, clearly representing real-world entity structures and relationships. The conceptual ERD now is ready for the multiplicites to be determined as the last step before the conceptual is mapped to the logical model and the data-base build phase.

### Conclusion

Understanding and correctly applying specialisation and generalisation in conceptual ERDs ensures that hierarchical and inherited relationships between entities are accurately represented. By defining mandatory or optional participation and distinguishing between disjoint and overlapping subclasses, designers can model real-world complexities with precision. These concepts form the foundation for creating logical models that preserve both the structure and behaviour of entities, supporting data integrity and clarity as the design progresses toward implementation. This enhancement of the basic ERD design borrowed from UML is also called EERD, or Enahanced ERD.
