--CASE STATMENT
SELECT
CASE 
when 10>20 Then '10 is grater than 10'
when 10<20 Then '10 is less than 20'
else '10is equal to 20'
END;

Select * from Employee_Source

Select * ,e_grade=
Case
when e_salary<90000 then 'c'
when e_salary<100000 then 'B'
else 'A'
end
from Employee_Source
go

--iff function 
select
iif(10<20,'10 is less than 20','10 is grater than 20')

--user defined functions 
--1 scalar valued functions 
CREATE FUNCTION add_five(@num INT)
RETURNS INT
AS
BEGIN
    RETURN (@num + 5);
END;

SELECT dbo.add_five(10) AS Result;


