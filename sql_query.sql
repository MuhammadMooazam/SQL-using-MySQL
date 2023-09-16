-- Create the 'college' database if it doesn't exist
CREATE DATABASE IF NOT EXISTS college;

-- Use the 'college' database
USE college;

-- Create a 'student' table with id, name, and age columns
CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT NOT NULL
);

-- Insert data into the 'student' table
INSERT INTO student VALUES (1, "MOOAZAM", 23);
INSERT INTO student VALUES (2, "ARHAM", 20);

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Delete all records from the 'student' table
DELETE FROM student;

-- Drop the 'student' table
DROP TABLE student;

-- Show a list of databases
SHOW DATABASES;

-- Show a list of tables in the current database
SHOW TABLES;

-- =======================================================
-- PRACTICE QUESTION 01
-- Create the 'gym' database if it doesn't exist
CREATE DATABASE IF NOT EXISTS gym;

-- Use the 'gym' database
USE gym;

-- Create an 'employee' table with id, name, and salary columns
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    salary INT
);

-- Insert data into the 'employee' table
INSERT INTO employee (id, name, salary) VALUES (1, "ADAM", 25000), (2, "BOB", 30000), (3, "CASEY", 40000);

-- Select all records from the 'employee' table
SELECT *
FROM employee;
-- =======================================================

-- Create the 'practice' database if it doesn't exist
CREATE DATABASE IF NOT EXISTS practice;

-- Use the 'practice' database
USE practice;

-- Create a 'default_constraint' table with an 'id' column and a 'date_column' column with a default timestamp
CREATE TABLE IF NOT EXISTS default_constraint (
    id INT PRIMARY KEY,
    date_column DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Insert data into the 'default_constraint' table
INSERT INTO default_constraint (id) VALUES (1);

-- Select all records from the 'default_constraint' table
SELECT *
FROM default_constraint;

-- Create the 'college' database again (This is redundant; you may want to remove this)
CREATE DATABASE IF NOT EXISTS college;

-- Use the 'college' database
USE college;

-- Create a 'student' table with rollno, name, marks, grade, and city columns
CREATE TABLE IF NOT EXISTS student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(20)
);

-- Insert data into the 'student' table
INSERT INTO student (rollno, name, marks, grade, city)
VALUES
    (101, "Ali", 78, "C", "Islamabad"),
    (102, "Bilal", 93, "A", "Lahore"),
    (103, "Chauhan", 85, "B", "Lahore"),
    (104, "Daniyal", 96, "A", "Karachi"),
    (105, "Ejaz", 12, "F", "Karachi"),
    (106, "Farah", 82, "B", "Karachi");

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Select 'name' and 'marks' columns from the 'student' table
SELECT name, marks
FROM student;

-- Select distinct 'city' values from the 'student' table
SELECT DISTINCT city
FROM student;

-- Select all records from the 'student' table where 'city' is 'Karachi'
SELECT *
FROM student
WHERE city = 'Karachi';

-- Select all records from the 'student' table where 'marks' is greater than 80
SELECT *
FROM student
WHERE marks > 80;

-- Select all records from the 'student' table where 'marks' is greater than 80 and 'city' is 'Karachi'
SELECT *
FROM student
WHERE marks > 80 AND city = 'Karachi';

-- Select all records from the 'student' table where 'marks' is greater than 80 or 'city' is 'Karachi'
SELECT *
FROM student
WHERE marks > 80 OR city = 'Karachi';

-- Select all records from the 'student' table where 'marks' are between 80 and 90
SELECT *
FROM student
WHERE marks BETWEEN 80 AND 90;

-- Select all records from the 'student' table where 'city' is either 'Karachi' or 'Lahore'
SELECT *
FROM student
WHERE city IN ('Karachi', 'Lahore');

-- Select all records from the 'student' table where 'city' is neither 'Karachi' nor 'Lahore'
SELECT *
FROM student
WHERE city NOT IN ('Karachi', 'Lahore');

-- Select the first 3 records from the 'student' table
SELECT *
FROM student
LIMIT 3;

-- Select the first 2 records from the 'student' table where 'marks' is greater than 80
SELECT *
FROM student
WHERE marks > 80
LIMIT 2;

-- Select all records from the 'student' table, ordered by 'rollno' in ascending order
SELECT *
FROM student
ORDER BY rollno ASC;

-- Select all records from the 'student' table, ordered by 'rollno' in descending order
SELECT *
FROM student
ORDER BY rollno DESC;

-- Select the top 3 records from the 'student' table, ordered by 'marks' in descending order
SELECT *
FROM student
ORDER BY marks DESC
LIMIT 3;

-- Select the count of 'name' from the 'student' table
SELECT COUNT(name)
FROM student;

-- Select the maximum 'marks' from the 'student' table
SELECT MAX(marks)
FROM student;

-- Select the minimum 'marks' from the 'student' table
SELECT MIN(marks)
FROM student;

