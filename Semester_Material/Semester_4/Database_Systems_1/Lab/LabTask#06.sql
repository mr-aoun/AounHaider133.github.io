-- Name: Aoun Haider
-- ID: FA21-BSE-133
-- Section: A
-- LabTask: 06

-- create database dreamHome;
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
 
 -- LabTask#01

 -- 1:
 -- Complete details of all staff who work at the branch in Glasgow and their salary is greater than 9000.
 select staff.* from staff join branch on staff.branchNo = branch.branchNo where branch.city = 'Glasgow'
 and staff.salary > 9000;

 -- 2: Produce a status report on property viewings.
 select * from viewing join propertyForRent on viewing.propertyNO = propertyForRent.propertyNo;

 -- 3: Detail of properties of those owners whose email address with gmail and name is John and city is Glasgow.
 select * from privateOwner where eMail = 'tinam@hotmail.com' and address like '%Glasgow%';

 -- 4:  Detail of all properties whose rent is under 500 and room greater than 2 and location is London.
 select * from propertyForRent where rent <= 5000 and rooms > 2 and city = 'London';

 -- 5: Detail of client from Aberdeen city.
 select client.* from client join viewing on client.clientNo = viewing.clientNo join propertyForRent on
 viewing.propertyNo = propertyForRent.propertyNo where propertyForRent.city = 'Aberdeen';
 
 -- 6: How many properties are not commented.
 select count(*) as Total from viewing where comment is null;
 
 -- 7: Can we see the properties which are not commented.
 select propertyForRent.* from propertyForRent join viewing on propertyForRent.propertyNo = viewing.propertyNo where viewing.comment is null;
 
 -- 8: Detail of staff who registered property number PL94.
 select staff.* from staff join propertyForRent on staff.staffNo = propertyForRent.staffNo where propertyForRent.propertyNo = 'PL94';
 
 -- 9: Who is the owner of property number PG4 and PG21.
 select privateOwner.fName, privateOwner.lName from privateOwner join propertyForRent on privateOwner.ownerNo = propertyForRent.ownerNo where propertyForRent.propertyNo in ('PG4','PG21');
 
 -- 10: Is there a staff member and private owner have the same name.
 select * from staff join privateOwner on staff.fName = privateOwner.fName and staff.lName = privateOwner.lName;
 
 -- 11: Detail of branch where only male staff members are working.
 select * from staff where sex = 'M';
 
-- LabTask#6 (part#02)
-- 1: Total salary of each branch
select branchNo,sum(salary) as TotalSalary from staff group by branchNo;

-- 2: Total Properties of each Private owner
select ownerNo, count(propertyNo) as TotalProperties from propertyForRent group by ownerNo;

-- 3:  How many properties viewed by each client.
select clientNo, count(propertyNo) as TotalProperties from viewing group by clientNo;

-- 4: How many properties are registered in each branch.
select branchNo, count(propertyNo) from propertyForRent group by branchNo;

-- 5: How many branches in each city.
select count(branchNo) as TotalBranches, city from branch group by city;

-- 6: How many staff members are in each branch.
select branchNo,count(staffNo) as TotalStaff from staff group by branchNo;

-- 7: How many private owners belongs to Glasgow city.
select count(ownerNo) as TotalOwners from privateOwner group by address like '%Glasgow%';

-- 8: How many staff members from each designation.
select position,count(staffNo) as TotalDesignators from staff group by position;

-- 9: Who is the owner of property number PG4 and PG21.
select privateOwner.fName,privateOwner.lName from propertyForRent join privateOwner on propertyForRent.ownerNo = privateOwner.ownerNo where propertyForRent.propertyNo in ('PG4','PG21');

-- 10: Is there a staff member and private owner have the same name.
select * from staff join privateOwner on staff.fName = privateOwner.fName and staff.lName = privateOwner.lName;

-- 11: Detail of client with his/her date of joined.
select client.*,registration.dateJoined from client join registration on client.clientNo = registration.clientNo;