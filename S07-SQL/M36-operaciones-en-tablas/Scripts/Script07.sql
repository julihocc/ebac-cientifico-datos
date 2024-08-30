USE AdventureWorks2022;
GO

ALTER TABLE dbo.Ordenes
DROP CONSTRAINT PK__Ventas__9A7552946CD46A71;

ALTER TABLE dbo.Ordenes
ALTER COLUMN NumeroOrden VARCHAR(10) NOT NULL;

UPDATE dbo.Ordenes
SET NumeroOrden = CASE 
                      WHEN BanderaCompraOnline = 'S' THEN 'XX-' + CAST(NumeroOrden AS VARCHAR)
                      ELSE 'DF-' + CAST(NumeroOrden AS VARCHAR)
                  END;

ALTER TABLE dbo.Ordenes
ADD CONSTRAINT PK_Ordenes_NumeroOrden PRIMARY KEY (NumeroOrden);
