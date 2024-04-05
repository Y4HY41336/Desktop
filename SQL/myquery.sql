create database Department

use Department

create table Eployee(
	Id int primary key identity,
	Fullname nvarchar(255) not null,
	Age int not null check(age between 16 and 100),
	Email nvarchar(255) unique not null ,
	Salary decimal(6,2)

)

select * from Eployee

update Eployee
set salary = 1976
where Id = 1

select e.fullname, e.email, e.salary from Eployee as e
where salary between 500 and 1500
order by salary desc

create database class

use class

create table Students(
	Id int primary key identity,
	[Name] nvarchar(50) not null,
	Surname nvarchar(55) not null default 'XXXXXX'

)

create table Subjects(
	Id int primary key identity,
	[Name] nvarchar(50) not null,

)

create table Exams(
	Id int primary key identity,
	[Date] date, 
	SubjectId int foreign key references Subjects(id)
)

create table StudentExams(
	Id int primary key identity,
	StudentId int foreign key references Student(id),
	ExamsId int foreign key references Student(id)

)
