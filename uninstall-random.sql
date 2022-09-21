DROP FUNCTION [dbo].[rnd_getRandomEmail]
GO

DROP FUNCTION [dbo].[rnd_getRandomAddress]
GO

DROP FUNCTION [dbo].[rnd_getRandomMaleName]
GO

DROP FUNCTION [dbo].[rnd_getRandomFullName]
GO

DROP FUNCTION [dbo].[rnd_getRandomFemaleName]
GO

DROP FUNCTION [dbo].[rnd_getRandomWord]
GO

DROP FUNCTION [dbo].[rnd_getRandomText]
GO

DROP FUNCTION [dbo].[rnd_getRandomDateTime]
GO

DROP FUNCTION [dbo].[rnd_getRandomTime]
GO

DROP FUNCTION [dbo].[rnd_getRandomDate]
GO

DROP FUNCTION [dbo].[rnd_getRandomDecimal]
GO

DROP FUNCTION [dbo].[rnd_getRandomNumber]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rnd_Email]') AND type in (N'U'))
DROP TABLE [dbo].[rnd_Email]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rnd_Word]') AND type in (N'U'))
DROP TABLE [dbo].[rnd_Word]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rnd_MaleName]') AND type in (N'U'))
DROP TABLE [dbo].[rnd_MaleName]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rnd_FullName]') AND type in (N'U'))
DROP TABLE [dbo].[rnd_FullName]
GO

IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rnd_FemaleName]') AND type in (N'U'))
DROP TABLE [dbo].[rnd_FemaleName]
GO


IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[rnd_Address]') AND type in (N'U'))
DROP TABLE [dbo].[rnd_Address]
GO

DROP VIEW [dbo].[rnd_vw_rand]
GO
