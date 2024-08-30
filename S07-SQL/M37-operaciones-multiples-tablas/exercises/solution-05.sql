-- Utiliza las tablas Production.Product y Production.ProductCategory para 
-- crear una consulta que devuelva una combinación de todos los productos con 
-- todas las categorías usando un CROSS JOIN.

SELECT 
    p.Name AS ProductName, 
    pc.Name AS CategoryName
FROM
    [AdventureWorks2022].[Production].[Product] p
CROSS JOIN
    [AdventureWorks2022].[Production].[ProductCategory] pc;
