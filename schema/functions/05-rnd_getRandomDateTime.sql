create function [dbo].[rnd_getRandomDateTime](@fromDate date, @toDate date, @fromTime time, @toTime time)  
returns datetime2
as  
begin  
	declare @result datetime2, @randomDate date, @randomTime time
	set @randomDate = dbo.rnd_getRandomDate(@fromDate, @toDate)
	set @randomTime = dbo.rnd_getRandomTime(@fromTime, @toTime)

	select @result = convert(varchar, @randomDate) + ' ' + convert(varchar, @randomTime)
	return @result;
end
GO
