/*data is information, DB is store data, SQL is speak DB,
DBMS sf tool manages/handles requests to Db through SQl
server is where DB database hosted
server-->DB1,DB2.....DBn
             |--->tables have schema called blueprint
             |--->multiple tables TB1.....TBn
                                   |-->multi R/C values data
int,char,varchar(unfixed),date time
DDl=defination create drop alter for SCHEMA
DQL=query retrive info select
DML=insert delete update for RECORDS
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
CREATE TABLE Stduents(
    StduentId INT PRIMARY KEY,
    FirstName VARCHAR(50) not null,
    Lastname VARCHAR(50) not null,
    --constraints
    age INT check(age>3),
    Gender CHAR(1) check(Gender in('m','f','M','F'))
);
INSERT into stduents VALUES
(1,"Varshith","Sriramoju",20,'M');
SELECT * FROM stduents;
SELECT count(*) FROM stduents;
