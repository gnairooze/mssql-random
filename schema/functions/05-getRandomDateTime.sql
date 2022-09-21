use [randomdata]
GO

create function [dbo].[getRandomDateTime](@fromDate date, @toDate date, @fromTime time, @toTime time)  
returns datetime2
as  
begin  
	declare @result datetime2, @randomDate date, @randomTime time
	set @randomDate = dbo.getRandomDate(@fromDate, @toDate)
	set @randomTime = dbo.getRandomTime(@fromTime, @toTime)

	select @result = convert(varchar, @randomDate) + ' ' + convert(varchar, @randomTime)
	return @result;
end
GO
