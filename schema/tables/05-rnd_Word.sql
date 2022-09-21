CREATE TABLE [dbo].[rnd_Word](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[value] [varchar](100) NOT NULL,
 CONSTRAINT [PK_rnd_Word] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
