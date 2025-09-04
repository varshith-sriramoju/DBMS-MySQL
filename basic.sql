create database Learning;
use Learning;
create table student (
id int primary key,
name varchar(50),
fee float not null);
insert into student 
(id,name,fee)
values
(1,"varsha",25000),
(2,"varshi",25300);
select * from student;
drop database Learning;
show databases;
show tables;