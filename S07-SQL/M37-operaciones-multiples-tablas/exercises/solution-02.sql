-- 2) Utiliza las tablas Sales.Customer y Person.Person para crear una consulta que 
-- obtenga los nombres de los clientes (FirstName y LastName). Asegúrate de incluir 
-- todos los clientes, incluso aquellos que no tienen un registro en la tabla 
-- Person.Person usando un LEFT JOIN.

SELECT 
    c.CustomerID,
    p.FirstName, 
    p.LastName
FROM 
    [AdventureWorks2022].[Sales].[Customer] c
LEFT JOIN 
    [AdventureWorks2022].[Person].[Person] p
ON 
    c.PersonID = p.BusinessEntityID;