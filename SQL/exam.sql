select * from emp

select * from department

insert into emp values('rajan',20000,2),('rajesh',35000,4)

1___________
SELECT e_name,e_salary FROM emp  WHERE e_salary IN (
    SELECT e_salary
    FROM emp
    GROUP BY e_salary
    HAVING COUNT(*) > 1
)


select e_salary from (select top  5 e_salary  from emp 
group by e_salary
order by e_salary  desc ) as e order by e_salary


2_____________
select min(e_salary) from (select top 5 e_salary  from emp 
group by e_salary
order by e_salary  desc ) as e 

2___________
select top 1 * from (select top 5 * from emp order by e_salary desc) as a 


4________________
declare @a int
set @a = (select avg(e_salary) from emp where d_id = 2)
print @a
select * from emp where e_salary > @a and d_id = 2


5______________




7________________
select avg(e_salary) from emp group by e_salary

