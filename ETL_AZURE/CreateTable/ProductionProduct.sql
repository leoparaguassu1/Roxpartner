SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductionProduct](
	[ProductID] [nvarchar](50) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[ProductNumber] [nvarchar](50) NOT NULL,
	[MakeFlag] [nvarchar](50) NOT NULL,
	[FinishedGoodsFlag] [nvarchar](50) NOT NULL,
	[Color] [nvarchar](50) NOT NULL,
	[SafetyStockLevel] [int] NOT NULL,
	[ReorderPoint] [int] NOT NULL,
	[StandardCost] [float] NOT NULL,
	[ListPrice] [float] NOT NULL,
	[Size] [nvarchar](50) NOT NULL,
	[SizeUnitMeasureCode] [nvarchar](50) NOT NULL,
	[WeightUnitMeasureCode] [nvarchar](50) NOT NULL,
	[Weight] [nvarchar](50) NOT NULL,
	[DaysToManufacture] [nvarchar](50) NOT NULL,
	[ProductLine] [nvarchar](50) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[Style] [nvarchar](50) NOT NULL,
	[ProductSubcategoryID] [nvarchar](50) NULL,
	[ProductModelID] [nvarchar](50) NULL,
	[SellStartDate] [datetime2](7) NOT NULL,
	[SellEndDate] [nvarchar](50) NOT NULL,
	[DiscontinuedDate] [nvarchar](50) NOT NULL,
	[rowguid] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
