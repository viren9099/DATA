use [Viren.Vaishnav]

--1
create table customers
(
 c_id int identity(1,1),
 c_firstname varchar(30) not null,
 c_middlename varchar(30) not null,
 c_lastname varchar(30) not null,
 c_gender varchar(7),
 c_doj date,
 c_salary numeric(7),
 department varchar(30) 


 )


 --2
 insert into customers values('amit','sumit','patel','male','2019/12/24',15000,'banking')
 
 insert into customers values('saurabh','jagdishbhai','soni','male','2015/07/14',7500,'insurance')
 
 insert into customers values('mitesh','niranjanbhai','joshi','male','2015/09/27',455000,'banking')
 
 insert into customers values('aakansha','bhogilal','mehta','female','2017/02/11',10500,'services')
 
 insert into customers values('rehnuma','ibrahim','vora','female','2018/02/12',5000,'banking')
 
 
 insert into customers values('parin','anilbhai','patel','male','2019/12/24',6500,'banking')
 
 insert into customers values('kiran','vitthalbhai','prajapati','female','2019/12/24',15000,'banking')
 
 insert into customers values('kiran','tusharkumar','shukla','male','2013/09/09',35000,'insurance')
 
 insert into customers values('jyoti','sumit','patel','female','2013/04/05',34500,'services')
 
 insert into customers values('sanskriti','jivanlal','joshi','female','2012/12/12',28000,'banking')

 select * from customers



 --3

select c_firstname ,  c_middlename , c_lastname ,department, C_salary from customers where   department = 'insurance'


--4

select c_middlename from  customers where  c_middlename 

--5

select month(2019/02/07)



--6

select department , sum(c_salary) from customers group by department 

--7 

update customers set department = 'sales' where c_firstname = 'jyoti'

--8

--9

alter table customers
add c_contacts varchar(10) 


--10

