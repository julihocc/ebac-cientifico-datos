-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que obtenga el ProductID, el número total de ventas (OrderQty) y el valor total de ventas (LineTotal) por cada producto usando la cláusula GROUP BY.

SELECT 
    ProductID, 
    SUM(OrderQty) AS TotalSalesQuantity, 
    SUM(LineTotal) AS TotalSalesValue
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail]
GROUP BY 
    ProductID;