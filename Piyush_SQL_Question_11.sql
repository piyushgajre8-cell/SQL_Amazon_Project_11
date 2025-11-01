create database Googlecompany;
use Googlecompany;
create table employees (
  emp_id int primary key,
  name varchar(100),
  salary decimal(10,2),
  manager_id int
  );
  insert into employees (emp_id,name,salary,manager_id)values
  (1,'Mark',12000,2),
  (2,'Jack',45000,2),
  (3,'Tony',8500,1),
  (4,'Bruce',24000,1),
  (5,'Charly',74000,2),
  (6,'Dom',35000,3),
  (7,'Mike',95000,3);
  select * from employees;
  with highearners as(
  select emp_id , name ,salary
  from employees
  where salary> 25000
  )
  select * from highearners;
  with avgsalary as(
  select avg(salary) as avg_salary
  from employees
  )
  select e.emp_id,e.name,e.salary
  from employees e
  join avgsalary a
  on e.salary > a.avg_salary;