use [randomdata]
GO

create function [dbo].[getRandomDecimal](@from float, @to float)  
returns float
as  
begin  
	if @to - @from < 1
	begin
		return -1
	end

	declare @result float
	select @result = @from + (randValue * (@to - @from)) from vw_rand;
	return @result;
end
GO
