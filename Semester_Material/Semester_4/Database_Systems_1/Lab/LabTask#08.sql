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
 
 -- 1. List of staff members who are deployed at London city.
 select * from staff join branch on staff.branchNo = branch.branchNo where city ='London';
 
 -- 2: List of staff members who are also private owners.
 select * from staff join privateOwner on staff.fName = privateOwner.fName and staff.lName = privateOwner.lName;
 
 -- 3: Detail of branch with its total salary.
 select branch.*,sum(staff.salary) as TotalSalary from staff join branch on staff.branchNo = branch.branchNo group by branchNo;
 
 -- 4: Name of those properties that are not handled by any staff member.
 select * from staff join propertyForRent on staff.staffNo = propertyForRent.staffNo ;
 
 -- 5: Is there property number that is viewed by client but not give any comment.
 select distinct v.PropertyNo from client c join Viewing v on c.clientNo = c.clientNo where v.comment is null;
 
 -- 6: Display the private owner number who is registered in system but did not have any property yet.
 select distinct o.ownerNo from privateOwner o join propertyForRent p on o.ownerNo = p.ownerNo where p.propertyNo is null;
 
 -- 7: Is there any client who did not view even a single property.
 select c.* from client c left join viewing v on v.clientNo = c.clientNo where v.clientNo is null;
 
 -- 8: Detail of staff members who are drawing more than the average salary of whole syatem.
 select * from staff where salary > (select avg(salary) from staff);
 
 -- 9: Can we see the top three personnel with max salary.
 select * from staff order by salary desc limit 3;
 
 -- 10: How many staff members are still not register a single property.
 select count(*) as NonRegistered from propertyForRent where staffNo is null;
 
 -- 11: Show the details of branches where male members are more than female members.
	 select b.*,count(*) as TotalStaff,sum(case when s.sex = 'M' then 1 else 0 end) as males,
	 sum(case when s.sex = 'F' then 1 else 0 end) as females
	 from branch b left join staff s on b.branchNo = s.branchNo
	 group by branchNo
	 having males > females;

-- 12: Branch details where still did not register a single property.
select b.* from branch b left join propertyForRent p on b.branchNo = p.branchNo where p.branchNo is null;

-- 13: Detail of properties which are viewed more than once.
SELECT p.*
FROM propertyForRent p
JOIN viewing v ON p.propertyNo = v.propertyNo
GROUP BY p.propertyNo
HAVING COUNT(*) > 1;

-- 14: Is there any branch where only female members are working.
select distinct branchNo from staff where sex = 'F';

-- 15: Which staff members arrange more than two leases.
SELECT s.staffNo, s.fName, s.lName, COUNT(*) AS num_leases
FROM staff s
JOIN propertyForRent pfr ON s.staffNo = pfr.staffNo join lease l on pfr.propertyNo = l.propertyNo
GROUP BY s.staffNo
HAVING num_leases > 1;

-- 16: Is there any private owner whose property did not rent out from last one year.
select p1.* from privateOwner p1 left join propertyForRent p2 on p1.ownerNo = p2.ownerNo
join viewing v on v.propertyNo = p2.propertyNo where year(v.viewDate) = '2022';

-- 17: How many private owners who have more than two properties.
select p1.ownerNo,p1.fName,p1.lName,count(p1.ownerNo) as Total_Properties from privateOwner p1 join propertyForRent 
p2 on p1.ownerNo = p2.ownerNo group by p1.ownerNo having Total_Properties > 1;

-- 18: Detail of Staff members who are over fifty years of age.
select * from staff where 2023-year(DOB) > 25;

-- 19: Detail of properties which have leased more than once.
select p.*,count(l.leaseNo) as Total_leases from propertyForRent p join
 lease l on p.propertyNo = l.propertyNo group by p.propertyNo having Total_leases > 0;

-- 20: Detail of clients who visited more than two properties.
select c.*,count(c.clientNo) as Total_clients from client c join
viewing v on c.clientNo = v.clientNo group by v.clientNo having Total_clients > 2;
