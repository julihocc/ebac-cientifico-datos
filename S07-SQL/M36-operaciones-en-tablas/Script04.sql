USE AdventureWorks2022;
GO

ALTER TABLE dbo.Ordenes
ADD FechaEnvio DATE;


SELECT TOP 10 FechaEnvio
FROM dbo.Ordenes;