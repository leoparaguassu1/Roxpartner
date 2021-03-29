USE [master]
GO
/****** Object:  Database [roxpartner]    Script Date: 29/03/2021 10:07:24 ******/
CREATE DATABASE [roxpartner]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'roxpartner', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\roxpartner.mdf' , SIZE = 57344KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'roxpartner_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\roxpartner_log.ldf' , SIZE = 92864KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [roxpartner] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [roxpartner].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [roxpartner] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [roxpartner] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [roxpartner] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [roxpartner] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [roxpartner] SET ARITHABORT OFF 
GO
ALTER DATABASE [roxpartner] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [roxpartner] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [roxpartner] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [roxpartner] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [roxpartner] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [roxpartner] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [roxpartner] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [roxpartner] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [roxpartner] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [roxpartner] SET  DISABLE_BROKER 
GO
ALTER DATABASE [roxpartner] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [roxpartner] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [roxpartner] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [roxpartner] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [roxpartner] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [roxpartner] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [roxpartner] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [roxpartner] SET RECOVERY FULL 
GO
ALTER DATABASE [roxpartner] SET  MULTI_USER 
GO
ALTER DATABASE [roxpartner] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [roxpartner] SET DB_CHAINING OFF 
GO
ALTER DATABASE [roxpartner] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [roxpartner] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [roxpartner] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'roxpartner', N'ON'
GO
USE [roxpartner]
GO
/****** Object:  User [powerbi]    Script Date: 29/03/2021 10:07:24 ******/
CREATE USER [powerbi] FOR LOGIN [powerbi] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [carga_dw]    Script Date: 29/03/2021 10:07:25 ******/
CREATE USER [carga_dw] FOR LOGIN [carga_dw] WITH DEFAULT_SCHEMA=[dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [carga_dw]
GO
ALTER ROLE [db_ddladmin] ADD MEMBER [carga_dw]
GO
ALTER ROLE [db_datareader] ADD MEMBER [carga_dw]
GO
ALTER ROLE [db_datawriter] ADD MEMBER [carga_dw]
GO
/****** Object:  Table [dbo].[Person]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Person](
	[index] [bigint] NULL,
	[ï»¿BusinessEntityID] [bigint] NULL,
	[PersonType] [varchar](max) NULL,
	[NameStyle] [bigint] NULL,
	[Title] [varchar](max) NULL,
	[FirstName] [varchar](max) NULL,
	[MiddleName] [varchar](max) NULL,
	[LastName] [varchar](max) NULL,
	[Suffix] [varchar](max) NULL,
	[EmailPromotion] [bigint] NULL,
	[AdditionalContactInfo] [varchar](max) NULL,
	[Demographics] [varchar](max) NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductionProduct]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ProductionProduct](
	[index] [bigint] NULL,
	[ï»¿ProductID] [bigint] NULL,
	[Name] [varchar](max) NULL,
	[ProductNumber] [varchar](max) NULL,
	[MakeFlag] [bigint] NULL,
	[FinishedGoodsFlag] [bigint] NULL,
	[Color] [varchar](max) NULL,
	[SafetyStockLevel] [bigint] NULL,
	[ReorderPoint] [bigint] NULL,
	[StandardCost] [varchar](max) NULL,
	[ListPrice] [varchar](max) NULL,
	[Size] [varchar](max) NULL,
	[SizeUnitMeasureCode] [varchar](max) NULL,
	[WeightUnitMeasureCode] [varchar](max) NULL,
	[Weight] [float] NULL,
	[DaysToManufacture] [bigint] NULL,
	[ProductLine] [varchar](max) NULL,
	[Class] [varchar](max) NULL,
	[Style] [varchar](max) NULL,
	[ProductSubcategoryID] [float] NULL,
	[ProductModelID] [float] NULL,
	[SellStartDate] [varchar](max) NULL,
	[SellEndDate] [varchar](max) NULL,
	[DiscontinuedDate] [float] NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesCustomer]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesCustomer](
	[index] [bigint] NULL,
	[ï»¿CustomerID] [bigint] NULL,
	[PersonID] [float] NULL,
	[StoreID] [float] NULL,
	[TerritoryID] [bigint] NULL,
	[AccountNumber] [varchar](max) NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrderDetail]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrderDetail](
	[index] [bigint] NULL,
	[ï»¿SalesOrderID] [bigint] NULL,
	[SalesOrderDetailID] [bigint] NULL,
	[CarrierTrackingNumber] [varchar](max) NULL,
	[OrderQty] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[SpecialOfferID] [bigint] NULL,
	[UnitPrice] [varchar](max) NULL,
	[UnitPriceDiscount] [varchar](max) NULL,
	[LineTotal] [float] NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesOrderHeader]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesOrderHeader](
	[index] [bigint] NULL,
	[ï»¿SalesOrderID] [bigint] NULL,
	[RevisionNumber] [bigint] NULL,
	[OrderDate] [varchar](max) NULL,
	[DueDate] [varchar](max) NULL,
	[ShipDate] [varchar](max) NULL,
	[Status] [bigint] NULL,
	[OnlineOrderFlag] [bigint] NULL,
	[SalesOrderNumber] [varchar](max) NULL,
	[PurchaseOrderNumber] [varchar](max) NULL,
	[AccountNumber] [varchar](max) NULL,
	[CustomerID] [bigint] NULL,
	[SalesPersonID] [float] NULL,
	[TerritoryID] [bigint] NULL,
	[BillToAddressID] [bigint] NULL,
	[ShipToAddressID] [bigint] NULL,
	[ShipMethodID] [bigint] NULL,
	[CreditCardID] [float] NULL,
	[CreditCardApprovalCode] [varchar](max) NULL,
	[CurrencyRateID] [float] NULL,
	[SubTotal] [varchar](max) NULL,
	[TaxAmt] [varchar](max) NULL,
	[Freight] [varchar](max) NULL,
	[TotalDue] [varchar](max) NULL,
	[Comment] [float] NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SalesSpecialOfferProduct]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesSpecialOfferProduct](
	[index] [bigint] NULL,
	[ï»¿SpecialOfferID] [bigint] NULL,
	[ProductID] [bigint] NULL,
	[rowguid] [varchar](max) NULL,
	[ModifiedDate] [varchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Index [ix_dbo_Person_index]    Script Date: 29/03/2021 10:07:25 ******/
CREATE NONCLUSTERED INDEX [ix_dbo_Person_index] ON [dbo].[Person]
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_dbo_ProductionProduct_index]    Script Date: 29/03/2021 10:07:25 ******/
CREATE NONCLUSTERED INDEX [ix_dbo_ProductionProduct_index] ON [dbo].[ProductionProduct]
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_dbo_SalesCustomer_index]    Script Date: 29/03/2021 10:07:25 ******/
CREATE NONCLUSTERED INDEX [ix_dbo_SalesCustomer_index] ON [dbo].[SalesCustomer]
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_dbo_SalesOrderDetail_index]    Script Date: 29/03/2021 10:07:25 ******/
CREATE NONCLUSTERED INDEX [ix_dbo_SalesOrderDetail_index] ON [dbo].[SalesOrderDetail]
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_dbo_SalesOrderHeader_index]    Script Date: 29/03/2021 10:07:25 ******/
CREATE NONCLUSTERED INDEX [ix_dbo_SalesOrderHeader_index] ON [dbo].[SalesOrderHeader]
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [ix_dbo_SalesSpecialOfferProduct_index]    Script Date: 29/03/2021 10:07:25 ******/
CREATE NONCLUSTERED INDEX [ix_dbo_SalesSpecialOfferProduct_index] ON [dbo].[SalesSpecialOfferProduct]
(
	[index] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[OrderProducts]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Procedure  [dbo].[OrderProducts] 
as
	Select   A.SalesOrderNumber ,A.PurchaseOrderNumber , C.ProductNumber , C.Name as ProductName , C.ListPrice as Price 
		from [SalesOrderHeader] A 
			Inner Join [dbo].[SalesOrderDetail]  B
			On (A.[ï»¿SalesOrderID] = B.[ï»¿SalesOrderID])
			Inner Join [dbo].[ProductionProduct] C 
			On (B.ProductID = C.[ï»¿ProductID])
GO
/****** Object:  StoredProcedure [dbo].[OrderProductsByProdutct]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE Procedure  [dbo].[OrderProductsByProdutct] ( @StrProduct as Varchar(50) = NULL )
as
	Select   A.SalesOrderNumber ,A.PurchaseOrderNumber , C.ProductNumber , C.Name as ProductName , C.ListPrice as Price 
		from [SalesOrderHeader] A 
			Inner Join [dbo].[SalesOrderDetail]  B
			On (A.[ï»¿SalesOrderID] = B.[ï»¿SalesOrderID])
			Inner Join [dbo].[ProductionProduct] C 
			On (B.ProductID = C.[ï»¿ProductID])
			where C.Name  LIKE '%' +  ISNULL(@StrProduct,'') + '%'

GO
/****** Object:  StoredProcedure [dbo].[OrderProductsByPurchase]    Script Date: 29/03/2021 10:07:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure  [dbo].[OrderProductsByPurchase] ( @StrPurchaseOrderNumber as Varchar(50) = NULL )
as
	Select   A.SalesOrderNumber ,A.PurchaseOrderNumber , C.ProductNumber , C.Name as ProductName , C.ListPrice as Price 
		from [SalesOrderHeader] A 
			Inner Join [dbo].[SalesOrderDetail]  B
			On (A.[ï»¿SalesOrderID] = B.[ï»¿SalesOrderID])
			Inner Join [dbo].[ProductionProduct] C 
			On (B.ProductID = C.[ï»¿ProductID])
			where A.PurchaseOrderNumber LIKE '%' +  ISNULL(@StrPurchaseOrderNumber,'') + '%'
GO
USE [master]
GO
ALTER DATABASE [roxpartner] SET  READ_WRITE 
GO
