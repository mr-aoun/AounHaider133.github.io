-- Name: Aoun Haider
-- ID: FA21-BSE-133
-- Section: A
-- LabTask: 04

create database dreamHome;
use dreamHome;
create table branch(

branchNo varchar(100) primary key,
street varchar(100),
city varchar(100),
postCode varchar(100)

);

 insert into Branch ( branchNo , street,city,postcode)
values ( 'B005', '22 Deer rd ', 'London','SW1 4EH') ,
( 'B007', '22 Deer rd ', 'Aberdeen','AB2 35U') ,
( 'B003', '16 Argyll St ', 'Glasgow','G11 9QX') ,
( 'B004', '163 Manse Rd ', 'Bristol ','BS99 1NZ') ,
( 'B002', '56 Clover Dr', 'London','NW10 6EU');

-- drop table staff;
create table staff(

staffNo varchar(100) primary key ,
fname varchar (100),
lName varchar(100),
position varchar(100),
sex char,
DOB date,
salary int,
branchNo varchar(100) ,
foreign key(branchNo) REFERENCES branch(branchNo)

);

 insert into staff(staffNo,fName,lName,position,sex,DOB,salary,branchNo) 
 values ('SL21','John','White','Manager','M','2023-08-01',30000.00,'B005'),
('SG37','Ann','Beech','Assistant','F','1990-11-06',12000.00,'B003'),
('SG14','David','Ford','Supervisor','M','1995-03-05',18000.00,'B003'),
('SA9','Mary','Howe','Assistan','F','1998-02-07',9000.00,'B007'),
('SG5','Susan','Brand','Manager','F','2016-01-21',24000.00,'B003'),
('SL41','Julie','Lee','Assistan','F','2020-01-25',9000.00,'B005');


create table privateOwner(

ownerNo varchar(100) primary key,
fNAme varchar(100),
lname varchar(100),
address varchar(100),
telNo varchar(100),
eMail varchar(100),
password varchar(100)

);

insert into privateOwner(ownerNo,fName,lName,address,telNo,eMail,password)values('CO46','Joe','Keogh','2 Fergus Dr, Aberdeen AB2 7SX','01224-861212','john.kay@gmail.com','********'),
('CO87','Carol','Farrel','6 Achray St, Glasgow G32 9DX','0141-357-7419','cfarrel@gmail.com','********'),
('CO40','Tina','Murphy','63 Well St, Glasgow G42','0141-943-1728','tinam@hotmail.com','********'),
('CO93','Tony','Shaw','12 Park Pl, Glasgow G4 0QR','0141-225-7025','tony.shaw@ark.com','********');


create table propertyForRent(

propertyNo varchar(100) primary key,
street varchar(100),
city varchar(100),
postCode varchar(100),
type varchar(100),
rooms int,
rent int,
ownerNo varchar(100),
 foreign key(ownerNo) REFERENCES privateOwner(ownerNo) ,
staffNo varchar(100),
 foreign key(staffNo) REFERENCES staff(staffNo) ,
branchNo varchar(100),
 foreign key(branchNo) REFERENCES branch(branchNo)

);

insert into PropertyForRent ( propertyNo , street,city,postcode,type,rooms,rent,ownerNo,staffNo,branchNo)
values ('PA14','16 Holhead','Aberdeen','Ab7 5SU','House',6,650,'CO46','SA9','B007'),
 ('PL94','16 Argyll St ','London','NW2','Flat',4,400,'CO87','SL41','B005'),
 ('PG4','6 Lawerence St','Glassgow','G11 9QX','Flat',3,350,'CO40',Null,'B003'),
 ('PG36','Manor Rd','Glassgow','G11 4QX','Flat',3,375,'CO93','SG37','B003'),
 ('PG21','18 Dale Rd','Glassgow','G12','House',5,600,'CO87','SG37','B003'),
 ('PG16','5 Novar St','Glassgow','G12 9AX','Flat',4,450,'CO93','SG14','B003');

create table client(

clientNo varchar(100) primary key,
fName varchar(100),
lName varchar(100),
telNo varchar(100),
prefType varchar(100),
maxRent int,
eMail varchar(100)

);

