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

CREATE FUNCTION ADD_5 (@num int )
RETURNS int
AS
BEGIN 
RETURN @num+5
END;
SELECT DBO.ADD_5(10) as result;

CREATE FUNCTION  SQUARE_OF_NUM(@num INT )
RETURNS INT
AS
BEGIN
--@RESULT=SQ_NUM*SQ_NUM
RETURN @num*@num
end;
SELECT dbo.SQUARE_OF_NUM(10) AS RESULT;
--drop function DBO.square_OF_NUMBER;
--DROP FUNCTION dbo.SQUARE_OF_NUM;


--2.tABLE VALUED FUNCTION 

--SEE FIRST EMP._SOURCE TABLE
SELECT * FROM Employee_Source
-- CREATING FUNCTION FOR SELECTING DATA OF ONLY MALE EMPLOYEES 
CREATE FUNCTION SELECT_E_GENDER(@gender varchar(7))
returns table
AS
RETURN(
select * from Employee_Source where e_gender=@gender
)

SELECT * FROM  DBO.SELECT_E_GENDER('M')
