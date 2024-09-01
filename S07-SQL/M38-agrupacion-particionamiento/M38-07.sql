-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que agrupe los datos por ProductID y obtenga el valor total de ventas (LineTotal). Filtra para mostrar solo aquellos productos con un valor total de ventas superior a $5000 usando la cláusula HAVING. Ordena los resultados por el valor total de ventas en orden descendente.

SELECT 
    ProductID, 
    SUM(LineTotal) AS TotalSalesValue
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail]
GROUP BY 
    ProductID
HAVING 
    SUM(LineTotal) > 5000
ORDER BY 
    TotalSalesValue DESC;