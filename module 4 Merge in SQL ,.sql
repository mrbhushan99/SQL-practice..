CREATE TABLE Employee_Source(
	e_id int,
	e_name varchar(20),
	e_salary int,
	e_age int,
	e_gender varchar(7),
	e_dept varchar(20)
);
insert into Employee_Source values
	(1,'sam',93000,40,'M','operations'),
	(2,'Bob',80000,21,'M','Suppport'),
	(3,'Anne',113000,25,'F','Analatics'),
	(6,'Jeff',112000,27,'M','Operations'),
	(7,'Adam',100000,28,'M','Content'),
	(8,'Priya',85000,37,'F','Tech')


CREATE TABLE Employee_Target(
	e_id int,
	e_name varchar(20),
	e_salary int,
	e_age int,
	e_gender varchar(7),
	e_dept varchar(20)
);
INSERT INTO Employee_Target values
	(1,'Sam',9500,45,'M','operations'),
	(2,'Bob',80000,21,'M','Support'),
	(3,'Anne',125000,25,'F','Analatics'),
	(4,'julia',73000,30,'F','Analatics'),
	(5,'Matt',159000,33,'M','Sales'),
	(6,'Jeff',112000,27,'M','Operations');
--TRUNCATE TABLE eMPLOYEE_TARGET
select * from Employee_Source
select * from Employee_Target

MERGE Employee_Target as T 
USING Employee_Source as S
	ON T.e_id=S.e_id
WHEN MATCHED
	then UPDATE SET T.e_salary=S.e_salary,T.e_age=S.e_age
WHEN NOT MATCHED BY TARGET 
	then INSERT (e_id,e_name,e_salary,e_age,e_gender,e_dept)
	values(S.e_id,S.e_name,S.e_salary,S.e_age,S.e_gender,S.e_dept)
WHEN NOT MATCHED BY SOURCE 
	then delete;
	
SELECT * FROM Employee_Source


--ALTER TABLE 
SELECT * FROM Employee_Source

ALTER TABLE Employee_Source
ADD e_dob date;

SELECT * FROM Employee_Source

--DROP COLUMN 

ALTER TABLE Employee_Source
DROP COLUMN e_dob;

SELECT * FROM Employee_Source

--Temporary table in SQL 
CREATE TABLE #student(
	s_id int,
	s_name varchar(20)
);
INSERT INTO #student 
values
	(1,'Bhushan'),
	(2,'Pratap');
SELECT * from #student
--Note for tempotary table the # symbol is required 


-- Basic Functions In SQL 
--1.MIN() Function 

SELECT * FROM Employee_Source

SELECT MIN (e_age) FROM 
Employee_Source;

SELECT MIN (e_salary) FROM 
Employee_source;

--2. MAX() function

SELECT MAX(e_age) FROM 
Employee_source;

SELECT MAX (e_salary) FROM 
Employee_Source;

--COUNT(*) functiom 
SELECT * FROM Employee_Source

SELECT COUNT(*) FROM Employee_Source WHERE(e_gender='M');

SELECT COUNT (*) FROM Employee_Source Where(e_salary>=100000);

--SUM()
--want to find sum of all the saleries of emp.
SELECT SUM(e_salary) FROM Employee_Source

--AVG()

SELECT * FROM Employee_Source

SELECT AVG(e_age) FROM Employee_Source

SELECT AVG(e_salary) FROM Employee_Source


--L12 STRING FUNCTIONS IN SQL 
--LTRIM()

SELECT '   hii this is bhushan'
SELECT LTRIM('   hii this is bhushan')

--LOWER()
SELECT 'BHUSHAN'
SELECT LOWER('BHUSHAN')

--UPPER()
select 'winner'
select UPPER('winner')

--REVERSE()
select 'helloo world'
select REVERSE('helloo world')

--SUBSTRING
select 'The new Version'
select SUBSTRING('The new Version',9,7)
-- here 1st parameter is the string
--2nd parameter is, there are 9 letters before version including space
--3rd parameter is the word version contains 7 letters


