---------->QUERIES<----------
use RestaurantManagementSystem


select * from Employees
-----Insertion Procedures

--for Customer table
create procedure InsertCustomer
@FirstName varchar(20),
@LastName varchar(20),
@ContactNumber varchar(11)
as

begin

	insert into Customers values (@FirstName,@LastName,@ContactNumber)

end

exec InsertCustomer 'Rana','Rohaan',03009447471
select * from Customers

--for Order table
create procedure InsertOrder
@Date varchar(15),
@ItemName varchar(30), 
@ItemPrice_RS int,
@ExpectedTime varchar(10),
@Status varchar(10),
@CustomerID int
as

begin

	insert into Orders values (@Date,@ItemName,@ItemPrice_RS,@ExpectedTime,@Status,@CustomerID)

end

exec InsertOrder '2/1/2020','Biscuits and gravy',170,'30 min','Dine in',10 
select * from Orders

--for Menu table
create procedure InsertMenu
@ItemName varchar(30),
@ItemStatus varchar(20),
@ItemPrice_RS int
	
as

begin

	insert into Menu values (@ItemName,@ItemStatus,@ItemPrice_RS)

end
                       
exec InsertMenu 'Coke Cola','Beverages',100

--for Bill tablle
create procedure InsertBill 
@date varchar(15), 
@ItemName varchar(30),
@ItemPrice_RS int, 
@Customer_ID int,
@Order_ID int

as 

begin

	insert into Bill values(@date,@ItemName,@ItemPrice_RS,@Customer_ID,@Order_ID)
	
end

exec InsertBill '1/1/2020','Chicken Karahi',1000,15,115
select * from Bill

--for Feedback table
create procedure InsertFeedback
@Customer_ID int,
@Good varchar(3),
@Satisfactory varchar(3),
@Remarks varchar(50) 
as

begin

	insert into Feedback values(@Customer_ID,@Good,@Satisfactory,@Remarks)
end

exec InsertFeedback 2,'Yes','No','It was Good'

--for Employees table
create procedure InsertEmployees
@FirstName varchar(20),
@LastName varchar(20),
@Gender varchar(10),
@ContactNumber varchar(11),
@JobType varchar(15),
@Salary int,
@JoiningDate date,
@City varchar(20),
@ManagerID int
	
as

begin 

	insert into Employees values(@FirstName,@LastName,@Gender,@ContactNumber,@JobType,@Salary,@JoiningDate ,@City,@ManagerID)

end

exec InsertEmployees 'Hamza','Ahsan','Male',03234609460,'Chef',30000,'1/8/2020','Lahore',2
select * from Employees

--for Manager table
create procedure Manager
@FirstName varchar(20),
@LastName varchar(20),
@Gender varchar(10),
@ContactNumber varchar(11), 
@ManagerType varchar(20), 
@Salary int, 
@JoiningDate date,
@City varchar(20)
as

begin 

	insert into Managers values(@FirstName,@LastName,@Gender,@ContactNumber,@ManagerType,@Salary,@JoiningDate ,@City)

end

exec InsertManager 'Rana','Sobaan','Male',03030009460,'Staff',30000,'1/8/2020','Gujranwala'
select * from Managers

--for Insertion in table Tables
create procedure InsertTable 
@Capacity int,
@ReservationStatus varchar(10),
@Customer_ID int,
@Waiter_ID int
as

begin

	insert into Tables values(@Capacity,@ReservationStatus,@Customer_ID,@Waiter_ID)

end

exec InsertTable 4,'empty',2,1
select * from Tables

--For updating table status
alter procedure InsertTable 
@id int,
@Capacity int
as

begin

	update Tables set Capacity=@Capacity where Table_ID=@id

end

exec InsertTable 1,2
select * from Tables


-----Report showing details of Customers against their Orders
create view View_Customer_Order
as 
select c.Customer_ID,c.FirstName,c.LastName,c.ContactNumber,o.Order_ID,o.ItemName,o.ItemPrice_RS,o.ExpectedTime,o.Status
from Customers c
inner join Orders o--common data of both tables
on o.CustomerID=c.Customer_ID
	
alter procedure Customer_Order_Report

as

begin

	select * from View_Customer_Order

end

exec Customer_Order_Report


--Report showing details of Bill Feedback
create view View_Bill_Feedback
as
select b.Bill_ID,b.date,b.ItemName,b.ItemPrice_RS,f.Feedback_ID,f.Good,f.Satisfactory,f.Remarks
from Bill b
inner join Feedback f --common data of both tables
on b.Order_ID=f.Order_ID

