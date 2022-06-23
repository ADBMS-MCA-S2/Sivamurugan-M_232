create database emp;
use emp;
create table employee(emp_id INT,salary FLOAT);
insert into employee values(1,20000);
insert into employee values(110,10000);
select emp_id,incent(emp_id),salary from employee;
