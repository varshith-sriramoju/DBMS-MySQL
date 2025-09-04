create database college;
use college;
create table student (
rollnum int primary key,
name varchar(50),
marks int not null,
grade varchar(1),
city varchar(10)
);
insert into student 
(rollnum,name,marks,grade,city)
values
(1,"varshi",100,"A","knr"),
(2,"varshi",100,"A","knr"),
(3,"varshi",100,"A","knr");
select name from student;
select * from student;
