/****** Object:  StoredProcedure [dbo].[Proc1]    Script Date: 29/03/2021 16:18:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[Proc4]
AS
BEGIN
   Select B.ProductID ,  OrderDate,  Sum(ConverT(int,OrderQty)) as total from 
     SalesSalesOrderHeader A INNER JOIN SalesSalesOrderDetail B
	ON ( A.SalesOrderID = B.SalesOrderID )
	LEFT JOIN  ProductionProduct C
	 ON (  B.ProductID =  C.ProductID )
	Group by B.ProductID ,  OrderDate

	END  
