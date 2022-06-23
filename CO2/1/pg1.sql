create database t1;
use t1;
create table t1 (a int,b char(10));
call insert1(1,"new");
truncate t1;
select * from t1;
