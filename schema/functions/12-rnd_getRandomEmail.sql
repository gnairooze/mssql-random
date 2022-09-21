use [randomdata]
GO

create function [dbo].[rnd_getRandomEmail]()
returns nvarchar(300)
as  
begin  
	declare @randomNumber int, @max int, @randomWord nvarchar(300)
	
	set @randomWord = ''
	select @max = max(Id) from rnd_Email

	while @randomWord = ''
	begin
		set @randomWord = ''
		set @randomNumber = dbo.rnd_getRandomNumber(1,@max)
			
		select @randomWord = [Value] from rnd_Email where Id = @randomNumber
	end

	return @randomWord;
end

GO
