create table employee(
emp_id int,
email varchar(50),
location varchar(50))


create table manager(
id int,
name varchar(50),
salary int,
bonus int,
manager_id int)


insert into employee
values
(100, 'John@gmail.com', 'US'),
(101, 'Drerk@gmail.com', 'US'),
(102, 'Allen@gmail.com', 'UK'),
(103, 'Jack@gmail.com', 'USA'),
(104, 'Rocky@gmail.com', 'USA'),
(105, 'Vicky@gmail.com', 'UK')




select * from employee
where location = 'us'

select * from employee
where location in ('us','uk')




insert into manager
values
(100, 'John', 20000, 2000, 103),
(101, 'Drerk', 60000, 2000, 103),
(102, 'Allen', 50000, 3000, 200),
(103, 'Jack', 25000, 8000, 102),
(110, 'Brock', 30000, 5000, 103),
(111, 'Marry', 35000, 5000, 103)


select * from manager

delete from manager


select * from employee

select * from manager

select e.emp_id, e.email, e.location, m.salary
from employee as e
left join manager as m
on e.emp_id = m.id

--find email id and bonus of all employee table

select e.email, m.bonus
from employee as e
left join manager as m
on e.emp_id = m.id

--find email id ,location , manager id & salary of employee table

select e.email, e.location, manager_id ,m.salary 
from employee as e
left join manager as m
on e.emp_id = m.id


/* join in sql
use to join rows/data from two or more tables based on a related columns 

types of join
1. left join:Returns all rows from the left table, plus matched rows from the right table. Unmatched rows from the right are NULL.
2.right join:Returns all rows from the right table, plus matched rows from the left table. Unmatched rows from the left are NULL.
3.inner join:it will return the rows that are common in both table
4.outer join:Returns all rows when there is a match in either table. Unmatched rows are filled with NULLs
5.cross join:Returns the Cartesian product (all combinations of rows).
6. self join:A table joined with itself.
*/

select e.email, m.bonus
from employee as e
full join manager as m
on e.emp_id = m.id


select * 
into employee2
from employee

--union it will combine data from more than one tables
--it will remove duplicate rows from tables
--for union the no. of columns and their data type should be uses 

select * from employee
union 
select * from employee2

-- it will not remove duplicates rows from table

select * from employee
union all
select * from employee2

select * from employee
intersect 
select * from employee2


select emp_id from employee
intersect
select id from manager

select e.emp_id, m.bonus 
from employee as e
join manager as m
on e.emp_id=m.id


--cross join it will return the cartesian product of all rows
--present in both tables

select e.emp_id , m.bonus
from employee as e
cross join manager m
order by e.emp_id
