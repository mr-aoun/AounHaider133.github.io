create database Market;
use Market;

-- drop database Market;

create table Customer(
Name varchar(60),
City varchar(50),
ID int primary key
);

-- Creating one-to-one relationship

create table OrderDetail(
Name varchar(40),
ID int,
OrderNo int,
Cost int,
foreign key(ID) references Customer(ID)
);

insert into Customer(Name,City,ID) values ('Aoun-Haider','Lahore',133),
('Areez-Khan','Peshawar',121),
('Saad-Athar','Karachi',127),
("Saram Iftikhar",'Lahore',31),
("Samiullah-Sheikh",'India',85);

insert into OrderDetail(Name, ID, OrderNo,Cost) values ('Laptop',133,3,120000),
('Watch',121,4,50000),
('Glasses',31,9,20000),
('T-shirt',127,5,180000),
('Book',85,13,80000),
('Gell pen',133,8,125000),
('Laptop',31,3,120000),
('Glasses',133,9,20000);

select * from Customer as c,OrderDetail as O
 where
  c.ID in (133,85,127) and o.ID in (133,85,127);



