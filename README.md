# mssql-random

Generate random data in mssql

## Features

It generates:

1. Random integer
2. Random float
3. Random date
4. Random time
5. Random datetime2
6. Random text varchar(4000)
7. Random word
8. Random full name
9. Random female name
10. Random male name
11. Random Address
12. Random email

## Install

After cloning the repository, use [install-random.ps1](install-random.ps1) powershell script to create SQL tables, view, scalar functions on SQL database and fill the tables with the needed data. Change the variables $connectionString and $rootPath to suit your environment.

## Examples

```sql
--[dbo].[rnd_getRandomNumber](@from int, @to int) returns int
select result = [dbo].[rnd_getRandomNumber](1,10)

--[dbo].[rnd_getRandomDecimal](@from float, @to float) returns float
select result = [dbo].[rnd_getRandomDecimal](3.5,5.5)

--[dbo].[rnd_getRandomDate](@from date, @to date) returns date
select result = [dbo].[rnd_getRandomDate]('2022-03-10','2022-08-27')

--[dbo].[rnd_getRandomTime](@from time, @to time) returns time
select result = [dbo].[rnd_getRandomTime]('08:00','17:00')

--[dbo].[rnd_getRandomDateTime](@fromDate date, @toDate date, @fromTime time, @toTime time) returns datetime2
select result = [dbo].[rnd_getRandomDateTime]('2022-03-10','2022-08-27','08:00','17:00')

--[dbo].[rnd_getRandomText](@length int, @includeUpper bit, @includeLower bit, @includeNumber bit, @includeSpecial bit) returns varchar(4000)
select result = [dbo].[rnd_getRandomText](10,1,1,1,1)

--[dbo].[rnd_getRandomWord](@WordCount int) returns nvarchar(max)
select result = [dbo].[rnd_getRandomWord](5)

--[dbo].[rnd_getRandomFemaleName]() returns nvarchar(300)
select result = [dbo].[rnd_getRandomFemaleName]()

--[dbo].[rnd_getRandomFullName]() returns nvarchar(300)
select result = [dbo].[rnd_getRandomFullName]()

--[dbo].[rnd_getRandomMaleName]() returns nvarchar(300)
select result = [dbo].[rnd_getRandomMaleName]()

--[dbo].[rnd_getRandomAddress]() returns nvarchar(300)
select result = [dbo].[rnd_getRandomAddress]()

--[dbo].[rnd_getRandomEmail]() returns nvarchar(300)
select result = [dbo].[rnd_getRandomEmail]()
```

## Uninstall

Run the [uninstall-random.sql](uninstall-random.sql) SQL script to remove SQL tables, view, scalar functions.
