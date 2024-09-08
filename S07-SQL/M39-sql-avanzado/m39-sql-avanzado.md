# SQL Avanzado
Presenta: Juliho Castillo Colmenares

Usa la base de datos AdventureWorks2022 para completar los siguientes ejercicios. Cada ejercicio se basa en las lecciones que has visto en el curso. Asegúrate de seguir las instrucciones cuidadosamente y aplicar el tipo de unión adecuado para cada caso.

1. Utiliza la tabla Production.Product para crear una consulta que muestre los nombres de los productos y los ID’s de productos que hayan sido ordenados. Utiliza una subconsulta para filtrar los productos ordenados en la tabla Sales.SalesOrderDetail. Ordena el resultado por nombre de manera ascendente.

![alt text](request-01.png)

```sql
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
```

![alt text](response-01.png)

2. Utiliza las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory, HumanResources.Department y Person.Person para crear una consulta que muestre un listado de todos los empleados y el nombre de su departamento actual. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.

![alt text](request-01.png)

```sql
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
```

![alt text](response-02.png)


3. Utiliza las tablas HumanResources.Employee, HumanResources.EmployeeDepartmentHistory y HumanResources.Department para crear una consulta que muestre el mismo resultado que en el ejercicio 2, pero utilizando un CTE. Los campos a mostrar serán: BusinessEntityID, FirstName + ' ' + LastName como Nombre del Empleado, y Name como Nombre del Departamento.

```sql
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
```

![alt text](response-03.png)

4. Crea una tabla temporal local y otra global para almacenar los productos ordenados. Utiliza la tabla Production.Product para insertar los datos en ambas tablas temporales. Los campos a incluir serán: ProductID y Name. Inserta los datos en la tabla temporal local.

![alt text](request-04.png)

```sql
-- Crea una tabla temporal local y otra global para almacenar los productos ordenados. Utiliza la tabla Production.Product para insertar los datos en ambas tablas temporales. Los campos a incluir serán: ProductID y Name. Inserta los datos en la tabla temporal local.

-- Crear tabla temporal local
CREATE TABLE #TempLocalProducts (
    ProductID INT,
    Name NVARCHAR(50)
);

-- Crear tabla temporal global
CREATE TABLE ##TempGlobalProducts (
    ProductID INT,
    Name NVARCHAR(50)
);

-- Insertar datos en la tabla temporal local
INSERT INTO #TempLocalProducts (ProductID, Name)
SELECT [ProductID], Name
FROM [AdventureWorks2022].[Production].[Product];

-- Insertar datos en la tabla temporal global
INSERT INTO ##TempGlobalProducts (ProductID, Name)
SELECT ProductID, Name
FROM [AdventureWorks2022].[Production].[Product];
```

![alt text](response-04.png)

5. Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra solo para el año 2011.

![alt text](request-05.png)

```sql
-- Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra solo para el año 2011.

SELECT 
    SalesOrderID,
    PurchaseOrderNumber
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderHeader]
WHERE 
    YEAR(OrderDate) = 2011;
```

![alt text](response-05.png)

6. Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra sin los 2 primeros caracteres y nombra los campos resultantes como NewSalesOrderNumber y NewPurchaseOrderNumber.

![alt text](request-06.png)

```sql
-- 6.Utiliza la tabla Sales.SalesOrderHeader para crear una consulta que muestre los números de orden y números de compra sin los 2 primeros caracteres y nombra los campos resultantes como NewSalesOrderNumber y NewPurchaseOrderNumber.

SELECT 
    SUBSTRING(CAST(SalesOrderID AS NVARCHAR), 3, LEN(CAST(SalesOrderID AS NVARCHAR))) AS NewSalesOrderNumber,
    SUBSTRING(PurchaseOrderNumber, 3, LEN(PurchaseOrderNumber)) AS NewPurchaseOrderNumber
FROM 
    [AdventureWorks2022].[Sales].[SalesOrderHeader];
```

![alt text](response-06.png)