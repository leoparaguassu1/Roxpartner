
create PROCEDURE Proc2
AS
BEGIN
   
  Select  TOP 3  SUM(Convert(int,OrderQty)) as OrderQty  , DaysToManufacture , Name from 
    SalesSalesOrderDetail  A 
	INNER JOIN  ProductionProduct  B
	ON ( A.ProductID = B.ProductID )
	INNER JOIN SalesSpecialOfferProduct C 
	On ( A.ProductID = B.ProductID )
	Group by DaysToManufacture , Name
	ORDER BY OrderQty 

END 