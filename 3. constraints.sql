CREATE DATABASE constraints;
USE constraints;


-- UNIQUE -- 
/* all values in column are different */
CREATE TABLE temp1(
	id INT UNIQUE
);
INSERT INTO TEMP1 VALUES(1001);
INSERT INTO temp1 VALUES(1001);		-- ERROR, bcz entered a duplicate value for a UNIQUE Constraint



-- PRIMARY KEY --
/*
Primary Key => It is a column (or set of columns) in a table that uniquely identifies each row. (a unique id)
There is only 1 PK & it should be NOT null.
*/
CREATE TABLE temp2(
	-- id INT PRIMARY KEY, -- We can set primary key in the beggining or we can also do this in the end
	id INT,
	name VARCHAR(50),
	age INT,
	city VARCHAR(20),
	PRIMARY KEY (id)	-- another way of setting primary key
);
DESC temp2;
DROP TABLE temp2;

CREATE TABLE temp2(
	id INT,
	name VARCHAR(50),
	age INT,
	city VARCHAR(20),
	PRIMARY KEY (id, name)	-- PRIMARY KEY can also be a combination of columns also.
	-- it means both the individual columns can have duplicate values, but the combination of those 2 columns will always privide unique data.
);
DESCRIBE temp2;
DROP TABLE temp2;



-- DEFAULT -- 
/* sets the default value of a column */
CREATE TABLE emp(
	id INT,
	salary INT DEFAULT 25000,
	PRIMARY KEY(id)
);
INSERT INTO emp VALUES(101, 12000);
INSERT INTO emp(id) VALUES(102);
SELECT * FROM emp;
DROP TABLE emp;



-- FOREIGN KEY --
/* 
	prevent actions that would destroy links between tables
	A foreign key is a column (or set of columns) in a table that refers to the primary key in another table.
	There can be multiple FKs. FKs can have duplicate & null values.
*/
CREATE TABLE customer(
	id INT,
   	name VARCHAR(50),
   	PRIMARY KEY(id)
);
CREATE TABLE temp(
	cust_id INT,
    	FOREIGN KEY (cust_id) references customer(id)
);
DROP TABLE customer;
drop table temp;



-- CHECK -- 
/* it can limit the values allowed in a column */
CREATE TABLE newTab(
	id INT PRIMARY KEY CHECK (ID>100),
    age INT,
    city VARCHAR(50),
    CONSTRAINT CHECK (age >=18 AND city = "DELHI")
);
INSERT INTO newTab VALUES (100, 18, "DELHI");  -- ERROR, check constraint is violated
INSERT INTO newTab VALUES (105, 20, "DELHI");
INSERT INTO newTab VALUES (102, 22, "CUTTACK");  -- ERROR, check constraint is violated
DROP TABLE IF EXISTS newTab;



