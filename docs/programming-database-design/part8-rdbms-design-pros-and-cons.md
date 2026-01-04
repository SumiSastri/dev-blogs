# What are the advantages of relational databases and what are the cons?

If the objective of a database is KDD (knowledge discovery in databases), data in databases, over and above meeting client requirements, must be:

- accurate, consistent and eliminating redundancy
- available but not open to data threats
- accessible but not hackable
- flexible and easy to scale up or down depending on user needs
- easy to back-up or restore proving durability
- easy to process
- tested for compliance to industry standards
- easy to maintain and therefore well documented

Relational databases are designed to store data in tables which have unique keys that link them to each other, creating useful relationships between data-sets.

The advantages are:

1. Structured data management
2. Data accuracy and integrity
3. Passes the ACID test - atomicity, consitency, isolation, durability
4. Secure by design
5. Easy to query
6. Scales well
7. Data can be backed up and recovered
8. Data is easy to normalise

However, it is not a silver bullet and the only option for data-design.

The disadvantages are apparent when big-data increases in variety and velocity. RDBMS do not handle variety or unstructured data inputs well due to the fixed schema structure. Upto a point they scale well on a vertical axis, but horizontal scaling (adding more servers) is more complex and difficult to maintain.

Based on simple query language (SQL), by nature, complex queries are difficult and slow to perform. Complex queries are possible, but require complex joins between multiple tables leading to performance bottle necks and slower knowledge discovery which can be an irritant to end-users who are not data-engineers.

Hardware licencing of the software from service providers Microsoft, Oracle, IBM, Amazon and SAP can be expensive, PostgreSQL is an open source project but has its own limitations.

Further reading:

1. (Geek for Geeks)[https://www.geeksforgeeks.org/dbms/rdbms-benefits-and-limitations/]

2. (Database service providers)[https://db-engines.com/en/ranking]

3. (2025 best service providers)[https://thectoclub.com/services/best-database-as-a-service-providers/]

4. (Top 10 dbs 2025)[https://www.kingswaysoft.com/resources/industry-analysis/top-database-management-systems?srsltid=AfmBOopjBhmiIRMSJqicl3JP7kmMsf_8gvdGMuLFx0GAFUIjX3KpuI9R]