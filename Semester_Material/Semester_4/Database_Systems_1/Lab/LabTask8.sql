-- 1. Update 'London' to 'Lahore'

update propertyForRent set city = 'Lahore' where city = 'London'

-- 2. List of staff members who are also private owners.
select s.* from staff s join privateOwner p on s.fName = p.fName and s.lName = p.lName

select b.branchNo,b.street,b.city,b.postCode from ( select b.branchNo,count(case when sex = 'M' then 1 end) as Male_Count,
count(case when sex = 'F' then 1 end) as Female_Count from branch b join staff s on s.branchNo = b.branchNo
group by b.branchNo,b.street,b.city,b.postCode) as Info
join branch b on b.branchNo = info.branchNo group by b.branchNo,b.street,b.city,b.postCode,Info.Male_Count,Info.Female_Count
having Male_Count < Female_Count

-- 3. Detail of branch with its total salary.

select b.branchNo,b.street,b.city,b.postCode, sum(s.salary) as Total_Salary from branch b join staff s on b.branchNo = s.branchNo group by b.branchNo,b.street,b.city,b.postCode

-- 4. Name of those properties that are not handled by any staff member.

select * from propertyForRent where staffNo is null

-- 5. Is there property number that is viewed by client but not give any comment.

select * from viewing where comment is null

-- 6. Display the private owner number who is registered in system but did not have any property yet.

select * from privateOwner where ownerNo not in (select ownerNo from propertyForRent);

-- 7. Is there any client who did not view even a single property.
 select * from client where clientNo not in (select clientNo from viewing);

-- 8. Detail of staff members who are drawing more than the average salary of whole system.
select * from staff where salary > (select avg(salary) from staff)

-- 9. Can we see the top three personnel with max salary.
select top 3 * from staff order by salary desc;

-- 10. How many staff members are still not register a single property.

select count(*) as Total_Staff from staff s join Registration r on s.staffNo = r.staffNo where r.staffNo is null

-- 11. Show the details of branches where male members are more than female members.
select b.branchNo,b.street,b.city,b.postCode from ( select b.branchNo,count(case when sex = 'M' then 1 end) as Male_Count,
count(case when sex = 'F' then 1 end) as Female_Count from branch b join staff s on s.branchNo = b.branchNo
group by b.branchNo,b.street,b.city,b.postCode) as Info
join branch b on b.branchNo = info.branchNo group by b.branchNo,b.street,b.city,b.postCode,Info.Male_Count,Info.Female_Count
having Male_Count < Female_Count

-- 12. Branch details where still did not regoster a single property.
select * from branch where branchNo not in (select branchNo from registration);

-- 13. Detail of properties which are viewed more than once.
select p.propertyNo,p.street,p.city,p.postCode,p.type,p.rooms,p.rent,p.ownerNo,p.staffNo,p.branchNo,count(v.propertyNo) as total_Properties from propertyForRent p join viewing v on p.propertyNo = v.propertyNo group by
  p.propertyNo,p.street,p.city,p.postCode,p.type,p.rooms,p.rent,p.ownerNo,p.staffNo,p.branchNo having count(v.propertyNo) > 1 

-- 14. Is there any branch where only female members are working.
SELECT branchNo FROM staff GROUP BY branchNo
HAVING COUNT(DISTINCT CASE WHEN sex = 'M' THEN 1 END) = 0;

--













