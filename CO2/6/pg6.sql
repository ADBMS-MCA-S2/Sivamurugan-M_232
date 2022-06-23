create database covid;
use covid;
create table person(pid int,pname varchar(20),dob date,vaccine varchar(20),novaccne int,primary key(pid));
insert into person values(1,"siva","2000-09-13","covishield",2);
insert into person values(2,"clint","1999-09-13","covishield",1);
insert into person values(3,"lekshmi","1999-09-13","covishield",0);
select * from person;
SELECT pid,pname,travel(novaccne) FROM person;
