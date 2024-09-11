-- Creating Tables

--CREATE Table Employee_Demographics
--(
--	employeeid int,
--	firstName varchar (50),
--	lastName varchar (50),
--	age int,
--	gender varchar (50)
--);



--CREATE Table Employee_Salary
--(
--	employeeid int,
--	jobTitle varchar(50),
--	salary int
--);


-- Inserting values into the tables

INSERT INTO Employee_Demographics 
VALUES	(01156291, 'Char', 'Mendoza', 28, 'Male'),
		(01584265, 'Mark', 'Oscars', 32, 'Male'),
		(01847624, 'Lara Anne', 'Croft', 35, 'Female'),
		(02145781, 'Madelyn', 'Smith', 40, 'Female'),
		(02584721, 'Sarah', 'Fox', 25, 'Female'),
		(02687784, 'Heather', 'Brown', 56, 'Female'),
		(03189245, 'Sam', 'Singh', 24, 'Female'),
		(03154763, 'Nate', 'Pipe', 25, 'Male'),
		(04574871, 'Juan', 'dela Cruz', 28, 'Male'),
		(04654784, 'Atasha', 'Andres', 21, 'Female');

--Inserting values into the Employee_Salary table
INSERT INTO Employee_Salary
VALUES (01156291, 'Administrative Staff', 40000),
	   (01584265, 'Secretary', 42000),
	   (01847624, 'Analyst', 56000),
	   (02145781, 'Bookkeeper', 32000),
       (02584721, 'Supervisor', 60000),
       (02687784, 'Administrative Officer', 52000),
       (03189245, 'Accountant', 45000),
       (03154763, 'HR Staff', 38000),
       (04574871, 'Manager', 38000),
       (04654784, 'Engineer', 60000);



-- Selecting columns from the Employee_Demographics table
SELECT COUNT (DISTINCT gender)
FROM Employee_Demographics;

-- Selecting columns from the Employee_Salary table
SELECT *
FROM Employee_Salary;

SELECT MAX (salary) as MaximumSalary
FROM Employee_Salary;

SELECT MIN (salary) as MinimumSalary
FROM Employee_Salary;

SELECT AVG (salary) as AverageSalary
FROM Employee_Salary;

-- Using WHERE statements
SELECT *
FROM Employee_Demographics
WHERE firstName != 'Juan';

SELECT *
FROM Employee_Demographics
WHERE firstName <> 'Juan';

SELECT *
FROM Employee_Demographics
WHERE firstName LIKE 'S%';

SELECT *
FROM Employee_Demographics
WHERE age <= 30 OR gender = 'male';

SELECT *
FROM Employee_Demographics
WHERE lastName IS NOT NULL;


SELECT *
FROM Employee_Demographics
WHERE lastName IN ('Oscars', 'Andres', 'Smith');


-- Using GROUP BY and ORDER BY
SELECT gender, COUNT (gender) AS genderCount
FROM Employee_Demographics
GROUP BY gender;

SELECT gender, COUNT (gender) AS genderCount
FROM Employee_Demographics
WHERE Age < 30
GROUP BY gender
ORDER BY genderCount DESC;

SELECT *
FROM Employee_Demographics
ORDER BY age DESC, gender;

