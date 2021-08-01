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
