use [randomdata]
GO

create function [dbo].[getRandomNumber](@from int, @to int)  
returns int  
as  
begin  
	declare @result int
	select @result = @from + floor(randValue * (@to + 1 - @from)) from vw_rand;
	return @result;
end
GO
