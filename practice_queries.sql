create database 7hills;
use 7hills;
create table Employee(EMP_ID int primary key,first_Name varchar(255),Last_Name varchar(255),salary int,Joining_date date,department varchar(255));
insert into Employee values(1,"venkateshnan","s",10000,"2015-08-28","Banking");
insert into Employee values(2,"ragavi","p",75000,"2015-08-28","Business");
insert into Employee values(3,"Gopinath","C",50000,"2016-03-02","Pharma");
insert into Employee values(4,"dinesh","G",50000,"2016-03-02","Insurance");
insert into Employee values(5,"Saibabu","E",40000,"2017-07-08","software");
insert into Employee values(6,"Hasan","S",29000,"2017-07-08","Manufacturing");
insert into Employee values(7,"Divya","P",33000,"2017-07-08","HealthCare");
insert into Employee values(8,"Arivindan","R",40000,"20217-08-07","HealthCare");
insert into Employee values(9,"satish","MD",45000,"2016-03-02","Automobile");
insert into Employee values(10,"Prashanth","PKP",34000,"2016-03-02","Insurance");
insert into Employee values(11,"Vijay","R",25684,"2016-03-02","Business");
insert into Employee values(12,"sivakumar","K",54789,"2016-03-02","Software");
Select * from Employee;
select first_Name,Last_Name 
from Employee;
-- 3. Get First_Name from employee table using alias name “Employee Name”
select first_Name as "Employee Name"
from Employee;
-- 4. Get First_Name from employee table in upper case
select Upper(first_Name)
from Employee; 
-- 5. Get First_Name from employee table in lower case
select Lower(first_name)
from Employee;
-- 6. Get unique DEPARTMENT from employee table
select (department)
from Employee;
-- 7. Select first 3 characters of FIRST_NAME from EMPLOYEE
select subString(first_name,1,3)
from Employee;
-- 8. Get position of 'a' in name 'ragavi' from employee table
select position('a' in 'ragavi');
-- 9. Get FIRST_NAME from employee table after removing white spaces from right side
select rtrim (first_Name)
from Employee;
-- 10. Get FIRST_NAME from employee table after removing white spaces from left side
select ltrim (first_Name)
from Employee;
-- 11. Get length of FIRST_NAME from employee table
select length(first_Name)
from Employee;
-- 12. Get First_Name from employee table after replacing 'a' with '$'
select replace (first_Name,'a','$')
from Employee;
-- 13. Get First_Name and Last_Name as single column from employee table separated by a '_'
select concat (first_Name,' ',Last_name)
from Employee;
-- 14. Get FIRST_NAME ,Joining year,Joining Month and Joining Date from employee table
select concat (first_Name,' ',Joining_date)
from Employee;
-- 15 get all employee details from the employee table order by firstname in ascending
select *
from Employee order by first_Name asc;
-- 16 get all employee detail from the employee table order by firstname in descending order
select *
from Employee order by first_Name desc;
-- 17 get all employee details from the employe table order by firstnumber
select*
from Employee order by first_Name asc,salary desc;
-- 18 get the details from employee table whose employee name is dinesh
select *
from Employee 
where first_Name='dinesh';
-- get employee details from employee table whose name are not dinesh and roy
select*
from Employee where not first_Name='dinseh' and not first_Name='ragavi';
select *
from Employee where first_Name='dinesh' or first_Name='Hasan';