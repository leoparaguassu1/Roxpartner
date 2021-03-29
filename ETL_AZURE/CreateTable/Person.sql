SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[index] [int] NULL,
	[BusinessEntityID] [varchar](100) NULL,
	[PersonType] [varchar](100) NULL,
	[NameStyle] [varchar](100) NULL,
	[Title] [varchar](100) NULL,
	[FirstName] [varchar](100) NULL,
	[MiddleName] [varchar](100) NULL,
	[LastName] [varchar](100) NULL,
	[Suffix] [varchar](100) NULL,
	[EmailPromotion] [varchar](max) NULL,
	[AdditionalContactInfo] [varchar](max) NULL,
	[Demographics] [varchar](100) NULL,
	[rowguid] [varchar](100) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
