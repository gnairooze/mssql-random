create function [dbo].[rnd_getRandomPhoneNo](@Prefix varchar(3), @PhoneNoLength int)
returns varchar(100)
as  
begin  
	declare @result varchar(15), @randomNumber int, @counter int
		
	set @result = @Prefix

	set @counter = 1

	while @counter <= @PhoneNoLength
	begin
		set @randomNumber = dbo.rnd_getRandomNumber(0,9)
		
		set @result = @result + convert(varchar,@randomNumber)
		
		set @counter = @counter + 1
	end

	return @result;
end

GO
