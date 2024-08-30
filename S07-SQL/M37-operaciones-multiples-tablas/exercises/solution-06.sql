-- Crea dos consultas: una que utilice UNION y otra que utilice UNION ALL para 
-- combinar los nombres de productos de las tablas Production.Product y 
-- Production.ProductModel.

-- Consulta usando UNION
SELECT 
    Name 
FROM 
    [AdventureWorks2022].[Production].[Product]
UNION
SELECT 
    Name 
FROM 
    [AdventureWorks2022].[Production].[ProductModel];

-- Consulta usando UNION ALL
SELECT 
    Name 
FROM 
    [AdventureWorks2022].[Production].[Product]
UNION ALL
SELECT 
    Name 
FROM 
    [AdventureWorks2022].[Production].[ProductModel];