alter procedure BillFeedback_ReportProc

as

begin

	select * from View_Bill_Feedback order by Bill_ID Asc

end

exec BillFeedback_ReportProc

-----Proceedure to see total number of Employees working 
create procedure TotalEmployees
@count int output
as

begin

	select @count=count(Employee_iD) from Employees

end

declare @totalEmployees int

exec TotalEmployees @totalEmployees output

print('Total Number of Employees :') 
print(@totalEmployees)

select * from Employees

-----Procedure to see Maximum salaries of employees against their JobType as they dont have same salaries due to their experience count
alter procedure Employees_JobType_MaxSalary

as

begin 

	select max(Salary) as MaximumSalary,JobType from Employees group by (JobType)

end

exec Employees_JobType_MaxSalary

--Employee or Manager against particular City
alter procedure ManagerEmployees_CityProc
@Type varchar(15),
@City varchar(20)

as

begin

	if(@Type = 'Manager')
	begin
		select * from Managers where City=@City
	end
	if(@Type = 'Employees')
	begin
		select * from Employees where City=@City
	end
	
end

exec ManagerEmployees_CityProc 'Employees','Lahore'

drop procedure ManagerEmployees_CityProc

--Proceedure to see Employees against Managers as shows Managers managing employees
create procedure Employees_Managers 

as

begin 
	
	select e.Employee_ID,e.LastName as EmployeeName,e.JobType, m.Manager_ID,m.LastName as ManagerName,m.ManagerType 
	from Employees e
	inner join Managers m
	on e.ManagerID=m.Manager_ID

end

exec Employees_Managers

--creating materialized view on Menu
create view view_Menu 
with schemabinding
as
select Item_ID,ItemName,ItemStatus from dbo.Menu
--drop view view_Menu
create unique clustered index ix_Menu
on view_Menu(Item_ID)


-----Proceedure to see Complete Menu
alter procedure ViewMenu

as

begin

	select * from view_Menu order by Item_ID Asc
end

exec ViewMenu

-----Procedure to see particular menu
create procedure ViewParticularMenu
@menutype varchar(20)
as

begin

	select ItemName,ItemPrice_RS from Menu where ItemStatus = @menutype 
end

exec ViewParticularMenu 'Breakfast' --enter Breakfast,Lunch,Dinner,Dessert,Appetizer,Beverage to see particular menu


-----Procedure to check availability of tables along with capacity displayed
create procedure ViewTableReservation
@status varchar(15)
as

begin

	select Table_ID, Capacity from Tables where ReservationStatus like @status

end

exec ViewTableReservation 'Empty'--enter Occupied or empty to see tables status



--Proceedure to be used in triggers to restrict deletion of entities not required for some tables
create procedure PrintInstead

as

begin

	print('Deletion is not allowed!')

end

--Trigger applied on bill to avoid deletion of any record
create trigger Bill_PrintInseadOf 
on Bill
instead of delete
as

begin
	
	exec PrintInstead
end
delete from Bill where Bill_ID = 12
select * from Bill

--Trigger applied on Customers table to avoid deletion of any record
create trigger Customers_PrintInseadOf 
on Customers
instead of delete
as

begin
	
	exec PrintInstead
end
 
delete from Customers where Customer_ID = 12
select * from Customers

--Proceedure to see Sales against particular date
create procedure DailySales
@date varchar(15)
as

begin

	select * from Bill where date = @date
	
end

exec DailySales '5/3/2020'
	
--Trigger as insertion occurs in the Orders bill record incremeneted

select * from Bill



 --Trigger applied to automatically insert into Bill table when insertion in Orders table is performed
 drop trigger Order_Bill_forInsert
create trigger Order_Bill_forInserton 
on Orders
for insert
as

begin

	 insert into Bill(date,ItemName,ItemPrice_RS,Customer_ID,Order_ID) select date,ItemName,ItemPrice_RS,CustomerID,Order_ID from Orders where Order_ID =(select max(Order_ID) from Orders)	 --update Bill set ItemPrice_RS = (select ItemPrice_RS from Orders where Order_ID =(select max(Order_ID) from Orders))
end

insert into Orders values('10/10/2020','Yogurt Dip',100,'35 min','Dine in',5)
select * from Orders
select * from Bill

--Procedure to find total Sales tille the last record entered
alter procedure TotalSales

as

begin

	select sum(ItemPrice_RS) as TotalSales from Bill

end

exec TotalSales


