CREATE DATABASE college;
USE college;

CREATE TABLE student(
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

INSERT INTO student VALUES
(101, "anil", 78, "C", "Pune"),
(102, "bhumika", 93, "A", "Mumbai"),
(103, "chetan", 85, "B", "Mumbai"),
(104, "dhruv", 96, "A", "Delhi"),
(105, "emanuel", 12, "F", "Delhi"),
(106, "farah", 82, "B", "Delhi");

SELECT * FROM student;  -- SELECT is used to select any data from the database,  * means all data

SELECT name, marks FROM student;

SELECT city FROM student;


-- distinct
SELECT DISTINCT city FROM student;	-- no repetition of data


-- where clause is used To define some conditions
SELECT * FROM student WHERE marks>80;

SELECT * FROM student WHERE city = "Mumbai";




-- operators
/* 
	Arithmetic Operators : +(addition) , -(subtraction), *(multiplication), /(division), %(modulus)
	Comparison Operators : = (equal to), != (not equal to), > , >=, <, <=
	Logical Operators : AND, OR , NOT, IN, BETWEEN, ALL, LIKE, ANY
	Bitwise Operators : & (Bitwise AND), | (Bitwise OR)
*/
SELECT * FROM student WHERE marks>80 AND city = "Mumbai";
SELECT * FROM student WHERE marks>90 OR city = "Mumbai";
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE city IN ("Cuttack", "Pune", "Mumbai");
SELECT * FROM student WHERE city IN ("Cuttack", "bbsr");  -- NO CITIES EXISTS
SELECT * FROM student WHERE city NOT IN ("Cuttack", "bbsr");
SELECT * FROM student WHERE city NOT IN ("Cuttack", "bbsr", "Mumbai");
SELECT * FROM student WHERE marks+10 > 100;



-- LIMIT clause Sets an upper limit on number of (tuples)rows to be returned
SELECT  * FROM student LIMIT 3;
SELECT * FROM student WHERE city = "Delhi" LIMIT 2;



-- Order By Clause To sort in ascending (ASC) or descending order (DESC)
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY city DESC;

SELECT * FROM student ORDER BY marks DESC LIMIT 3;




