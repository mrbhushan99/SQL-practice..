CREATE DATABASE practice1;
CREATE DATABASE practice2;
use practice2;
DROP DATABASE practice1;


--CREATING TABLE FOR PRACTICE 

CREATE TABLE Employee1(
	e_id int not null,
	e_name varchar(20),
	e_salary int,
	PRIMARY KEY(e_id),
)

select * from Employee1;

-- inserting the values 

insert into Employee1 values(
	1,'Ram',45000
);

insert into Employee1 values (
	2,'shyam',40000
);

insert into Employee1 values(
	3,'anne',50000
);

insert into Employee1 values(
	4,'ramesh',55000
);

select * from Employee1;

-- using select distinct statment 
-- SELECT column_name FROM table_name;

select e_name from Employee1;

select e_salary from Employee1;

select e_id from Employee1;

--OR you can do the following shortcuts

select e_id,e_name from Employee1;

select e_id,e_name,e_salary from Employee1;

select * from Employee1;




