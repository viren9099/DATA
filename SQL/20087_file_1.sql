-- NAME : VAISHNAV VIREN
-- ID   : 20087

use [Viren.Vaishnav]

--1
create table student
(
 s_id int  primary key identity(1,1),
 s_name varchar(20) not null,
 s_subject varchar(20),
 s_mark numeric check(s_mark > 0)
)

--2
insert into student values('viren','math',60)

insert into student values('viren','science',60)

insert into student values('viren','english',70)

insert into student values('raj','math',70)

insert into student values('raj','science',40)

insert into student values('raj','english',40)

insert into student values('rahul','math',30)

insert into student values('rahul','science',30)

insert into student values('rahul','english',30)

--3

select * from student 
where s_mark between 50 and 90 and s_subject = 'science'

--4

select  *, case when s_mark >= 90 then 'A' when s_mark >=80 then 'B' when s_mark >= 70 then 'C' when s_mark >=60 then 'D' when s_mark >= 40 then 'E' when s_mark <= 35 then 'F' end from student



--5 

declare @subject varchar(30) = 'english'
declare @total int 
set @total = (select  s_subject , sum(s_mark) from student where s_subject = @subject  group by s_subject)
print(concat( @subject, 'Total' , @total))





