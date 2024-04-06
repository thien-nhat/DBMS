# My Database Management System(ThienDB)

## Overview

This project involves the creation of a custom Database Management System (DBMS) using Java and the Spring Framework.

## Getting Started

To run the program, Docker Compose is utilized:

`docker compose up -d`

After launching the application, you can access an overview using the Swagger URL provided below.

`http://localhost:8080/swagger-ui/index.html`

## Sample SQL Commands

Here are some sample SQL statements you can use to manipulate databases in ThienDB:

### API `/api/parse-sql`

#### Create Database

To create a new database, use the following command:
**_CREATE DATABASE TenCSDL;_**

### API `/api/parse-sql/{TenCSDL}`

#### Change table structure

To create a column in the table, use the following statement:

> **_ALTER TABLE students ADD grade VARCHAR(2);_**

To delete a column in a table, use the following command:

> **_ALTER TABLE Orders DROP COLUMN OrderNumber;_**

To add a foreign key in the table, use the following statement:

> **_ALTER TABLE usersTable
> ADD CONSTRAINT fk_role_id
> FOREIGN KEY (role_id)
> REFERENCES rolesTable(id);_**

#### Create Index

To create an index for a column in a table, use the following statement:

> **_CREATE INDEX idx_lastname ON students (name);_**

#### Create Table

To create a new table, use the following command:

> **_CREATE TABLE Orders (
> OrderID int,
> OrderNumber int,
> PersonID int,
> PRIMARY KEY (OrderID),
> FOREIGN KEY (PersonID) REFERENCES students(id)
> );_**

#### Query data

To query data from a table, use the following statement:

> **_SELECT id, name, Url FROM students INNER JOIN avatars ON id = PersonID;_**

#### Insert Data

To insert data into the table, use the following statement:

> **_INSERT INTO students (id, name, age) VALUES (5, ‘Stavanger’, 60);_**

#### Updating data

To update data in the table, use the following statement:

> **_UPDATE students SET name=‘Juan’ WHERE id = 4;_**

#### Clear the table

To delete a table, use the following statement:

> **_DROP TABLE TenBang;_**

## Replace `TenCSDL` and `TenBang` with the database name and table name you want to use.
