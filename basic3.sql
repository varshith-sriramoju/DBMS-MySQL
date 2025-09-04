create database payment;
use payment;
create table data1 (
customer_id int primary key,
customer_name varchar(50),
payment_mode varchar(50) not null,
city varchar(10));
insert into data1
(customer_id,customer_name,payment_mode,city)
values
(101,"olivia","phonepay","hyd"),
(102,"james","netbanking","ban"),
(103,"will","gpay","hyd"),
(104,"nancy","netbanking","pune"),
(105,"steve","credit","hyd"),
(106,"hopper","netbanking","che");
/*count number of id in each modes*/
select payment_mode, count(customer_id)
from data1
group by payment_mode;