-- Select the average 'marks' from the 'student' table
SELECT AVG(marks)
FROM student;

-- Select 'city' and the count of 'rollno' from the 'student' table, grouped by 'city'
SELECT city, COUNT(rollno)
FROM student
GROUP BY city;

-- Select 'city', 'name', and the count of 'rollno' from the 'student' table, grouped by 'city' and 'name'
SELECT city, name, COUNT(rollno)
FROM student
GROUP BY city, name;

-- Select 'city' and the average 'marks' from the 'student' table, grouped by 'city'
SELECT city, AVG(marks)
FROM student
GROUP BY city;

-- Select 'city' and the average 'marks' from the 'student' table, grouped by 'city' and ordered by 'city'
SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city;

-- Select 'mode' and the count of 'customer_id' from the 'payment' table, grouped by 'mode'
SELECT mode, COUNT(customer_id)
FROM payment
GROUP BY mode;

-- Select 'grade' and the count of 'rollno' from the 'student' table, grouped by 'grade' and ordered by 'grade'
SELECT grade, COUNT(rollno)
FROM student
GROUP BY grade
ORDER BY grade;

-- Select 'city' and the count of 'rollno' from the 'student' table, grouped by 'city' with a condition for the maximum 'marks'
SELECT city, COUNT(rollno)
FROM student
GROUP BY city
HAVING MAX(marks) > 90;

-- Select 'city' from the 'student' table where 'grade' is 'A', grouped by 'city' with a condition for the maximum 'marks', and ordered by 'city' in ascending order
SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city
HAVING MAX(marks) > 90
ORDER BY city ASC;

-- Disable safe updates for this session
SET SQL_SAFE_UPDATES = 0;

-- Update records in the 'student' table, setting 'grade' to 'O' where 'grade' is 'A'
UPDATE student
SET grade = 'O'
WHERE grade = 'A';

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Update records in the 'student' table, setting 'marks' to 83 where 'rollno' is 105
UPDATE student
SET marks = 83
WHERE rollno = 105;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Update records in the 'student' table, setting 'marks' to 82 and 'grade' to 'O' where 'rollno' is 105
UPDATE student
SET marks = 82,
    grade = 'O'
WHERE rollno = 105;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Update records in the 'student' table, incrementing 'marks' by 1 for all records
UPDATE student
SET marks = marks + 1;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Delete records from the 'student' table where 'marks' are less than 33
DELETE FROM student
WHERE marks < 33;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Create a 'department' table with id and name columns
CREATE TABLE IF NOT EXISTS department (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into the 'department' table
INSERT INTO department (id, name) VALUES (101, "Ali");
INSERT INTO department (id, name) VALUES (102, "Bilal");

-- Select all records from the 'department' table
SELECT *
FROM department;

-- Create a 'teacher' table with id, name, and dept_id columns, and a foreign key constraint
CREATE TABLE IF NOT EXISTS teacher (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id)
        REFERENCES department (id)
        ON UPDATE CASCADE ON DELETE CASCADE
);

-- Add an 'age' column to the 'student' table
ALTER TABLE student
ADD COLUMN age INT;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Remove the 'age' column from the 'student' table
ALTER TABLE student
DROP COLUMN age;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Rename the 'name' column in the 'student' table to 'full_name'
ALTER TABLE student
RENAME COLUMN name TO full_name;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Delete records from the 'student' table where 'marks' are less than 80
DELETE FROM student
WHERE marks < 80;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Remove the 'grade' column from the 'student' table
ALTER TABLE student
DROP COLUMN grade;

-- Select all records from the 'student' table

-- JOINS:
-- In the following joins, 'A' represents the left table, and 'B' represents the right table.
-- INNER JOIN - Common Data (Intersection - A∩B)
-- LEFT JOIN or LEFT OUTER JOIN - Only in A and both not in B - (A-B)
-- RIGHT JOIN or RIGHT OUTER JOIN - Only in B and both not in A - (B-A)
-- FULL JOIN - All Data (Union - A∪B)
-- LEFT EXCLUSIVE JOIN (Only values of A, not in B, and not their common data)
-- RIGHT EXCLUSIVE JOIN (Only values of B, not in A, and not their common data)
-- FULL EXCLUSIVE JOIN (Only values of A and B, not their common data)
-- SELF JOIN (Joining a table with itself)

-- Create the 'join_practice' database if it doesn't exist
CREATE DATABASE IF NOT EXISTS join_practice;

-- Use the 'join_practice' database
USE join_practice;

