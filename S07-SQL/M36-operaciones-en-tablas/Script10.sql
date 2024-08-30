USE AdventureWorks2022;
GO

DELETE FROM dbo.Ordenes
WHERE EstatusOrden = 'Cancelada';

SELECT * FROM dbo.Ordenes
WHERE EstatusOrden = 'Cancelada';