insert into client(clientNo,fName,lName,telNo,prefType,maxRent,eMail) values('CR76','John','Kay','0207-774-5632','Flat',425,'john.kay@gmail.com'),
('CR56','Aline','Stewart','0141-848-1825','Flat',350,'astewart@hotmail.com'),
('CR74','Mike','Ritchie','01475-392178','House',750,'mritchie01@yahoo.co.uk'),
('CR62','Mary','Tregear','01224-196720','Flat',600,'maryt@hotmail.co.uk');


create table viewing(

clientNO varchar(100) ,
foreign key(clientNo) REFERENCES client(clientNo),
propertyNO varchar(100),
 foreign key(propertyNo) REFERENCES propertyForRent(propertyNo) ,
primary key (clientNo,propertyNo),
viewDate date,
comment varchar(100)

);

 insert into Viewing ( clientNo ,propertyNo,viewDate,comment)
 values ( 'CR56','PA14','2022-05-13','too small'),
 ( 'CR76','PG4','2021-04-13','too remote'),
 ( 'CR56','PG4','2018-05-13',Null),
 ( 'CR62','PA14','1990-05-13','no dining room'),
 ( 'CR56','PG36','2015-04-13',Null);

create table registration(

clientNo varchar(100),
 foreign key(clientNo) REFERENCES client(clientNo),
branchNo varchar(100),
 foreign key(branchNo) REFERENCES branch(branchNo),
primary key (clientNo,branchNo),
staffNo varchar(100),
foreign key(staffNo) REFERENCES staff(staffNo),
dateJoined varchar(30)

);

 insert into registration ( clientNo ,branchNo, staffNo,dateJoined)
 values ('CR76','B005','Sl41','2-Jan-13'),
 ('CR56','B003','SG37','11-Apr-12'),
 ('CR74','B003','SG37','16-Nov-11'),
 ('CR62','B007','SA9','7-Mar-12');
 
 -- Tasks
 
 -- 1:
 select avg(salary) as AverageSalary from staff;
 
 -- 2:
 select avg(salary) as AverageSalary from staff
 where branchNo = 'B005';
 
 -- 3:
 select avg(salary) as AverageSalary from staff
 group by branchNo;
 
 -- 4:
 select fName,lName,position from staff
 where salary = (select max(salary) from staff);
 
 -- 5:
 select fName,lName,position from staff
 where position = 'Supervisor' order by salary desc limit 1;
 
 -- 6:
  select fName,lName,branchNo from staff
 where salary = (select min(salary) from staff) limit 1;
 
 -- 7:
 select fName,lName, position, branchNo from staff
 where position = 'Manager'
 order by salary desc limit 1;
 
 -- 8:
 select count(position) as NumOfPositions from staff
 where position = 'Supervisor';
 
 -- 9:
 select * from staff
 where position = 'Supervisor' and branchNo in ('B003','B005');
 
 -- 10:
 select sum(salary) as TotalBudget from staff;
 
 
 -- LabTask#04
 
 -- 1: All staff members data with their branch details.
 select * from staff;
 
 -- 2: All staff members data belongs to London city.
 select *,city from staff,Branch
 where Branch.city = 'London' and Branch.branchNo = staff.branchNo;
 
 -- OR
 select * from staff join Branch on  Branch.branchNo = staff.branchNo and Branch.city='London';
 
 -- 3: Branch data where SA9 is working.
 select * from staff join Branch on staff.staffNo = 'SA9' and Branch.branchNo = staff.branchNo;
 
 -- 4: Detail of properties with staff details.
 select * from propertyForRent join staff on propertyForRent.branchNo = staff.branchNo;
 
 -- 5: Detail of properties with private owner details.
 select * from privateOwner join propertyForRent on propertyForRent.ownerNo = privateOwner.ownerNo;
 
 -- 6: Detail of properties with branch data.
 select * from branch join propertyForRent on propertyForRent.branchNo = branch.branchNo;
 
 -- 7: Detail of clients with their preferences.
 select * from client join propertyForRent on propertyForRent.type = client.prefType;
 
 -- 8: Detail of clients with their comments while viewing properties.
 select * from client join Viewing on client.clientNo = Viewing.clientNo;
 
 -- 9: Detail of branch where only male staff members are working.
 select Branch.branchNo,Branch.street,Branch.city,Branch.postCode from branch join staff on  Branch.branchNo = staff.branchNo and staff.sex='M';
 
 -- 10: Branch detail with detail of properties registered in each branch.
 select b.branchNo,b.street,b.city,b.postCode , p.propertyNo,
 p.street,p.city,p.postCode,p.type,p.rooms,p.rent,p.ownerNo ,p.staffNo,p.branchNo from branch b
 join propertyForRent p on b.branchNo = p.branchNo 
 join registration on b.branchNo = registration.branchNo;
 
 -- 11: Each owner detail with the detail of their properties.
 select * from privateOwner join propertyForRent on propertyForRent.ownerNo = privateOwner.ownerNo;
 
 -- 12: Total salary of branch B003
 select sum(salary) as TotalSalary from staff 
 where branchNo = 'B003';
 
 -- 13: Total salary of whole system.
 select sum(salary) as TotalSalary from staff;
 
 -- 14: Detail of employee who is drawing minimum salary.
 select * from staff
 where salary = (select min(salary) from staff);
 
 -- 15: Detail of employee who is drawing maximum salary.
 select * from staff
 where salary = (select max(salary) from staff);
 
 -- 16: Average salary of branch B005
 select avg(salary) from staff
 where branchNo = 'B005';
 
 
 -- LabTask#4.1
 -- 1: Can we find out the date when was the client 'John' was registered in DreamHome system.
 select registration.dateJoined from registration join client on registration.clientNo = client.clientNo and client.fName = 'John';
 
 -- 2: Can we see the detail of Client 'CR78 and the detail of branch where he was registered 
 select client.clientNo, client.fName,client.lName,client.telNo,client.prefType,client.maxRent,client.eMail,
 branch.branchNo,branch.street,branch.city,branch.postCode from client
 join registration on client.clientNo = registration.clientNo
 join branch on  branch.branchNo = registration.branchNo;
 
 -- 3: Is there any client who did not view even a single property.
 select fName,lName from client join Viewing on client.clientNo = Viewing.clientNo and Viewing.comment is Null;
 
 -- 4: How many private owner have the first name 'Joe'
 select count(fName) as NumberOfClients from privateOwner
 where privateOwner.fName = 'Joe';
 
 -- 5: Is there any private owner who did not provide email address.
 select fName,lName from privateOwner
 where email is null;
 
 -- 6: Is there any client who has the same email address as private owner.
 select * from client join privateOwner on client.email = privateOwner.email;
 
 -- 7: Is there any staff who is also a private owner.
 select * from staff join privateOwner on staff.fName = privateOwner.fName and staff.lName = privateOwner.lName;
 
 -- 8: Can we see the top three max rent of properties.
 select * from propertyForRent
 order by rent desc
 limit 3;
 
 -- 9: Display the private owner number who is registered in system but did not have any property yet.
 select distinct privateOwner.ownerNo from privateOwner join propertyForRent on propertyForRent.ownerNo = privateOwner.ownerNo;
 
 -- 10: Detail of properties which are still not viewed.
 select p.propertyNo,p.street,p.city,p.postCode,p.type,p.rooms,
 p.rent,p.ownerNo,p.staffNo,p.branchNo from propertyForRent p
 join Viewing v on p.propertyNo = v.propertyNo and v.comment is null;
 
 -- 11: Show the data of all staff members with the detail of properties they handled.
 select * from staff s join propertyForRent p on s.staffNo = p.staffNo;
 
 create database Book;
 
 create table Authur(
 authurID int,
 firstName varchar(30),
 lastName varchar(40),
 date varchar(30)
 );
 
 insert into Authur(authurID,firstName,lastName,date) values (133,"Aoun","Haider","12-02-2023"),
 (127,"Saad","Athar","15-02-2023"),
 (121,"Areez","Khan","17-02-2023"),
 (152,"Talha","Shafique","25-02-2023");
 
 select * from Authur;