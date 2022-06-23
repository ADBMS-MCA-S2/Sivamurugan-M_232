create database MovieDatabase;
use MovieDatabase;
create table ACTOR (Act_id int primary key, Act_Name varchar(20), Act_Gender varchar(10));
create table DIRECTOR (Dir_id int primary key, Dir_Name varchar(20), Dir_Phone bigint(10));
create table MOVIES (Mov_id int primary key, Mov_Title varchar(20), Mov_Year int(9), Mov_Lang varchar(10), Dir_id int,foreign key(Dir_id) references DIRECTOR(Dir_id) on delete cascade);  
create table MOVIE_CAST (Act_id int, Mov_id int, Role varchar(20),foreign key(Act_id)references ACTOR(Act_id) on delete cascade,foreign key(Mov_id)references MOVIES(Mov_id) on delete cascade);
create table RATING (Mov_id int, Rev_Stars int,foreign key(Mov_id)references MOVIES(Mov_id) on delete cascade);
insert into ACTOR values(100,'Virginia Valli','Female');
insert into ACTOR values(101,'‎Carmelita Geraghty','Female');
insert into ACTOR values(102,'Nita Naldi','Female');
insert into ACTOR values(103,'Tom Holland','Male');
insert into ACTOR values(104,'Tobey Maguire','Male');
insert into ACTOR values(105,'Sam Neill','Male');
insert into DIRECTOR values(100,'Steven Spielberg',8945444464);
insert into DIRECTOR values(101,'Hitchcock',8455664446);
insert into DIRECTOR values(102,'Sam Raimi',4545133236);
insert into DIRECTOR values(103,'Jon Watts',8454456446);
insert into MOVIES values(100,'The Pleasure Garden',1925,'English',101);
insert into MOVIES values(101,'The Mountain Eagle',1926,'English',101);
insert into MOVIES values(102,'Spiderman',2003,'English',102);
insert into MOVIES values(103,'No Way Home',2022,'English',103);
insert into MOVIES values(104,'Jurassic Park',1993,'English',100);
insert into MOVIE_CAST values(105,104,'Alan Grant');
insert into MOVIE_CAST values(103,103,'Peter Parker1');
insert into MOVIE_CAST values(104,103,'Peter Parker1');
insert into MOVIE_CAST values(104,102,'hi Man');
insert into MOVIE_CAST values(100,100,'Patsy Brand');
insert into MOVIE_CAST values(101,100,'Jill Cheyne');
insert into MOVIE_CAST values(102,101,'Beatrice');
insert into MOVIE_CAST values(104,102,'Peter Parker');
insert into RATING values(100,3);
insert into RATING values(101,2);
insert into RATING values(102,4);
insert into RATING values(103,5);
insert into RATING values(104,5);
select Mov_Title from MOVIES join DIRECTOR where MOVIES.Dir_id=DIRECTOR.Dir_id and Dir_name='Hitchcock';
SELECT M.Mov_title FROM MOVIES M JOIN MOVIE_CAST MC ON M.Mov_id=MC.Mov_id WHERE MC.Mov_id in (	SELECT M.Mov_id  FROM MOVIES M JOIN MOVIE_CAST MC ON M.Mov_id=MC.Mov_id 
	 	 	GROUP BY M.Mov_id  
	 	 	HAVING COUNT(MC.Act_id)>1) 
	 	GROUP BY MC.Act_id  
	 	HAVING COUNT(MC.Mov_id)>1; 

SELECT DISTINCT a.act_name 
FROM actor a JOIN movie_cast mc 
ON a.act_id=mc.act_id 
JOIN movies m 
ON m.mov_id=mc.mov_id
WHERE
CAST(m.mov_year AS Decimal) < 2000 or
CAST(m.mov_year AS Decimal) > 2015;

SELECT m.mov_title,max(r.Rev_stars) 'Top Stars' 
FROM rating r JOIN movies m 
ON r.mov_id=m.mov_id 
WHERE r.rev_stars>0 
GROUP BY m.mov_title 
ORDER BY m.mov_title ;
SET SQL_SAFE_UPDATES = 0;
UPDATE rating 
SET rev_stars=5
WHERE mov_id IN (
SELECT m.mov_id
FROM movies m JOIN director d 
ON m.dir_id=d.dir_id
WHERE d.dir_name="steven spielberg");
