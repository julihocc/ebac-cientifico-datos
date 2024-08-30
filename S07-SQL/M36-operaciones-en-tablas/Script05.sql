USE AdventureWorks2022;
GO

EXEC sp_rename 'dbo.Ordenes.CompraOnline', 'BanderaCompraOnline', 'COLUMN';

SELECT TOP 10 BanderaCompraOnline 
FROM dbo.Ordenes;