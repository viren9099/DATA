create procedure viren1
as
begin
select * from viren
end

viren1
exec viren1
execute viren1


create procedure viren2
@id int
as 
begin
select * from viren where id = @id
end

alter procedure viren2
@id int
as 
begin
select name from viren where id = @id
end

viren2 7
exec viren2 7
execute viren2 7



create procedure viren3
@id int , @name varchar(15)
as 
begin
select * from viren where id = @id and name = @name
end

viren3 7 , 'viren'
exec viren3 8, 'bhautik'
execute viren3 name 'viren', id 8

sp_helptext viren3 


create proc viren4
with encryption
as
begin
select * from viren
end

sp_helptext  viren4
drop proc viren4