-- Create a 'student' table with id and name columns
CREATE TABLE IF NOT EXISTS student (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert data into the 'student' table
INSERT INTO student (id, name) VALUES (101, "Adam"), (102, "Bob"), (103, "Casey");

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Create a 'course' table with id and course columns
CREATE TABLE IF NOT EXISTS course (
    id INT PRIMARY KEY,
    course VARCHAR(50)
);

-- Insert data into the 'course' table
INSERT INTO course (id, course) VALUES (102, "English"), (105, "Math"), (103, "Science"), (107, "Computer Science");

-- Select all records from the 'course' table
SELECT *
FROM course;

-- Select all records from the 'student' table INNER JOINed with the 'course' table on the 'id' column
SELECT *
FROM student AS s
INNER JOIN course AS c ON s.id = c.id;

-- Select all records from the 'student' table LEFT JOINed with the 'course' table on the 'id' column
SELECT *
FROM student AS s
LEFT JOIN course AS c ON s.id = c.id;

-- Select all records from the 'student' table RIGHT JOINed with the 'course' table on the 'id' column
SELECT *
FROM student AS s
RIGHT JOIN course AS c ON s.id = c.id;

-- Select all records from the 'student' table LEFT JOINed with the 'course' table on the 'id' column and UNIONed with records from a RIGHT JOIN
SELECT *
FROM student AS s
LEFT JOIN course AS c ON s.id = c.id
UNION SELECT *
FROM student AS s
RIGHT JOIN course AS c ON s.id = c.id;

-- Select all records from the 'student' table LEFT JOINed with the 'course' table on the 'id' column where 'id' is NULL in the 'course' table
SELECT *
FROM student AS s
LEFT JOIN course AS c ON s.id = c.id
WHERE c.id IS NULL;

-- Select all records from the 'student' table RIGHT JOINed with the 'course' table on the 'id' column where 'id' is NULL in the 'student' table
SELECT *
FROM student AS s
RIGHT JOIN course AS c ON s.id = c.id
WHERE s.id IS NULL;

-- Select all records from the 'student' table LEFT JOINed with the 'course' table on the 'id' column where 'id' is NULL in both the 'student' and 'course' tables, and UNIONed with records from a RIGHT JOIN with the same condition
SELECT *
FROM student AS s
LEFT JOIN course AS c ON s.id = c.id
WHERE c.id IS NULL
UNION SELECT *
FROM student AS s
RIGHT JOIN course AS c ON s.id = c.id
WHERE s.id IS NULL;

-- Create an 'employee' table with id, name, and manager_id columns
CREATE TABLE IF NOT EXISTS employee (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    manager_id INT
);

-- Insert data into the 'employee' table
INSERT INTO employee (id, name, manager_id) VALUES (101, "Adam", 103), (102, "Bob", 104), (103, "Casey", NULL), (104, "Donald", 103);

-- Select all records from the 'employee' table
SELECT *
FROM employee;

-- Select the names of managers and their subordinates from the 'employee' table
SELECT a.name AS manager_name, b.name
FROM employee AS a
JOIN employee AS b ON a.id = b.manager_id;

-- Select all records from the 'employee' table and UNION them with the same table
SELECT *
FROM employee
UNION SELECT *
FROM employee;

-- Select all records from the 'employee' table and UNION ALL of them with the same table
SELECT *
FROM employee
UNION ALL SELECT *
FROM employee;

-- Use the 'college' database again (This is redundant; you may want to remove this)
USE college;

-- Select all records from the 'student' table
SELECT *
FROM student;

-- Select the average 'marks' from the 'student' table
SELECT AVG(marks)
FROM student;

-- Select all records from the 'student' table where 'marks' are greater than the calculated average 'marks'
SELECT *
FROM student
WHERE marks > 87.8000;

-- Select all records from the 'student' table where 'marks' are greater than the calculated average 'marks'
SELECT *
FROM student
WHERE marks > (SELECT AVG(marks) FROM student);

-- Select 'rollno' from the 'student' table where 'rollno' is even (divisible by 2)
SELECT rollno
FROM student
WHERE rollno % 2 = 0;

-- Select 'full_name' and 'rollno' from the 'student' table where 'rollno' is in the set {102, 104, 106}
SELECT full_name, rollno
FROM student
WHERE rollno IN (102, 104, 106);

-- Select 'full_name' and 'rollno' from the 'student' table where 'rollno' is in the set of even 'rollno' values
SELECT full_name, rollno
FROM student
WHERE rollno IN (SELECT rollno FROM student WHERE rollno % 2 = 0);

-- Select the maximum 'marks' from the subset of records in the 'student' table where 'city' is 'Karachi'
SELECT MAX(marks)
FROM (SELECT * FROM student WHERE city = 'Karachi') AS temp;

-- Select the maximum 'marks' from the entire 'student' table and display it alongside 'full_name'
SELECT (SELECT MAX(marks) FROM student), full_name
FROM student;

-- Create a view named 'teacher_view' that selects 'rollno', 'full_name', and 'marks' from the 'student' table
CREATE VIEW teacher_view AS
SELECT rollno, full_name, marks
FROM student;

-- Select all records from the 'teacher_view' view
SELECT *
FROM teacher_view;

-- Select all records from the 'teacher_view' view where 'marks' are greater than 90
SELECT *
FROM teacher_view
WHERE marks > 90;

-- Drop the 'teacher_view' view
DROP VIEW teacher_view;
