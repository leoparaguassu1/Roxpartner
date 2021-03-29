/****** Object:  StoredProcedure [dbo].[Proc1]    Script Date: 29/03/2021 16:43:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Proc5]
AS
BEGIN
   Select SalesOrderID, OrderDate ,  TotalDue  from 
   SalesSalesOrderHeader
where 
	 year(OrderDate) = '2011' AND  Month(OrderDate) = '9'
	 AND totalDue >= 1000

END
