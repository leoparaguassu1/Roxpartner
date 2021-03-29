SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesSalesOrderDetail](
	[SalesOrderID] [int] NOT NULL,
	[SalesOrderDetailID] [nvarchar](50) NOT NULL,
	[CarrierTrackingNumber] [nvarchar](50) NOT NULL,
	[OrderQty] [nvarchar](50) NOT NULL,
	[ProductID] [int] NOT NULL,
	[SpecialOfferID] [nvarchar](50) NOT NULL,
	[UnitPrice] [float] NOT NULL,
	[UnitPriceDiscount] [float] NOT NULL,
	[LineTotal] [float] NOT NULL,
	[rowguid] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
