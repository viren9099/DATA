 use [Viren.Vaishnav]

create table product
(
	p_id int identity(1,1),
	p_name varchar(50),
	pqty numeric(5)
)

create table product_sell(
	ps_id int identity(1,1),
	p_id int,
	ps_qty numeric(5)
)

insert into product values('apple',5),('mango',10),('grapes',100)
select * from product

create proc sp_product
@a nvarchar(max)= null,
@b nvarchar(max)= null,
@c nvarchar(max)=null
as
begin
	set @a=(select pqty from product where p_id= @c)
	update product set pqty = cast(@a as int)-cast(@b as int) where p_id = @c
	insert into product_sell(p_id,ps_qty) values(@c,@b)
end

exec sp_product @c=2,@b=3

select * from product 
select * from  product_sell



-- --------------------------------------------------------------------------------*******************_________________________________________________________

select * from viren

alter table viren
add gender varchar(5) 

truncate table viren

insert into viren values('viren',50000,'male'),('bhautik',30000,'male'),('janvi',30000,'femal'),('drishti',20000,'femal')


select gender,max(salary) from viren  group by gender 





------------------------------------------------------------------------------------------------------------------------------------------------------------------

select * Into vv1 From viren Where 1 = 2

select * from vv1


