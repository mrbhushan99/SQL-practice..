CREATE DATABASE JOINS;

-- CREATING TABLES FOR THE OPERATIONS 

CREATE TABLE Employee_4join (
	e_id int,
	e_name varchar(20),
	e_salary bigint,
	e_age int,
	e_gender varchar(6),
	e_dept varchar(20)
);

INSERT INTO Employee_4join values
	(1,'sam',95000,45,'male','operations'),
	(2,'Bob',80000,21,'male','Support'),
	(3,'Anne',125000,25,'Female','Analaics'),
	(4,'julia',73000,30,'Female','Analatics'),
	(5,'Matt',159000,33,'male','Sales'),
	(6,'Jeff',112000,27,'male','Opeartions');

select * from Employee_4join;

CREATE TABLE Department(
	d_id int,
	d_name varchar(15),
	d_location varchar(20)
);

insert into Department values
	(1,'Content','New-York'),
	(2,'Support','chicago'),
	(3,'Analatics','New-York'),
	(4,'Sales','Boston'),
	(5,'Tech','Dallas'),
	(6,'Finance','Chicago');

select * from Department
select * from Employee_4join

-- Performing inner join

select 
	Employee_4join.e_name,
	Employee_4join.e_dept,
	Department.d_name,
	Department.d_location
	
from
	Employee_4join
inner join
	Department
on Employee_4join.e_dept=Department.d_name;

--performing LEFT JOIN 

select * from Department
select * from Employee_4join

select 
	Employee_4join.e_name,
	Employee_4join.e_dept,
	Department.d_name,
	Department.d_location
From
	Employee_4join
left join 
	Department
ON
	Employee_4join.e_dept=Department.d_name;

--Performing Right join 

SELECT 
	Employee_4join.e_name,
	Employee_4join.e_dept,
	Department.d_name,
	Department.d_location
FROM
	Employee_4join
RIGHT JOIN
	Department
ON 
	Employee_4join.e_dept=Department.d_name;
	
--Performing FULL JOIN 

SELECT * 
FROM 
	Employee_4join
FULL JOIN
	Department
ON
	Employee_4join.e_dept=Department.d_name;


select * from Department
select * from Employee_4join


--Delete statment 

DELETE from Employee_4join
where (e_age>30); 
select * from Employee_4join

DELETE FROM Employee_4join
where (e_name='jeff');
select * from Employee_4join

--Truncate statment

TRUNCATE TABLE Employee_4join;
select * from Employee_4join