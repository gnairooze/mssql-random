use [randomdata]
GO

create function [dbo].[getRandomTime](@from time, @to time)  
returns time
as  
begin  
	declare @seconds bigint, @result time
	select @seconds = floor(randValue * (datediff(second, @from,@to)+1)) from vw_rand;

	select @result = dateadd(second, @seconds, @from)
	return @result;
end
GO
