USE AdventureWorks2022;
GO

CREATE TABLE dbo.Ventas (
    NumeroOrden INT PRIMARY KEY,
    FechaOrden DATETIME,
    FechaEntrega DATE,
    EstatusOrden VARCHAR(50),
    NombreCliente NVARCHAR(100),
    DomicilioEntrega NVARCHAR(255),
    CompraOnline CHAR(1), -- 'S' para Sí, 'N' para No
    MetodoPago NVARCHAR(50),
    MetodoEnvio NVARCHAR(50),
    Subtotal DECIMAL(10, 2),
    Impuestos DECIMAL(10, 2),
    CostoEnvio DECIMAL(10, 2),
    Total DECIMAL(10, 2),
    Moneda CHAR(3),
    Observaciones NVARCHAR(MAX)
);
