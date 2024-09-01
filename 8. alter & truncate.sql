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



-- Alter -- is used to change the schema(design --> columns, datatypes, constraints)

/*
	-- ADD COLUMN -- adding a new column to the table
    ALTER TABLE table_name
	ADD COLUMN column_name datatype constraint;
*/
ALTER TABLE student ADD COLUMN age INT NOT NULL DEFAULT 19;
SELECT * FROM student;


/*
	-- DROP COLUMN -- deleting a column from the table
	ALTER TABLE table_name
	DROP COLUMN column_name;
*/
ALTER TABLE student DROP COLUMN age; 
SELECT * FROM student;


/*
	-- RENAME TO -- Rename the table's name
	ALTER TABLE table_name
	RENAME TO new_table_name;
*/
ALTER TABLE student RENAME TO aspirants;
SELECT * FROM aspirants;


/*
	-- RENAME TO -- changing a column's name/datatype/constraint
	ALTER TABLE table_name
	CHANGE old_name new_name new_datatype new_constraint;
*/ 
ALTER TABLE aspirants CHANGE COLUMN rollno id INT;	-- we can use "CHANGE COLUMN" or "CHANGE"
ALTER TABLE aspirants CHANGE id stu_id INT;		-- changing column's name
ALTER TABLE aspirants CHANGE COLUMN stu_id stu_id VARCHAR(3);	-- changing column's constraint
DESCRIBE aspirants;
SELECT * FROM aspirants;
ALTER TABLE aspirants ADD COLUMN age INT NOT NULL DEFAULT 19;
ALTER TABLE aspirants CHANGE age stu_age VARCHAR(3) NULL;	-- changing column's name and datatype and constraint


/*
	-- MODIFY -- modifying datatype/constraint of a column 
	ALTER TABLE table_name
	MODIFY col_name new_datatype new_constraint;
*/
DESCRIBE aspirants;
ALTER TABLE aspirants MODIFY city VARCHAR(50) NOT NULL;
ALTER TABLE aspirants MODIFY grade VARCHAR(2);
DESCRIBE aspirants;




-- TRUNCATE -- to delete table's data

TRUNCATE TABLE aspirantS;
SELECT * FROM aspirants;
/*
	By 2 ways we can delete all the data of a table without dropping the table
    -- DELETE FROM table_name;  (but need to off safe-mode first)
    -- TRUNCATE TABLE table_name;
*/

INSERT INTO aspirants(stu_id, name, marks, grade, city) VALUES
	(101, "anil", 78, "C", "Pune"),
	(102, "bhumika", 93, "A", "Mumbai"),
	(103, "chetan", 85, "B", "Mumbai"),
	(104, "dhruv", 96, "A", "Delhi"),
	(105, "emanuel", 12, "F", "Delhi"),
	(106, "farah", 82, "B", "Delhi");
SELECT * FROM aspirants;

SET SQL_SAFE_UPDATES = 0;
DELETE FROM aspirants;
SELECT * FROM aspirants;

DROP DATABASE college;
    


 



