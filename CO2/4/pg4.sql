use emp;
create table Administration (employee_salary int, development_cost int, fund_amount int, 
turn_over int,bonus int);
create table emp_details (emp_no int, emp_name varchar(20), DOB date, address 
varchar(20), doj date, mobile_no bigint, dept_no int, salary int);
insert into Administration values(20000,10000,20000,50000,3000);
insert into Administration values(30000,30000,40000,30000,2000);
insert into Administration values(50000,10000,20000,30000,1000);
insert into emp_details values(1,'Hari','2000-09-22','Lake ford','2012-09-22',9748583848,101,20000);
insert into emp_details values(2,'Sanri','1999-09-22','Stand ford','2015-09-22',9748582030,101,30000);
insert into emp_details values(3,'Zarpri','1999-09-30','Pond ford','2019-09-01',9748581020,101,50000);
select * from Administration;
select * from emp_details;
SELECT dept_no,avg(salary) as'Average salary',sum(salary) as 'Total Salary'FROM 
Emp_details GROUP BY dept_no;
SELECT sum(salary) as 'TOTAL SALARY SPEND' FROM Emp_details;
SELECT TotalFund() from Administration limit 1;
