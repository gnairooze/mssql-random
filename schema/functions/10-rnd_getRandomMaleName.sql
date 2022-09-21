create function [dbo].[rnd_getRandomMaleName]()
returns nvarchar(300)
as  
begin  
	declare @randomNumber int, @max int, @randomWord nvarchar(300)
	
	set @randomWord = ''
	select @max = max(Id) from rnd_MaleName

	while @randomWord = ''
	begin
		set @randomWord = ''
		set @randomNumber = dbo.rnd_getRandomNumber(1,@max)
			
		select @randomWord = [Name] from rnd_MaleName where Id = @randomNumber
	end

	return @randomWord;
end

GO
