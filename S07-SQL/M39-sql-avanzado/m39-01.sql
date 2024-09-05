-- Utiliza la tabla Production.Product para crear una consulta que muestre los nombres de los productos y los ID’s de productos que hayan sido ordenados. Utiliza una subconsulta para filtrar los productos ordenados en la tabla Sales.SalesOrderDetail. Ordena el resultado por nombre de manera ascendente.

SELECT 
    p.Name AS ProductName,
    p.ProductID
FROM 
    [AdventureWorks2022].[Production].[Product] p
WHERE 
    p.ProductID IN (SELECT sod.ProductID FROM [AdventureWorks2022].[Sales].[SalesOrderDetail] sod)
ORDER BY 
    p.Name ASC;

