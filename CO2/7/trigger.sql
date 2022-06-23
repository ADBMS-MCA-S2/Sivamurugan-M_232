CREATE DEFINER=`root`@`localhost` TRIGGER `employee`.`new_employee_AFTER_INSERT` AFTER INSERT ON `new_employee` FOR EACH ROW
BEGIN
if(new.department='mca')then
insert into department_MCA set 
deptid=new.empid,deptname=new.empname;
end if;
if(new.department='cs')then
insert into department_CS set 
deptid=new.empid,deptname=new.empname;
end if;
END
