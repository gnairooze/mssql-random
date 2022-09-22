create function [dbo].[rnd_getRandomEgyptID](@from date, @to date, @IsMale bit)
returns varchar(60)
as  
begin  
	declare @result varchar(15), @randomDate date, @century int, @governerate int, @odd varchar(5), @even varchar(4)
	set @odd = '13579'
	set @even = '2468'

	set @randomDate = dbo.rnd_getRandomDate(@from, @to)

	if (year(@randomDate) >= 1900 and year(@randomDate) <=1999)
	begin
		set @century = 2
	end
	else if (year(@randomDate) >= 2000 and year(@randomDate) <=2099)
	begin
		set @century = 3
	end
	else
	begin
		set @result = 'invalid date. data range should be from 1900 to 2099'
	end

	set @governerate = dbo.rnd_getRandomNumber(1, 26)

	set @result = convert(varchar, @century) 
	set @result = @result + substring(convert(varchar,year(@randomDate)),3,2)
	set @result = @result + format(month(@randomDate), '00')
	set @result = @result + format(day(@randomDate), '00')
	set @result = @result + format(@governerate, '00')
	set @result = @result + convert(varchar, dbo.rnd_getRandomNumber(0, 9))
	set @result = @result + convert(varchar, dbo.rnd_getRandomNumber(0, 9))
	set @result = @result + convert(varchar, dbo.rnd_getRandomNumber(0, 9))

	if @IsMale = 1
	begin
		set @result = @result + substring(@odd, dbo.rnd_getRandomNumber(1, len(@odd)), 1)
	end
	else
	begin
		set @result = @result + substring(@even, dbo.rnd_getRandomNumber(1, len(@even)), 1)
	end
	set @result = @result + convert(varchar, dbo.rnd_getRandomNumber(1, 9))

	return @result;
end