--Discounts given to customers on condition
create table Discounts(Bill_ID int foreign key references Bill(Bill_ID),Discount varchar(10) not null)
drop table Discounts
select * from Discounts
truncate table Discounts
--Procedure to see discount gieven on bill 
alter procedure DiscountBill
--@disprice int,
@id int 

as

begin
	if((select ItemPrice_RS from Bill where Bill_ID=@id)>=500 and (select ItemPrice_RS from Bill where Bill_ID=@id)<1000)
	begin
	insert into Discounts values (@id,'10%')
	end
	if((select ItemPrice_RS from Bill where Bill_ID=@id)>=1000)
	begin
	insert into Discounts values (@id,'20%')
	end
end

alter trigger DisplayDiscounts
on Discounts
for insert 
as
begin
	select * from Discounts
end


select * from Discounts

exec DiscountBill 4

select * from Bill



--Delivery detail of Customer noted down
create table Delivery(Order_ID int foreign key references Orders(Order_ID),Address varchar(50),Contact varchar(11))
drop table Delivery

-----procedure to see Adress and contact details as if OrderStatus of Order Table is delivery, the details are inserted into Delivery Tables
create procedure DeliverFood
@Order_ID int,
@adress varchar(50),
@contact varchar(11)
as

begin

	if((select Status from Orders where Order_ID=@Order_ID)='Delivery')
	begin
		insert into Delivery values(@Order_ID,@adress,@contact)
	end

end

create trigger DisplayDelivery
on Delivery
for insert
as
begin

	select * from Delivery

end

select * from Orders
exec DeliverFood 122,'Askai X lahore',03004591002










---------------------------------------------------ROUGH WORK---------------------------------------------------------------------
--select * from orders
--MAX Salary
select * from Employees where Salary=(select max(Salary) from Employees)
--Second Max
select max(Salary) from Employees where Salary<(select max(Salary) from Employees)
--Third Max

select max(Salary) from Employees where Salary not in((select max(Salary) from Employees),(select max(Salary) from Employees where Salary<(select max(Salary) from Employees) ))


create procedure VIEW_Report
as
begin 

	select * 
	from Customers 
	inner join (select ItemName,ItemPrice_RS,ExpectedTime,Status,CustomerID from Orders)O
	on Customers.Customer_ID=O.CustomerID
	inner join (select Bill_ID,Customer_ID from Bill)B
	on Customers.Customer_ID=B.Customer_ID
	inner join Feedback
	on Customers.Customer_ID=Feedback.Customer_ID
end
exec VIEW_Report

create view VIEW_Report

as

begin

	select c.*,o.Date,o.ItemName,o.ItemName,b.Bill_ID,f.Feedback_ID,f.Good,f.Satisfactory,f.Remarks from Customers c,Orders o,Bill b,Feedback f
	where c.Customer_ID=o.CustomerID and o.ItemName= b.ItemName and c.Customer_ID= f.Customer_ID order by Customer_ID asc

create View VIEW_Report
as
select c.Customer_ID,o.Order_ID,b.Bill_ID,b.date,o.ItemPrice_RS,o.ExpectedTime,o.Status from Customers c,Orders o, Bill b
where c.Customer_ID=(select o.CustomerID from Orders) 

select * Feedback

on Customers.Customer_ID=Feedback.Customer_ID

select * from Customers where 

 select * from Orders
--select * from employees where salary <=20000





select DISTINCT *
from Customers c
inner join Orders o--(select ItemName,ItemPrice_RS,ExpectedTime,Status,CustomerID from Orders)O
on c.Customer_ID=O.CustomerID

select * 
from customers
where customer_id in
(select customer_id
from orders) temp

select * from Customers
select * from Orders
inner join (select Bill_ID,Customer_ID from Bill)b
on o.CustomerID=b.Customer_ID
inner join Feedback
on b.Customer_ID=Feedback.Customer_ID
where Customers.Customer_ID = 1

select * from Customers, (select ItemName,ItemPrice_RS,ExpectedTime,Status,CustomerID from Orders)O 
where Customers.Customer_ID=o.CustomerID 

order by o.Customer_ID ASC

SELECT ed.emp_id, ed.emp_name , ed.emp_pf, emd.designation_name, te.pfacc1, te.pfacc2, temp. pf_percent, temp.pf_max
FROM dbo.emp_details AS ed
LEFT JOIN dbo.emp_designation AS emd ON emd.designation_id = ed.emp_designation 
LEFT JOIN dbo.tbl_empcontribution AS te ON te.eid = ed.emp_id
LEFT JOIN dbo.tbl_empdeduction AS temp ON temp.eid = ed.emp_id