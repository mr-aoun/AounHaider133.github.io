-- Name: Aoun Haider
-- ID: FA21-BSE-133
-- Section: A
-- LabTask: 05

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
 
 
-- lab 5.2

-- 1:
 create table lease( 
   LeaseNo int ,
 LeaseDate  varchar(40) ,
 RentstartDate varchar(40),
 RentEndDate varchar(40),
 MonthlyRent int,
 ClientNo varchar(50) ,
 PropertyNo varchar(50)
 );
-- drop table lease;
-- 2:
 insert  into lease (LeaseNo,LeaseDate,RentstartDate,RentEndDate,MonthlyRent,ClientNo,PropertyNo)
 values(1,'2-jan-18','5-june-17','10-july-18',2000,'CR76','PA14'),
 (2,'9-jan-20','10-june-16','15-july-17',3000,'CR56','PG4'),
 (3,'1-march-18','5-may-17','10-october-18',4000.00,'CR74','PL94'),
 (4,'16-september-18','23-november-18','10-december-20',5000.00,'CR62','PG36'),
 (5,'2-june-18','5-june-19','10-july-21',6000.00,'CR76','PG21');
 -- DROP table lease

-- 3:
 select count(*) as totalNoOfLease from lease;

-- 4:
 select clientNo,propertyNo  from lease
 where clientNo='CR76';

-- 5:
 select count(propertyNo) from lease
 where  LeaseDate>='20-march-23';

-- 6:
 select propertyNo from lease
 where  RentEndDate='20-november-23' ;

-- 7:
 select propertyNo from lease
 where  MonthlyRent=(select max( MonthlyRent) from lease);

-- 8:
select * from propertyForRent,lease 
where propertyForRent.propertyNo = lease.propertyNo;

-- 9:
select p.propertyNo,p.street,p.city,p.postCode,p.type,p.rooms,p.rent,p.ownerNo,p.staffNo,p.branchNo
 from lease join propertyForRent p on lease.PropertyNo <> p.propertyNo;
 
-- 10:
select * from lease
where clientNo = 'CR76';

-- 11:
select p.propertyNo,p.street,p.city,p.postCode,p.type,p.rooms,p.rent,p.ownerNo,p.staffNo,p.branchNo
 from lease join propertyForRent p on lease.PropertyNo = p.propertyNo;

-- LabTask#05
-- 1: Is there any branch which does not have postcode.
select * from branch
where postCode is null;

-- 2:  Detail of branch whose city name has a character 'n'.
select * from branch
where city like '%n%';

-- 3: Report Branch numbers with the male and female members count.
select sex,count(sex) as TotalGender from staff
group by sex;

-- 4: Show all staff members salary after 15% increase.
select salary+salary*0.15 from staff;

-- 5: How many properties are available in each branch.
select branchNo,count(branchNo) from propertyForRent
group by branchNo;

-- 6: Address of branch where 'PL4' property is registered.
select branch.street,branch.city from branch join propertyForRent on branch.branchNo = propertyForRent.branchNo and propertyForRent.propertyNo = 'PA14';

-- 7: How many staff members are still not register a single property.
select * from staff join propertyForRent p on staff.staffNo <> p.staffNo;

-- 8: Detail of client with minimum rent.
select * from client
where maxRent = (select min(maxRent) from client);

-- 9: Detail of all registered clients with thier properties viewing detail.
select * from client join viewing on client.clientNo = viewing.clientNo;

-- 10: Detail of clients who regiered after 11-04-13.
select * from client join registration on client.clientNo = registration.clientNo and registration.dateJoined>='11-Apr-13';

-- 10: Detail of properties of 'Carol'
select * from privateOwner join propertyForRent on privateOwner.ownerNo = propertyForRent.ownerNo and privateOwner.fName = 'Carol';

-- 11: Count the clients according to their preference type.
select count(*)from client group by prefType;

--  12: How many properties viewed by each client.
select count(*) from viewing group by clientNo;