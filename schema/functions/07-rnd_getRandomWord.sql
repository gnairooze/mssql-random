use [randomdata]
GO

create function [dbo].[rnd_getRandomWord](@WordCount int)
returns nvarchar(max)
as  
begin  
	declare @result nvarchar(max), @randomNumber int, @counter int, @max int, @randomWord nvarchar(100)
		
	set @result = ''
	set @randomWord = ''
	select @max = max(Id) from rnd_Word
	set @counter = 1

	while @counter <= @WordCount
	begin
		set @randomWord = ''

		while @randomWord = ''
		begin
			set @randomWord = ''
			set @randomNumber = dbo.rnd_getRandomNumber(1,@max)
			
			select @randomWord = [value] from rnd_Word where Id = @randomNumber
		end
		
		set @result = @result +  ' ' + @randomWord
		
		set @counter = @counter + 1
	end

	return @result;
end
GO
