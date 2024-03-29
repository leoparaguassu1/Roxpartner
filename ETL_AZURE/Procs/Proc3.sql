/****** Object:  StoredProcedure [dbo].[Proc3]    Script Date: 29/03/2021 16:47:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[Proc3]
AS
BEGIN
   Select A.FirstName , A.LastName ,  Count(SalesOrderID) as total from 
  Person A 
	INNER JOIN 
	SalesSalesOrderHeader C 
	ON (convert(varchar(10),A.[index]) = convert(varchar(10),C.SalesPersonID) )
	LEFT JOIN 
	SalesCustomer B 
	  ON (  C.AccountNumber =  B.AccountNumber )
	Group by A.FirstName , A.LastName 

	END  
