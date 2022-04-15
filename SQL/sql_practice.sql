select * from dbo.viren

create table viren
(
 id int identity(1,1) primary key,
 name varchar(20)
)




set identity_insert viren on
insert into viren(name,salary) values('viren',105000),('viren',100000),('viren',99500)
set identity_insert viren off





select * into viren_duplicate from viren

select * from viren_duplicate

select * from viren where name != 'viren'

select * from viren where name in('viren','bhautik')

select * from viren where name not in('viren','bhautik')


create table department(
dept_id int identity(1,1) primary key,
dept_name varchar(20)
)


create table emp(
e_id int identity(1,1) primary key,
e_name varchar(20),
e_salary numeric(5) check(e_salary>=20000),
d_id int foreign key references department(dept_id)
)

insert into department(dept_name) values('IT'),('SALES'),('MARKETING'),('ACCOUNTING')
select * from department
select * from emp

insert into emp values('viren',20000,1)
insert into emp values('gaurav',30000,2),('bhautik',25000,3),('rajesh',35000,4),('ram',22000,1)
select * from emp

select e.e_id,d.dept_id,e.e_name,e.e_salary,d.dept_name from emp e
inner join department d
on e.e_id=d.dept_id

select e.e_id,d.dept_id,e.e_name,e.e_salary,d.dept_name from emp e
full join department d
on e.e_id=d.dept_id

select e.e_id,d.dept_id,e.e_name,e.e_salary,d.dept_name from emp e
left join department d
on e.e_id=d.dept_id

select e.e_id,d.dept_id,e.e_name,e.e_salary,d.dept_name from emp e
right join department d
on e.e_id=d.dept_id

select *,'hello' a from emp

declare @viren varchar(20) = 'viren'
print @viren

declare @viren varchar(20)
set @viren = 'vaishnav'
print @viren

declare @viren varchar(20)
select @viren = 'vaishnav'
print @viren



declare @name varchar(10) = 'hi'
print @name
set @name = @name + 'hello'
print @name

declare @val int = -1
if @val < 0
	print 'nag'
else
	print 'pos'

declare @val int = 1
if @val < 0
begin
	print 'nag'
end
else if @val > 1
begin
	print 'pos'
end
else if @val is null
begin
	print 'non'
end
else
begin
	print 'zero'
end

declare @c1 int = 1 , @c2 int = 2
while @c1 <= @c2
begin
	print @c1
set @c1 += 1
end

select * from viren

alter table viren
add salary numeric(6)

truncate table viren


select name, max(salary) as second_highest_salary from viren
where salary < 105000
group by name


select name, max(salary) as second_highest_salary from viren
where salary < (select max(salary) from viren)
group by name

declare @num int = 5 , @i int = 1 , @j int = 10
while @j!=0
begin
	print @n
end


create table #vv
(
	id int,
	name varchar(20)
)

insert into #vv values(1,'viren'),(2,'gaurav'),(3,'bhautik')


create table ##vv
(
	id int,
	name varchar(20)
)

insert into ##vv values(1,'viren'),(2,'gaurav'),(3,'bhautik')

with vv
as
(select *,salary+100 sal from viren)

select * from vv



