CREATE DATABASE temp1;  -- creating a database "temp1"
DROP DATABASE temp1;	-- deleting the database
DROP DATABASE temp1;	-- ERROR
DROP DATABASE IF EXISTS temp1;	-- NO ERROR, JUST A WARNING

CREATE DATABASE temp2;
CREATE DATABASE temp2;  -- ERROR bcz "temp2" database already exists
CREATE DATABASE IF NOT EXISTS temp2;  -- NO ERROR, just a warning bcz we have written a condition
DROP DATABASE IF EXISTS temp2;	

/* So to avoid error we should use conditions like;
(IF EXISTS || IF NOT EXISTS) while deleting or creating a database*/

CREATE DATABASE college;
USE college;  -- it means, now we are using "college" database

CREATE TABLE student(	-- creating a table inside "college" database
	id INT PRIMARY KEY,	-- primary key(id) should always be unique & not-null.
	name VARCHAR(30),	-- 30 is the max size of the string value
	age INT NOT NULL	-- (not null) means this column can't have null value.
	-- id, name, age are the columns or records in a table
);
/*
Primary Key => It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)
There is only 1 PK & it should be NOT null.
*/

DESC student;	-- Shows the bluePrint of the table
DESCRIBE student;

SHOW TABLES;  -- it will show all the tables present in the current database.
SHOW DATABASES;	-- it will show all the databases present in the system.

-- inserting datas into culumns, data should be passed according to the sequence of the columns
INSERT INTO student(id, name, age) VALUES(1,"AMAN", 26);
INSERT INTO student VALUES(1,"SHRADHA", 24); -- ERROR bcz duplicate entry of a primary key, primary key should always be unique for a record in the table
INSERT INTO student VALUES(2, "SHRADHA");	-- Error bcz column with (NOT NULL) constraint can't be null.
SELECT * FROM student;	-- it shows all the columns & data of the table.

DROP TABLE IF EXISTS student;	-- "student" table is deleted.
DROP DATABASE IF EXISTS college;