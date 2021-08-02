--create database payroll_services;

use Payroll_Services;
--Uc2---
---Create Table---
create table employee_payroll
(
	empId int identity(1,1) primary key,
	name varchar(20) not null,
	salary float,
	startDate date,
	emailId varchar(20)
);


--Uc3--
--Insert data--
Insert into employee_payroll(name,salary,startDate,emailId) values ('Diwakar',25000,'2021-07-01','asdf@asdf.com'); 
Insert into employee_payroll values ('Ajith',30000,'2021-08-01','ajith@asdf.com'),('Vijay',32000,'2021-09-01','ajith@asdf.com'),('Rajini',40000,'2018-10-03','rajini@asdf.com');  

--Uc4--
--Select data--
Select * from employee_payroll;

--Uc5--
--Select particular data--
Select name,salary from employee_payroll where name='Diwakar';
Select name,salary from employee_payroll where startDate between ('2021-05-01') and getdate();

--Uc6--
--Alter and update data--
alter table employee_payroll add Gender char(1);


--Update--
update employee_payroll set Gender='M' where name='Diwakar' or name='Ajith' or name='Vijay' or name='Rajini';
update employee_payroll set Gender='F' where name='Nayantara';

select * from employee_payroll;
Insert into employee_payroll values ('Trisha',20000,'2021-08-01','nayan@asdf.com','F');
--UC7--
--Aggregate Functions--
--Min--
Select Gender,Min(salary)as MinSalary from employee_payroll where Gender='F' group by Gender;
--Max--
 Select Gender,Max(salary)as MaxSalary from employee_payroll where Gender='F' group by Gender;
 --Sum--
 Select Gender,Sum(salary)as TotalSalary from employee_payroll where Gender='F' group by Gender;
 --Avg--
 Select Gender,Avg(salary)as AvgSalary from employee_payroll where Gender='F' group by Gender;
 --Count--
 Select Gender, count(Gender)as Count from employee_payroll group by Gender order by Gender DESC;

 --Uc8--
 alter table employee_payroll add Department varchar(20) not null default 'Devs';
 alter table employee_payroll add PhoneNumber bigint;

update employee_payroll set PhoneNumber=9876543210 where name='Diwakar';
update employee_payroll set PhoneNumber=4567891230 where name='Ajith';
update employee_payroll set PhoneNumber=6549873210 where name='Vijay';
update employee_payroll set PhoneNumber=1238527964 where name='Rajini';
update employee_payroll set PhoneNumber=7418529630 where name='Nayantara';
update employee_payroll set PhoneNumber=7418529630 where name='Trisha';

update employee_payroll set Department='Finance' where name='Ajith';
update employee_payroll set Department='Testing' where name='Vijay';
update employee_payroll set Department='QA' where name='Rajini';
update employee_payroll set Department='ASE' where name='Nayantara';
update employee_payroll set Department='HR' where name='Trisha';

alter table employee_payroll add Address varchar(25) default 'NIL';

update employee_payroll set Address='Ambattur' where name='Diwakar';
update employee_payroll set Address='MKB' where name='Ajith';
update employee_payroll set Address='Egmore' where name='Vijay';
update employee_payroll set Address='Avadi' where name='Rajini';
update employee_payroll set Address='Teynampet' where name='Nayantara';
update employee_payroll set Address='chetpet' where name='Trisha';

select * from employee_payroll;
