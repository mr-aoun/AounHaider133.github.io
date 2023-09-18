create database Customers;
use Customers;

 -- drop database Customers;

create table CustomerDetail(
Name varchar(60),
Country varchar(40),
Product varchar(60),
ID int primary key
);

insert into CustomerDetail(Name,Country,Product,ID) values ('Aoun-Haider','Pakistan','Sanitizer',133),
('Areez-Khan','England','Scizer',121),
('Saad-Athar','UK','Laptop',127),
('Talha-Shafique','Pakistan','Watch',152),
('Affan-Ahmad','Pakistan','T-Shirts',129),
('Adil-Bhati','California','Cup',004),
('Saram-Iftikhar','Pakistan','Phone',31);

-- select distinct Country as Locations from CustomerDetail;
update CustomerDetail
 set
  Country = 'India'
 where
  ID = 127;
  
select * from CustomerDetail order by ID;
-- select Count(*) from (select distinct country from CustomerDetail);