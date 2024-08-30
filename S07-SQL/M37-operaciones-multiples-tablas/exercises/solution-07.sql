-- Utiliza la tabla HumanResources.Employee para crear una consulta que 
-- muestre el BusinessEntityID, el JobTitle, y una columna adicional que 
-- indique si el título del puesto contiene la palabra 'Manager' usando 
-- la expresión CASE. Si el título del puesto es nulo, usa COALESCE para 
-- mostrar 'No Title'.

SELECT 
    BusinessEntityID, 
    COALESCE(JobTitle, 'No Title') AS JobTitle, 
    CASE 
        WHEN JobTitle LIKE '%Manager%' THEN 'Manager' 
        ELSE 'Not Manager' 
    END AS ManagerStatus
FROM 
    [AdventureWorks2022].[HumanResources].[Employee];