create database payroll_services;

use Payroll_Services;
--Uc2---
---Create Table---
create table employee_payroll(
	empId int identity(1,1) primary key,
	name varchar(20) not null,
	salary float,
	startDate date,
	emailId varchar(20)
);