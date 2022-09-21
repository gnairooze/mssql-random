use [randomdata]
GO

create function [dbo].[rnd_getRandomAddress]()
returns nvarchar(300)
as  
begin  
	declare @randomNumber int, @max int, @randomWord nvarchar(300)
	
	set @randomWord = ''
	select @max = max(Id) from rnd_Address

	while @randomWord = ''
	begin
		set @randomWord = ''
		set @randomNumber = dbo.rnd_getRandomNumber(1,@max)
			
		select @randomWord = [Detail] from rnd_Address where Id = @randomNumber
	end

	return @randomWord;
end

GO
