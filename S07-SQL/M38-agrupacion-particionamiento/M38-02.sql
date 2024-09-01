-- Utiliza la tabla Sales.SalesOrderDetail para crear una consulta que agrupe los datos por ProductID y obtenga el número total de ventas (OrderQty) por producto. Filtra los grupos para mostrar solo aquellos productos que han tenido más de 50 ventas usando la cláusula HAVING.

SELECT 
    ProductID, 
    SUM(OrderQty) AS TotalQuantity
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderDetail]
GROUP BY 
    ProductID
HAVING 
    SUM(OrderQty) > 50;