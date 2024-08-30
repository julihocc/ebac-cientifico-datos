-- Utiliza la tabla Sales.SalesPerson para crear una consulta que muestre el 
-- BusinessEntityID, la SalesQuota, y una columna que indique 'No Quota' si 
-- SalesQuota es nulo usando la función ISNULL.

SELECT 
    BusinessEntityID, 
    SalesQuota, 
    ISNULL(CAST(SalesQuota AS VARCHAR), 'No Quota') AS QuotaStatus
FROM 
    [AdventureWorks2022].[Sales].[SalesPerson];