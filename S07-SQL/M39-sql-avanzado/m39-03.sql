-- Utiliza las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory y HumanResources.Department para crear una consulta que muestre el mismo resultado que en el ejercicio 2, pero utilizando un CTE. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.

WITH EmployeeCTE AS (
    SELECT 
        e.BusinessEntityID,
        p.FirstName,
        p.LastName,
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
)
SELECT 
    BusinessEntityID,
    FirstName + ' ' + LastName AS Empleado,
    Departamento
FROM 
    EmployeeCTE
ORDER BY 
    BusinessEntityID ASC;