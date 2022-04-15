declare @name varchar(15) , @age int = 20
set @name = 'vaishnavviren'
select @name = 'virenvaishnav' , @age = 18
print(@name) print(@age)
select @name , @age


declare @num int = 10
set @num += 10
select @num
print(@num)

declare @name varchar(50) , @salary decimal(7,2)
select @name = e_name , @salary = e_salary from emp
select @name , @salary

 

select * from emp


select DATEPART(yyyy,soh.DueDate) as [Calendar year],st.[group] as [sales territory group],cr.Name as [Sales Territory Country],cr.Name as [Sales Territory Region],sum(soh.TotalDue) as [Sales Amount]
from Sales.SalesOrderHeader as soh
join sales.SalesTerritory as st on soh.TerritoryID=st.TerritoryID
join sales.SalesOrderDetail as sod on soh.SalesOrderID=sod.SalesOrderID
join Production.ProductCostHistory as pch on sod.ProductID=pch.ProductID
join Person.CountryRegion as cr on st.countryRegioncode=cr.CountryRegionCode
where (DATEPART(yyyy,soh.DueDate) in (2011))
group by DATEPART(yyyy,soh.DueDate),st.[group],cr.name
order by [calendar year]


