CREATE TABLE team(
	member_id int,
	P_name varchar(20),
	P_specilization varchar(25),
	P_gender varchar(6),
);

select * from team
insert into team (member_id,P_name,P_specilization,P_gender) values
	( 1 , 'ajay','Analatics','Male'),
	(2,'sahil','Web-dev','male'),
	(3,'aniruddha','marketing','male'),
	(4,'Rajkiran','AI','male'),
	(5,'Nilesh','Web-dev','male'),
	(5,'anne','devlpoer','Female'),
	(6,'juli','designer','Female');

-- using select distinct statment
SELECT DISTINCT P_gender from team;
-- using Where caluse 
SELECT * from team 
	where(P_gender='Female');

select * from team 
	where(P_gender='male');

--using and or and not operators 

select * from team 
	where(P_gender='male')and(P_name='ajay');
	
select * from team 
	 where(P_gender='Female')or (P_name='anne');

--using not 

select * from team 
	where not(P_gender='female');

select * from team 
	where P_name like 'a%'; -- gives one or more results starting with aXXXX.. 

select * from team 
	where P_gender like 'mal_';  -- the _ includes onlu 1 character  Ex 'mal_'gives Male

-- using between 

select * from team 
	where member_id between 2 and 4;
