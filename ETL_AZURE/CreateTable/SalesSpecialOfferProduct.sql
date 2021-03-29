SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesSpecialOfferProduct](
	[SpecialOfferID] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[rowguid] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
