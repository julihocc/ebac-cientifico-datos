-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que muestre el SalesOrderID, ProductID y LineTotal. Asigna un rango denso a cada producto dentro de cada SalesOrderID basado en el LineTotal usando la función DENSE_RANK().

SELECT 
    SalesOrderID, 
    ProductID, 
    LineTotal, 
    DENSE_RANK() OVER (PARTITION BY SalesOrderID ORDER BY LineTotal DESC) AS DenseRank
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail];