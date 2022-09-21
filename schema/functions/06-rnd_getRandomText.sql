use [randomdata]
GO

create function [dbo].[rnd_getRandomText](@length int, @includeUpper bit, @includeLower bit, @includeNumber bit, @includeSpecial bit)
returns varchar(4000)
as  
begin  
	declare @data varchar(95), @result varchar(4000), @randomNumber int, @randomSetId int

	declare @dataTable table 
	(
		id int identity(1,1), 
		[value] varchar(50)
	)

	if @includeLower = 1
	begin
		insert @dataTable ([value]) values ('abcdefghijklmnopqrstuvwxyz')
	end

	if @includeNumber = 1
	begin
		insert @dataTable ([value]) values ('1234567890')
	end

	if @includeSpecial = 1
	begin
		insert @dataTable ([value]) values ('!"#$%&''()*+,-./:;<=>?@[\]^_`{|}~')
	end

	if @includeUpper = 1
	begin
		insert @dataTable ([value]) values ('ABCDEFGHIJKLMNOPQRSTUVWXYZ')
	end

	set @result = ''

	declare @max int, @counter int
	select @max = max(id) from @dataTable
	set @counter = 1

	while @counter <= @max
	begin
		select @data = [value] from @dataTable where id = @counter

		set @randomNumber = dbo.rnd_getRandomNumber(0,len(@data))
		set @result = @result + substring(@data,@randomNumber, 1)
		
		set @counter = @counter + 1
	end

	while len(@result) < @length
	begin
		set @randomSetId = dbo.rnd_getRandomNumber(1,@max)
		select @data = [value] from @dataTable where id = @randomSetId

		set @randomNumber = dbo.rnd_getRandomNumber(0,len(@data))
		select @result = @result + substring(@data, @randomNumber,1)
	end

	return @result;
end
GO
