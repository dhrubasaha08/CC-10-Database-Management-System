create database EMPLOYEE;
use EMPLOYEE;

create table Emp(emp_name varchar(30) PRIMARY KEY,street varchar(30),city varchar(30));

insert into Emp values('Ram','ABC Ltd','Kolkata');
insert into Emp values('Grogu','ABC Ltd','Kolkata');
insert into Emp values('Luke','DEF Ltd','Durgapur');
insert into Emp values('Leya','DEF Ltd','Durgapur');
insert into Emp values('Anakin','DEF Ltd','Durgapur');

create table Works(emp_name varchar(30) PRIMARY KEY,company_name varchar(30),salary int);

insert into Works values('Ram','ABC Ltd',40000);
insert into Works values('Grogu','ABC Ltd',30000);
insert into Works values('Luke','DEF Ltd',45000);
insert into Works values('Leya','DEF Ltd',31000);
insert into Works values('Anakin','DEF Ltd',70000);
insert into Works values('Ben','ABC Ltd',400000);
insert into Works values('Obiwan','ABC Ltd',300000);
insert into Works values('Papatin','XYZ Ltd',500000);

create table Company(company_name varchar(30) PRIMARY KEY,city varchar(30));

insert into Company values('ABC Ltd','Kolkata');
insert into Company values('DEF Ltd','Durgapur');
insert into Company values('NEF Ltd','Mumbai');
insert into Company values('RTC Ltd','Delhi');
insert into Company values('ZEDI Ltd','Mustaphir');
insert into Company values('AABBCC Ltd','Kolkata');
insert into Company values('XYZ Ltd','Kolkata');

select emp_name from Works order by salary desc limit 2,1;

select company_name from Works order by salary > (select AVG(salary) from Works where company_name = 'DEF Ltd')desc limit 2,1;

select company_name from Company where city =(select city from Company where company_name = 'ABC Ltd');

select emp_name from Works where  salary > (select MAX(salary) from Works where company_name = 'ABC Ltd');   

select * from Emp;
select * from Works;
select * from Company;