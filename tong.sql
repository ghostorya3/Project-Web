create procedure tinhtong @soA int,
					@soB int,@tong int output
as
	select @tong = @soA + @soB
declare @sum int
exec tinhtong @soA = '5',@soB = '6',@tong = @sum output
print 'tong 2 so la :' + convert (varchar(3),@sum)
go			
drop proc tinhtong

create function Tong(@soA int,@soB int)
returns int
as 
begin
	declare @sum int
	select @sum = @soA + @soB
	return @sum
end
select dbo.Tong(1,2)


drop function Tong