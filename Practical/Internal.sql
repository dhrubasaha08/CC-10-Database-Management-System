show databases;
create database sql_exam;
use sql_exam;
create table Loan_Records(Borrower varchar(30), `Bank Manager` varchar(30), Amount float);
insert into loan_records values ('Ramesh', 'Sundarajan', 10000);
select * from loan_records;
show tables;
insert into loan_records values ('Suresh', 'Ramgopal', 5000);
insert into loan_records values ('Mahesh', 'Sundarajan', 7000);
SELECT Count(*)
FROM ( ( SELECT Borrower, `Bank Manager` FROM Loan_Records) AS S
INNER JOIN ( SELECT `Bank Manager`, Amount FROM
Loan_Records) AS T );
SELECT *
FROM ( ( SELECT Borrower, `Bank Manager` FROM Loan_Records) AS S
INNER JOIN ( SELECT `Bank Manager`, Amount FROM
Loan_Records) AS T );
