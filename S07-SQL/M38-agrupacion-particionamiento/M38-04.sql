-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, SalesOrderDetailID, ProductID y LineTotal. Usa la función ROW_NUMBER() para numerar cada línea de pedido dentro de cada SalesOrderID.

SELECT 
    SalesOrderID, 
    SalesOrderDetailID, 
    ProductID, 
    LineTotal, 
    ROW_NUMBER() OVER (PARTITION BY SalesOrderID ORDER BY SalesOrderDetailID) AS RowNumber
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail];