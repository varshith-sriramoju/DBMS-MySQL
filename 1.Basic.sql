/*data is information, DB is store data, SQL is speak DB,
DBMS sf tool manages/handles requests to Db through SQl
server is where DB database hosted
server-->DB1,DB2.....DBn
             |--->tables have schema called blueprint
             |--->multiple tables TB1.....TBn
                                   |-->multi R/C values data
int,char,varchar(unfixed),date time
DDl=defination create,drop,alter(modify table) for SCHEMA
DQL=query retrive info select
DML=insert(modify data),delete,update for RECORDS
*/

/*MySQL
connections as Drives DB as folder Tables as Files
connections>databases>tables>data
connections like main entrace of project-to get inside
databases are like diff sections-one for customer,products,order info
tables are the data according to the database
we can also have multiple connections for site,support,mobile app etc
within Mysql each part of bussiness separate and organized
*/

CREATE DATABASE learning;
--rows called records and coloumns called fields col gives str to tables
/*char() fixed varchar() choose nvarchar()unicode
if space know use char
*/
USE learning;
--schema or blueprint for table
--int,float,bit(0,1),char,varchar
CREATE TABLE Stduents(
    StduentId INT PRIMARY KEY,
    FirstName VARCHAR(50) not null,
    Lastname VARCHAR(50) not null,
    /*contraints*/
    age INT check(age>3),
    Gender CHAR(1) check(Gender in('m','f','M','F'))
);
INSERT into stduents VALUES
(1,"Varshith","Sriramoju",20,'M');
INSERT into Stduents values
(2,"varsh","sri",21,"M")
INSERT into Stduents(StduentId,FirstName,Lastname,age,Gender)
values(3,"varsh","sri",21,"M");
INSERT into Stduents(StduentId,FirstName,Lastname,age,Gender)
values(4,"varsh","sri",21,"M");
SELECT * FROM stduents;
SELECT count(*) FROM stduents;

--add col to table
ALTER TABLE Stduents
add Email varchar(100);
--to change DataType
ALTER TABLE Stduents
MODIFY COLUMN Email NVARCHAR(100);
--alter for modifying
ALTER TABLE Stduents
DROP COLUMN Email;

CREATE TABLE Teachers(
    TeacherId INT PRIMARY KEY,
    FirstName VARCHAR(50) not null,
    Lastname VARCHAR(50) not null,
    subject varchar(60)
);
insert into Teachers(TeacherId,FirstName,Lastname,subject) values(1,'x','y','OS');
insert into Teachers(TeacherId,FirstName,Lastname,subject) values(2,'a','b','DBMS');
SELECT * FROM Teachers;

CREATE TABLE Classes(
    classID int PRIMARY KEY,
    Classname varchar(50),
    TeacherId int,
    foreign KEY (TeacherId) References Teachers(TeacherId)
)
insert into Classes values(1,'sync',1)
insert into Classes values(2,'deadlock','1')
select * FROM Classes;

/*update where orderby distinct counts as(alias)*/
UPDATE stduents
set age=10
WHERE StduentId=1
select age,FirstName from stduents
where age>=10 order by age desc;
/*asc for acending*/
SELECT DISTINCT FirstName FROM stduents;
SELECT count(*) as Totalstudents FROM stduents;
/* min max sum */