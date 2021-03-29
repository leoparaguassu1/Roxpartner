SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SalesSalesOrderHeader](
	[SalesOrderID] [int] NOT NULL,
	[RevisionNumber] [int] NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
	[DueDate] [datetime2](7) NOT NULL,
	[ShipDate] [datetime2](7) NOT NULL,
	[Status] [int] NOT NULL,
	[OnlineOrderFlag] [nvarchar](50) NOT NULL,
	[SalesOrderNumber] [nvarchar](50) NOT NULL,
	[PurchaseOrderNumber] [nvarchar](50) NOT NULL,
	[AccountNumber] [nvarchar](50) NOT NULL,
	[CustomerID] [int] NOT NULL,
	[SalesPersonID] [nvarchar](50) NOT NULL,
	[TerritoryID] [nvarchar](50) NOT NULL,
	[BillToAddressID] [int] NOT NULL,
	[ShipToAddressID] [int] NOT NULL,
	[ShipMethodID] [nvarchar](50) NOT NULL,
	[CreditCardID] [nvarchar](50) NULL,
	[CreditCardApprovalCode] [nvarchar](50) NOT NULL,
	[CurrencyRateID] [nvarchar](50) NULL,
	[SubTotal] [float] NOT NULL,
	[TaxAmt] [float] NOT NULL,
	[Freight] [float] NOT NULL,
	[TotalDue] [float] NOT NULL,
	[Comment] [nvarchar](50) NOT NULL,
	[rowguid] [nvarchar](50) NOT NULL,
	[ModifiedDate] [datetime2](7) NOT NULL
) ON [PRIMARY]
GO
