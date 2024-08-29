CREATE DATABASE college;
USE college;
CREATE TABLE student(
	rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);
INSERT INTO student(rollno, name, marks, grade, city) VALUES
	(101, "anil", 78, "C", "Pune"),
	(102, "bhumika", 93, "A", "Mumbai"),
	(103, "chetan", 85, "B", "Mumbai"),
	(104, "dhruv", 96, "A", "Delhi"),
	(105, "emanuel", 12, "F", "Delhi"),
	(106, "farah", 82, "B", "Delhi");
    
SELECT * FROM student;





-- Update (to update existing rows) -- 
/*
	DML command;
	as long as the "safe update" mode is "on", you can't update any value; 
    first off this safe-mode then perform update command.     -- SET SQL_SAFE_UPDATES = 0;
    we can also turn on safe-mode by setting the value to 1. 	-- SET SQL_SAFE_UPDATES = 1;
*/
SET SQL_SAFE_UPDATES = 0; 
UPDATE student SET grade = "O" WHERE marks>90;
SELECT * FROM student;

UPDATE student SET marks = 82 WHERE name = "emanuel";
SELECT * FROM student;
-- UPDATE student SET grade = "B" WHERE marks>80;	-- it will update all the grades to "B" who have marks >80 even the marks>90.
UPDATE student SET grade = "B" WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student;
-- increase all the students' marks by 1
UPDATE student SET marks = marks+1;
SELECT * FROM student;




-- Delete (to delete existing rows) --
INSERT INTO student(rollno, name, marks, grade) VALUES(107, "rabi", 13, "F");
SELECT * FROM student;
DELETE FROM student WHERE city IS NULL; 
SELECT * FROM student;
DELETE FROM student WHERE city IS NOT NULL;
SELECT * FROM student;

INSERT INTO student(rollno, name, marks, grade, city) VALUES
	(101, "anil", 78, "C", "Pune"),
	(102, "bhumika", 93, "A", "Mumbai"),
	(103, "chetan", 85, "B", "Mumbai"),
	(104, "dhruv", 96, "A", "Delhi"),
	(105, "emanuel", 12, "F", "Delhi"),
	(106, "farah", 82, "B", "Delhi");
SELECT * FROM student;
DELETE FROM student WHERE marks<90;
SELECT * FROM student;

DELETE FROM student; 	-- it will delete all the data from table
SELECT * FROM student;

DROP DATABASE college;



