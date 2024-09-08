-- 6.Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra sin los 2 primeros caracteres y nombra los campos resultantes como NewSalesOrderNumber y NewPurchaseOrderNumber.

SELECT 
    SUBSTRING(CAST(SalesOrderID AS NVARCHAR), 3, LEN(CAST(SalesOrderID AS NVARCHAR))) AS NewSalesOrderNumber,
    SUBSTRING(PurchaseOrderNumber, 3, LEN(PurchaseOrderNumber)) AS NewPurchaseOrderNumber
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderHeader];