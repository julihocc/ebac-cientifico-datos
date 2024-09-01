-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID, LineTotal y el valor total de ventas (LineTotal) para cada SalesOrderID usando la cláusula OVER con PARTITION BY.

SELECT 
    SalesOrderID, 
    ProductID, 
    LineTotal, 
    SUM(LineTotal) OVER (PARTITION BY SalesOrderID) AS TotalSalesValuePerOrder
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail];
