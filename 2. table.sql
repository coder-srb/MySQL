CREATE DATABASE college;
USE college;

CREATE TABLE student(
	rollno INT PRIMARY KEY,	-- COLUMN 1 => rollno
	name VARCHAR(50)	-- COLUMN 2 => name
);
/*
	datatypes => INT, TINYINT, DOUBLE VARCHAR(), CHAR() etc...
    constraints => PRIMARY KEY, NOT NULL, UNIQUE, FOREIGN KEY, DEFAULT, CHECK etc...
*/

INSERT INTO student(rollno, name) VALUES(101,"KARAN");	-- 1st row
INSERT INTO student VALUES(102, "ARJUN");   -- 2nd row , If we follow the preset order of columns and insert data accordingly then we don't have to mention the column names.
INSERT INTO student(rollno, name) VALUES (103, "RAM"), (104, "SHYAM"), (105, "RAGHU");  -- 3rd, 4th, 5th row
INSERT INTO student(name, rollno) VALUES("HARI", 106);   -- 6th row, data must be inserted according to the sequence

SELECT * FROM student;

DROP DATABASE IF EXISTS college;