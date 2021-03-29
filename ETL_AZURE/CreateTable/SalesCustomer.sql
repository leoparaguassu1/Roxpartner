SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesCustomer](
	[CustomerID] [nvarchar](50) NOT NULL,
	[PersonID] [nvarchar](50) NOT NULL,
	[StoreID] [nvarchar](50) NULL,
	[TerritoryID] [nvarchar](50) NOT NULL,
	[AccountNumber] [nvarchar](50) NOT NULL,
	[rowguid] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
