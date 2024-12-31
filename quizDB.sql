
create database quizDB
use quizdb
create schema company;  
go
create table company.Employees
(
EMployeeID int primary key identity (1,1) not null ,
EmployeeName Nvarchar(50) not null ,
position  nvarchar (50) not null,
salary decimal (18,2) not null ,
department_id int not null,
 date_of_joining datetime 


)
insert into company.Employees
values ('Jhon Doe' , 'Manager', 6000, 1,  2020-05-10 ),
       ('Jane Smith' , 'Developer' ,4500, 2 ,2021-06-15 ),
       ('Alan Turing' , 'analyst' ,4000,  3, 2022-03-20),
       ('Grace Hopper' , 'Scientist' ,7000,  1,  2019-11-25),
       ('Ada Lovelace' , 'Developer' ,5000,  2, 2023-01-10)

	   select * from company.Employees
update company.Employees
set salary += 500 
where EmployeeName = 'Jane Smith' and salary = 4500 

delete from Company.Employees where EMployeeID=3

select * 
from company.Employees
Where department_id = 'IT'



create table Department 
(
DepartmentID int primary key identity (1,1) not null ,
DepartmentName Nvarchar(50) not null ,
Location Nvarchar(50) not null,

)
insert into Department
values ('HR' , 'Newyork'),
       ('IT' , 'San Francisco'),
	   ('Finance' , 'Chicago')


select * 
from Department 

update Department
set location ='boston'
where DepartmentName='hr'


update company.Employees
set salary = salary * 0.10

delete from Department
where DepartmentName ='finance'
