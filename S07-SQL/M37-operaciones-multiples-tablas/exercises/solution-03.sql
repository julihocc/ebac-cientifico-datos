-- Utiliza las tablas Sales.SalesOrderHeader y Sales.Customer para crear una 
-- consulta que muestre el ID de la orden (SalesOrderID) y el ID del cliente 
-- (CustomerID). Asegúrate de incluir todas las órdenes, incluso si no hay un 
-- cliente asociado usando un RIGHT JOIN.

SELECT 
    soh.SalesOrderID, 
    c.CustomerID
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderHeader] soh
RIGHT JOIN 
    [AdventureWorks2022].[Sales].[Customer] c
ON 
    soh.CustomerID = c.CustomerID;