-- Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra solo para el año 2011.

SELECT 
    SalesOrderID,
    PurchaseOrderNumber
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderHeader]
WHERE 
    YEAR(OrderDate) = 2011;