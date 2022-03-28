---------DDL,DML,DQL---------

create table Customer
(
CId int identity(1,1) primary key,-----auto increament
CName varchar(50) not null,
CAddress varchar(50)not null,
);

select * from Customer

insert into Customer values('Mrunali','Mumbai'),
						('Shweta','Pune'),
						('Rutuja','Nagpur'),
						('Sanika','Mumbai'),
						('Joystna','Nashik'),
						('Vijaya','Pune'),
						('Nupur','Nagpur'),
						('Shalini','Nashik'),
						('Pooja','Solapur'),
						('Ketaki','Mumbai'),
						('Joyti','Solapur'),
						('Vinaya','Pune');

----delete---

delete from Customer where CId=8; 

----ADD Column----
alter table Customer
add CAge int

----DROP-----
alter table Customer
drop column CAge;

---Truncate---
alter table Customer
add CAge1 int

--alter table Customer
--truncate column CAge

---UPDate---
update Customer set CAge1=34 where CId=1
update Customer set CAge1=21 where CId=2
update Customer set CAge1=54 where CId=3
update Customer set CAge1=86 where CId=4

update Customer set CName='Anjali' where CId=12
update Customer set CAddress='Chennai' where CId=10


---Add Column---

--insert into Customer value--

---Rename---
--EXEC sp_rename [@CName=] 'CustomerName',

---SELECT---
select * from Customer where CAddress like 'm%';
select * from Customer where CAddress like '%e';
Select * from Customer where CAddress like '%n%';
select * from Customer where CAddress like '[a-z]%';
select * from Customer where CId like '[1-100]%';

---In Operator---
select * from Customer where CAddress in ('Pune','Mumbai');

--NULL and NOT NUll---
select * from Customer where CAge1 is null;
select * from Customer where CAge1 is not null;

--ORDER BY---
select * from Customer order by CName desc;---in descending
select * from Customer order by CName;--------in ascending
select * from Customer order by CId desc;
select * from Customer order by CId;

---DEFAULT Operator--
alter table Customer
add constraint df_CAddress
default 'Pune' for CAddress;









