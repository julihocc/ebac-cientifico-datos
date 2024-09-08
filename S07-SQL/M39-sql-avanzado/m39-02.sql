-- Utiliza las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory, HumanResources.Department y Person.Person para crear una consulta que muestre un listado de todos los empleados y el nombre de su departamento actual. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.

SELECT 
    e.BusinessEntityID,
    p.FirstName + ' ' + p.LastName AS Empleado,
    d.Name AS Departamento
FROM 
    [AdventureWorks2022].[HumanResources].[Employee] e
JOIN 
    [AdventureWorks2022].[Person].[Person] p ON e.BusinessEntityID = p.BusinessEntityID
JOIN 
    [AdventureWorks2022].[HumanResources].[EmployeeDepartmentHistory] edh ON e.BusinessEntityID = edh.BusinessEntityID
JOIN 
    [AdventureWorks2022].[HumanResources].[Department] d ON edh.DepartmentID = d.DepartmentID
WHERE 
    edh.EndDate IS NULL
ORDER BY 
    e.BusinessEntityID ASC;