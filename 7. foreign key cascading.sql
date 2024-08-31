CREATE DATABASE college;
USE college;


-- liking 2 tables through foreign keys --

CREATE TABLE dept(   -- parent table; whose primary key is used as foreign key in another table
	id INT,
    name VARCHAR(30),
    PRIMARY KEY(id)
);

CREATE TABLE teacher(	-- child table; which contains the foreign key
	id INT PRIMARY KEY,
    name VARCHAR(30),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
);
-- if we want the changes done to the primary key of parent table to reflect on foreign key of child table also then we have to cascade
DROP TABLE teacher;



-- cascading updation & deletion through foreign keys --

CREATE TABLE teacher(	-- child table
	id INT PRIMARY KEY,
    name VARCHAR(30),
    dept_id INT,
    FOREIGN KEY(dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
);

INSERT INTO dept VALUES
	(101, "English"),
	(102, "IT");
SELECT * FROM dept;

INSERT INTO teacher VALUES
	(1, "Adam", 101),
    (2, "Eve", 102);
SELECT * FROM teacher;

UPDATE dept SET id = 103 WHERE id = 102;
SELECT * FROM dept;
SELECT * FROM teacher;

UPDATE teacher SET dept_id = 105 WHERE dept_id = 101;	-- ERROR; can't modify a foreign key from the child table

INSERT INTO teacher VALUES (3, "Ram", 103);
INSERT INTO teacher VALUES (4, "Shyam", 105);	-- ERROR; bcz there is no id(primary key) == '105'

/* 
	there is no way we can modify a foreign key from the child table
    we can modify it from the parent table only
*/







