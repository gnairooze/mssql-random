create function [dbo].[rnd_getRandomTime](@from time, @to time)  
returns time
as  
begin  
	declare @seconds bigint, @result time
	select @seconds = floor(randValue * (datediff(second, @from,@to)+1)) from rnd_vw_rand;

	select @result = dateadd(second, @seconds, @from)
	return @result;
end
GO
