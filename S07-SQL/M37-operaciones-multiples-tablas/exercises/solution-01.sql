-- 1) Utiliza las tablas HumanResources.Employee y Person.Person para crear 
-- una consulta que obtenga los nombres de los empleados (FirstName y LastName) 
-- y el título de su puesto (JobTitle) usando un INNER JOIN.

SELECT 
    p.FirstName, 
    p.LastName, 
    e.JobTitle
FROM 
    [AdventureWorks2022].[HumanResources].[Employee] e
INNER JOIN 
    [AdventureWorks2022].[Person].[Person] p
ON 
    e.BusinessEntityID = p.BusinessEntityID;