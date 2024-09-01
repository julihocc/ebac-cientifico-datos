-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID y LineTotal. Asigna un rango a cada producto dentro de cada SalesOrderID basado en el LineTotal usando la función RANK().

SELECT 
    SalesOrderID, 
    ProductID, 
    LineTotal, 
    RANK() OVER (PARTITION BY SalesOrderID ORDER BY LineTotal DESC) AS Rank
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail];