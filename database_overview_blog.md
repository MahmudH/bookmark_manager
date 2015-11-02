SQL is used for querying and maintaining relational databases - managing, storing and retrieving data.
A relational model organizes data into one or more tables of predefined columns and rows with a unique key identifying each row.
Relational databases contain structured data like names, email addresses and phone numbers.

NoSQL on the other hand contains unstructured data without the need of storing data into tables. Rather they are document based, key-value pairs, graph databases or wide-column stores.

SQL pros
* is good for query intensive environments.
* increase CPU, RAM, SSD etc, on a single server for scalability.

NoSQL
* is preferred for environments which contain large amounts data.  
* better for hierarchal data storage.

UNDERSTANDING DATABASES
Database Persistence

In the context of storing data, persistence refers to the data surviving even after the process that created it has ended. Specifically, this data needs to be written on non-volatile storage for long term use.

Session Persistence vs. File-System Persistence

Session

By and large, data created during a session (either during a web-session or a OS session) does not persist after the session has ended.

File System

Generally, file systems are persistent as the OS commits file changes to the hard-drive (non-volatile) storage.


### Relational Databases vs. NoSQL Databases

Relational Database Management Systems (RDBMS)

Data is stored in the form of rows and columns in RDBMS. The relations among tables are stored in the language of Structured Query Language (SQL). SQL is a programming language used to perform tasks such as update data on a database, or to retrieve data from a database. Examples  of relational database management systems that use SQL include: Oracle, Sybase, Microsoft SQL Server and Access.

*Features:*

SQL databases are table based databases
Data is stored in rows and columns
Each row contains a unique instance of data for the categories defined by the columns
Provide facility primary keys, to uniquely identify the rows
NoSQL Databases

NoSQL is commonly referred to as “Not Only SQL”. With NoSQL, unstructured data can be stored in multiple collections and nodes and does not require fixed table schemes. Data is also scaled horizontally.

*Benefits:*

Highly and easily scalable
Maintaining NoSQL servers is less expensive
Lesser server cost and open-source
