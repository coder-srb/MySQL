-- Join -- is used to combine rows from two or more tables, based on a related column between them.

CREATE DATABASE college;
USE college;

CREATE TABLE student(
	id INT PRIMARY KEY,
    name VARCHAR(50)
);
INSERT INTO student VALUES
 (101, "adam"),
 (102, "bob"),
 (103, "casey");
 
 CREATE TABLE course(
	id INT PRIMARY KEY,
    course VARCHAR(50)
 );
 INSERT INTO course(id, course) VALUES
	(102, "english"),
    (105, "math"),
    (103, "science"),
    (107, "computer science");
    
    
SELECT * FROM student;
SELECT * FROM course;
    
  
  
  
-- INNER JOIN -- Returns records that have matching values in both tables
/* 
	Syntax
SELECT column(s)
FROM tableA
INNER JOIN tableB
ON tableA.col_name = tableB.col_name;
*/

SELECT * 
FROM student
INNER JOIN course 
ON student.id = course.id; 

-- using Alias -- duplicate names
SELECT * 
FROM student AS s
INNER JOIN course AS c
ON s.id = c.id;     




-- LEFT JOIN -- Returns all records from the left table, and the matched records from the right table
/*
	Syntax
SELECT column(s)
FROM tableA
LEFT JOIN tableB
ON tableA.col_name = tableB.col_name;
*/

SELECT *
FROM student AS a
LEFT JOIN course AS b
ON a.id = b.id;




-- RIGHT JOIN -- Returns all records from the right table, and the matched records from the left table
/*
	Syntax
SELECT column(s)
FROM tableA
RIGHT JOIN tableB
ON tableA.col_name = tableB.col_name;
*/

SELECT * 
FROM student AS s
RIGHT JOIN course AS c
ON s.id = c.id;




-- FULL JOIN -- Returns all records when there is a match in either left or right table
-- as there is no keyword for full join, we use LEFT JOIN UNION RIGHT JOIN
/* 
	Syntax
SELECT column(s)
FROM tableA
LEFT JOIN tableB
ON tableA.col_name = tableB.col_name
UNION
SELECT column(s)
FROM tableA
RIGHT JOIN tableB
ON tableA.col_name = tableB.col_name;
*/

SELECT * FROM student AS a LEFT JOIN course AS b ON a.id = b.id
UNION
SELECT * FROM student AS a RIGHT JOIN course AS b ON a.id = b.id;




-- exclusive JOINS -- left exclusive and right exclusive

-- left exlusive join
SELECT * 
FROM student AS a 
LEFT JOIN course AS b 
ON a.id = b.id
WHERE b.id IS NULL;	

-- right exlusive join
SELECT * 
FROM student AS a 
RIGHT JOIN course AS b 
ON a.id = b.id
WHERE a.id IS NULL;

-- left exlusive join UNION right exlusive join
SELECT * 
FROM student AS a 
LEFT JOIN course AS b 
ON a.id = b.id
WHERE b.id IS NULL
UNION
SELECT * 
FROM student AS a 
RIGHT JOIN course AS b 
ON a.id = b.id
WHERE a.id IS NULL;




-- SELF JOIN -- -- left exlusive join
/*
	Syntax
SELECT column(s)
FROM table as a
JOIN table as b
ON a.col_name = b.col_name;
*/

CREATE TABLE employee(
	id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);
INSERT INTO employee VALUES
	(101, "adam", 103),
	(102, "bob", 104),
	(103, "casey", NULL),
    (104, "donald", 103);

SELECT a.name as manager, b.name 
FROM employee AS a
JOIN employee AS b
ON a.id = b.manager_id;



-- UNION or UNION ALL -- It is used to combine the result-set of two or more SELECT statements.
/*
	To use UNION:
		every SELECT should have same no. of columns.
		columns must have similar data types.
		columns in every SELECT should be in same order.

		Syntax
	SELECT column(s) FROM tableA
	UNION
	SELECT column(s) FROM tableB
*/

SELECT name FROM employee
UNION
SELECT name FROM employee;  -- gives unique value

SELECT name FROM employee
UNION ALL
SELECT name FROM employee;  -- gives all value



