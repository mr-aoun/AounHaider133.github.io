
create database CUI;

use CUI;

--  drop database CUI;
create table Student(
ID int primary key,
Name varchar(60),
Fee int,
cgpa double
);

-- Making one-to-one relation b/w student and Course
create table Course(
ID int not null,
Code varchar(10),
SubjectName varchar(60),
primary key(ID),
foreign key(ID) references Student(ID)
);

-- Inserting data into Student table
insert into Student(ID,Name,Fee,cgpa) values (133,'Aoun-Haider',90000,3.5),
(152,'Talha-Shafique',100000,3.8),
(121,'Areez-Khan',50000,3.7),
(127,'Saad-Athar',80000,3.3),
(85,'Samiullah-Sheikh',95000,3.9);

-- drop table Course;
-- drop table Student;

-- Inserting data into Course table
insert into Course(Code,SubjectName,ID) values ('CSC341','Database Systems 1', 133),
('CSC241','Artificial Intelligence', 121),
('CSC311','Computer vision', 127),
('CSC148','Graph Theory', 152),
('CSC257','Embeded Systems', 85);

select * from Course;