# mssql-random

Generate random data in mssql

## Features

It generates random:

1. integer
2. float
3. date
4. time
5. datetime2
6. text varchar(4000)
7. word
8. full name
9. female name
10. male name
11. address
12. email
13. phone number

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

--[dbo].[rnd_getRandomPhoneNo](@Prefix varchar(3), @PhoneNoLength int) returns varchar(100)
select result = [dbo].[rnd_getRandomPhoneNo]('012', 8)
```

## Uninstall

Run the [uninstall-random.sql](uninstall-random.sql) SQL script to remove SQL tables, view, scalar functions.
