
-- create database Company;
use Company;

create table Customers(
CustomerID int primary key,
CustomerName varchar(80),
City varchar(40)
);

create table Orders(
OrderID int,
CustomerID int,
OrderDate varchar(60)
);

insert into Customers(CustomerID, CustomerName, City) values (133,'Aoun-Haider','Lahore'),
(121,'Areez-Khan','Karachi'),
(127,'Saad-Athar','London'),
(085,'Samiullah Sheikh','India');

insert into Orders(OrderID, CustomerID, OrderDate) values (1,121,'5/03/2023'),
(2,133,'2/03/2023'),
(3,127,'8/03/2023'),
(4,085,'10/03/2023'),
(5,133,'21/03/2023'),
(6,152,'28/03/2023'),
(7,102,'15/03/2023');

select Customers.CustomerName, Orders.OrderID, Orders.OrderDate 
from Orders
inner JOIN Customers ON Customers.CustomerID = Orders.CustomerID;