use [randomdata]
GO

create function [dbo].[getRandomDate](@from date, @to date)  
returns date
as  
begin  
	declare @days int, @result date
	select @days = floor(randValue * (datediff(day, @from,@to)+1)) from vw_rand;

	select @result = dateadd(day, @days, @from)
	return @result;
end
GO
