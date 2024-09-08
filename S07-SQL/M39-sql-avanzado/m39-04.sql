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